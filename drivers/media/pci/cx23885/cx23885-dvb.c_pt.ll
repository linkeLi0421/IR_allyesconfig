; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-dvb.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5h1409_config = type { i8, i8, i8, i16, i8, i8, i16, i8 }
%struct.mt2131_config = type { i8, i8 }
%struct.lgdt3305_config = type { i8, i16, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32 }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.s5h1411_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.lgdt330x_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.tda10048_config = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.dib7000p_config = type { i8, i8, i8, ptr, i8, ptr, ptr, i16, i16, i16, i16, i8, i8, ptr, i8, i8, i16, i8, i8 }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.dib0070_config = type { i8, ptr, ptr, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, ptr, i8 }
%struct.cx24116_config = type { i8, ptr, ptr, i8, i16 }
%struct.cx24117_config = type { i8 }
%struct.ds3000_config = type { i8, i8, ptr, ptr }
%struct.stv0900_config = type { i8, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.stv6110_config = type { i8, i32, i8, i8 }
%struct.lgs8gxx_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.mb86a20s_config = type { i32, i8, i8 }
%struct.atbm8830_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.max2165_config = type { i8, i8 }
%struct.stv0367_config = type { i8, i32, i32, i32, i32, i32 }
%struct.drxk_config = type { i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, ptr, i32 }
%struct.mt2063_config = type { i8, i32 }
%struct.stv090x_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stb6100_config = type { i8, i32 }
%struct.tda10071_platform_data = type { i32, i16, i8, i8, i8, i8, ptr }
%struct.m88ds3103_config = type { i8, i32, i16, i8, i32, i8, i8, i8, i8, i8 }
%struct.lgdt3306a_config = type { i8, i16, i16, i8, i32, i32, i32, i32, ptr, ptr }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.dibx000_agc_config = type { i8, i16, i16, i16, i8, i16, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.158 }
%struct.anon.158 = type { i16, i16, i16, i16 }
%struct.dibx000_bandwidth_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.stv0900_reg = type { i16, i8 }
%struct.netup_card_info = type { [2 x %struct.netup_port_info], i8 }
%struct.netup_port_info = type { [6 x i8] }
%struct.cx23885_board = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, [8 x %struct.cx23885_input], i32, i32 }
%struct.cx23885_input = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cx23885_tsport = type { ptr, i32, i32, %struct.vb2_dvb_frontends, %struct.cx23885_dmaqueue, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.dvb_frontend, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.129], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.129 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.130 }>
%union.anon.130 = type { i64 }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.vb2_dvb_frontend = type { %struct.list_head, i32, %struct.vb2_dvb }
%struct.vb2_dvb = type { ptr, ptr, %struct.vb2_queue, %struct.mutex, i32, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
%struct.altera_ci_config = type { ptr, ptr, ptr, ptr }
%struct.sp2_config = type { ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.dib7000p_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.si2168_config = type { ptr, ptr, i8, i8 }
%struct.si2165_platform_data = type { ptr, i8, i32, i8 }
%struct.si2157_config = type { ptr, ptr, i8, i8 }
%struct.ts2020_config = type { i8, i32, i16, ptr, i8, ptr }
%struct.m88ds3103_platform_data = type { i32, i16, i32, i32, i32, i8, i8, i8, ptr, ptr, i8 }
%struct.m88rs6000t_config = type { ptr }
%struct.a8293_platform_data = type { ptr }
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.xc4000_config = type { i8, i8, i8, i8, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_alt_tuner = internal constant [18 x i8] c"cx23885.alt_tuner\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@alt_tuner = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_alt_tuner = internal constant %struct.kernel_param { ptr @__param_str_alt_tuner, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @alt_tuner } }, section "__param", align 4
@__UNIQUE_ID_alt_tunertype385 = internal constant [31 x i8] c"cx23885.parmtype=alt_tuner:int\00", section ".modinfo", align 1
@__UNIQUE_ID_alt_tuner386 = internal constant [60 x i8] c"cx23885.parm=alt_tuner:Enable alternate tuner configuration\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [19 x i8] c"cx23885.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype387 = internal constant [43 x i8] c"cx23885.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr388 = internal constant [44 x i8] c"cx23885.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@cx23885_dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cx23885: %s() allocating %d frontend(s)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx23885_dvb_register\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/cx23885/cx23885-dvb.c\00", [56 x i8] zeroinitializer }, align 32
@cx23885_dvb_register._entry_ptr = internal global ptr @cx23885_dvb_register._entry, section ".printk_index", align 4
@cx23885_dvb_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cx23885: %s() failed to alloc\0A\00", [63 x i8] zeroinitializer }, align 32
@cx23885_dvb_register._entry_ptr.5 = internal global ptr @cx23885_dvb_register._entry.3, section ".printk_index", align 4
@cx23885_dvb_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 2668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017cx23885: %s dvb: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@cx23885_dvb_register._entry_ptr.8 = internal global ptr @cx23885_dvb_register._entry.6, section ".printk_index", align 4
@cx23885_dvb_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 2673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017cx23885: %s dvb:  ->probed by Card=%d Name=%s, PCI %02x:%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@cx23885_dvb_register._entry_ptr.11 = internal global ptr @cx23885_dvb_register._entry.9, section ".printk_index", align 4
@cx23885_dvb_register._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 2677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016cx23885: %s: cx23885 based dvb card\0A\00", [57 x i8] zeroinitializer }, align 32
@cx23885_dvb_register._entry_ptr.14 = internal global ptr @cx23885_dvb_register._entry.12, section ".printk_index", align 4
@dvb_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr @buffer_finish, ptr null, ptr @cx23885_start_streaming, ptr @cx23885_stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@cx23885_dvb_register._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 2698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013cx23885: %s() dvb_register failed err = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23885_dvb_register._entry_ptr.17 = internal global ptr @cx23885_dvb_register._entry.15, section ".printk_index", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1409_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1409_attach\00", [42 x i8] zeroinitializer }, align 32
@hauppauge_generic_config = internal global { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 1, i8 1, i16 -21536, i8 0, i8 1, i16 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1409_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_register\00", [19 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr = internal global ptr @dvb_register._entry, section ".printk_index", align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2131_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2131_attach\00", [43 x i8] zeroinitializer }, align 32
@hauppauge_generic_tunerconfig = internal global { %struct.mt2131_config, [30 x i8] } { %struct.mt2131_config { i8 97, i8 0 }, [30 x i8] zeroinitializer }, align 32
@dvb_register._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.2, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2131_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.26 = internal global ptr @dvb_register._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt3305_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt3305_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_lgdt3305_config = internal global { %struct.lgdt3305_config, [60 x i8] } { %struct.lgdt3305_config { i8 14, i16 4000, i16 3250, i16 0, i16 0, i16 0, i8 -64, i32 1, i32 1, i32 0, i32 1, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dvb_register._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.21, ptr @.str.2, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt3305_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.31 = internal global ptr @dvb_register._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_hvr127x_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @hauppauge_hvr127x_std_map, i32 0, i32 0, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.36 = internal global ptr @dvb_register._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1411_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1411_attach\00", [42 x i8] zeroinitializer }, align 32
@hcw_s5h1411_config = internal global { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 1, i8 0, i16 1, i16 4000, i16 -21536, i8 1, i8 1 }, [22 x i8] zeroinitializer }, align 32
@dvb_register._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.21, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1411_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.41 = internal global ptr @dvb_register._entry.39, section ".printk_index", align 4
@hauppauge_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @hauppauge_tda18271_std_map, i32 0, i32 1, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.43 = internal global ptr @dvb_register._entry.42, section ".printk_index", align 4
@hauppauge_ezqam_config = internal global { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 1, i8 0, i16 4000, i8 1, i8 1, i16 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.45 = internal global ptr @dvb_register._entry.44, section ".printk_index", align 4
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda829x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda829x_attach\00", [42 x i8] zeroinitializer }, align 32
@tda829x_no_probe = internal global { %struct.tda829x_config, [20 x i8] } { %struct.tda829x_config { i32 0, i8 -128, ptr null }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.21, ptr @.str.2, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda829x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.50 = internal global ptr @dvb_register._entry.48, section ".printk_index", align 4
@dvb_register._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.52 = internal global ptr @dvb_register._entry.51, section ".printk_index", align 4
@dvb_register._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.54 = internal global ptr @dvb_register._entry.53, section ".printk_index", align 4
@dvb_register._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.2, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.56 = internal global ptr @dvb_register._entry.55, section ".printk_index", align 4
@hauppauge_hvr1800lp_config = internal global { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 1, i8 0, i16 -21536, i8 0, i8 1, i16 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.58 = internal global ptr @dvb_register._entry.57, section ".printk_index", align 4
@dvb_register._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.2, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.60 = internal global ptr @dvb_register._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt330x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt330x_attach\00", [41 x i8] zeroinitializer }, align 32
@fusionhdtv_5_express = internal global { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 2, i32 64, ptr null, ptr null, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.21, ptr @.str.2, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt330x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.65 = internal global ptr @dvb_register._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:simple_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@dvb_register._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.21, ptr @.str.2, i32 1320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol simple_tuner_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.70 = internal global ptr @dvb_register._entry.68, section ".printk_index", align 4
@hauppauge_hvr1500q_config = internal global { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 1, i8 1, i16 -21536, i8 0, i8 1, i16 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.72 = internal global ptr @dvb_register._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc5000_attach\00", [43 x i8] zeroinitializer }, align 32
@hauppauge_hvr1500q_tunerconfig = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 97, i32 5380, i8 0, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.21, ptr @.str.2, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc5000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.77 = internal global ptr @dvb_register._entry.75, section ".printk_index", align 4
@hauppauge_hvr1500_config = internal global { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 1, i8 0, i16 0, i8 0, i8 1, i16 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.79 = internal global ptr @dvb_register._entry.78, section ".printk_index", align 4
@dvb_register.ctl = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.80, i32 64, i32 0, i32 0, i8 0, i32 5380, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc2028_attach\00", [43 x i8] zeroinitializer }, align 32
@dvb_register._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.21, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc2028_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.85 = internal global ptr @dvb_register._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10048_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10048_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_hvr1200_config = internal global { %struct.tda10048_config, [46 x i8] } { %struct.tda10048_config { i8 8, i8 1, i8 -56, i8 1, i16 3300, i16 3800, i16 4300, i16 16000, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@dvb_register._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.21, ptr @.str.2, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10048_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.90 = internal global ptr @dvb_register._entry.88, section ".printk_index", align 4
@dvb_register._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.21, ptr @.str.2, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.92 = internal global ptr @dvb_register._entry.91, section ".printk_index", align 4
@hauppauge_hvr1200_tuner_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @hauppauge_hvr1200_tda18271_std_map, i32 0, i32 1, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.94 = internal global ptr @dvb_register._entry.93, section ".printk_index", align 4
@hauppauge_hvr1210_config = internal global { %struct.tda10048_config, [46 x i8] } { %struct.tda10048_config { i8 8, i8 1, i8 -56, i8 1, i16 3300, i16 3500, i16 4000, i16 16000, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@dvb_register._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.21, ptr @.str.2, i32 1375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.96 = internal global ptr @dvb_register._entry.95, section ".printk_index", align 4
@hauppauge_hvr1210_tuner_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr null, i32 0, i32 2, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.98 = internal global ptr @dvb_register._entry.97, section ".printk_index", align 4
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dib7000p_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:dib7000p_attach\00", [41 x i8] zeroinitializer }, align 32
@dvb_register._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.21, ptr @.str.2, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol dib7000p_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.103 = internal global ptr @dvb_register._entry.101, section ".printk_index", align 4
@hauppauge_hvr1400_dib7000_config = internal global { %struct.dib7000p_config, [52 x i8] } { %struct.dib7000p_config { i8 1, i8 1, i8 0, ptr null, i8 1, ptr @xc3028_agc_config, ptr @xc3028_bw_config, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 0, ptr null, i8 7, i8 0, i16 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@dvb_register.ctl.105 = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.106, i32 64, i32 0, i32 0, i8 0, i32 5200, i8 64 }, [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc3028L-v36.fw\00", [17 x i8] zeroinitializer }, align 32
@dvb_register._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.21, ptr @.str.2, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.108 = internal global ptr @dvb_register._entry.107, section ".printk_index", align 4
@dvico_s5h1409_config = internal global { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 1, i8 1, i16 -21536, i8 0, i8 1, i16 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.110 = internal global ptr @dvb_register._entry.109, section ".printk_index", align 4
@dvico_s5h1411_config = internal global { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 1, i8 1, i16 1, i16 -21536, i16 -21536, i8 0, i8 1 }, [22 x i8] zeroinitializer }, align 32
@dvb_register._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.21, ptr @.str.2, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.112 = internal global ptr @dvb_register._entry.111, section ".printk_index", align 4
@dvico_xc5000_tunerconfig = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 100, i32 5380, i8 0, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.21, ptr @.str.2, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.114 = internal global ptr @dvb_register._entry.113, section ".printk_index", align 4
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@dvico_fusionhdtv_xc3028 = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 0, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.21, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.119 = internal global ptr @dvb_register._entry.117, section ".printk_index", align 4
@dvb_register.ctl.121 = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.80, i32 64, i32 0, i32 0, i8 0, i32 4560, i8 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.21, ptr @.str.2, i32 1445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.123 = internal global ptr @dvb_register._entry.122, section ".printk_index", align 4
@dvb_register._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.21, ptr @.str.2, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.125 = internal global ptr @dvb_register._entry.124, section ".printk_index", align 4
@dib7070p_dib7000p_config = internal global { %struct.dib7000p_config, [52 x i8] } { %struct.dib7000p_config { i8 1, i8 1, i8 1, ptr null, i8 1, ptr @dib7070_agc_config, ptr @dib7070_bw_config_12_mhz, i16 -785, i16 272, i16 -1, i16 0, i8 0, i8 1, ptr null, i8 7, i8 0, i16 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@dvb_register._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.21, ptr @.str.2, i32 1460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014cx23885: Unable to enumerate dib7000p\0A\00", [55 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.128 = internal global ptr @dvb_register._entry.126, section ".printk_index", align 4
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dib0070_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dib0070_attach\00", [42 x i8] zeroinitializer }, align 32
@dib7070p_dib0070_config = internal global { %struct.dib0070_config, [52 x i8] } { %struct.dib0070_config { i8 96, ptr @dib7070_tuner_reset, ptr @dib7070_tuner_sleep, i32 0, i32 550, i8 0, i32 12000, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@dvb_register._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.21, ptr @.str.2, i32 1471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dib0070_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.133 = internal global ptr @dvb_register._entry.131, section ".printk_index", align 4
@dvb_register._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.21, ptr @.str.2, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.135 = internal global ptr @dvb_register._entry.134, section ".printk_index", align 4
@dvb_register.ctl.137 = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.80, i32 64, i32 0, i32 0, i8 0, i32 4560, i8 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.21, ptr @.str.2, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.139 = internal global ptr @dvb_register._entry.138, section ".printk_index", align 4
@dvb_register._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.21, ptr @.str.2, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.141 = internal global ptr @dvb_register._entry.140, section ".printk_index", align 4
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc4000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc4000_attach\00", [43 x i8] zeroinitializer }, align 32
@dvb_register._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.21, ptr @.str.2, i32 1519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc4000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.147 = internal global ptr @dvb_register._entry.145, section ".printk_index", align 4
@dvb_register._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.21, ptr @.str.2, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cx23885: %s/2: xc4000 attach failed\0A\00", [57 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.150 = internal global ptr @dvb_register._entry.148, section ".printk_index", align 4
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24116_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24116_attach\00", [42 x i8] zeroinitializer }, align 32
@tbs_cx24116_config = internal global { %struct.cx24116_config, [16 x i8] } { %struct.cx24116_config { i8 85, ptr null, ptr null, i8 0, i16 0 }, [16 x i8] zeroinitializer }, align 32
@dvb_register._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.21, ptr @.str.2, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24116_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.155 = internal global ptr @dvb_register._entry.153, section ".printk_index", align 4
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24117_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24117_attach\00", [42 x i8] zeroinitializer }, align 32
@tbs_cx24117_config = internal global { %struct.cx24117_config, [31 x i8] } { %struct.cx24117_config { i8 85 }, [31 x i8] zeroinitializer }, align 32
@dvb_register._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.21, ptr @.str.2, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24117_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.160 = internal global ptr @dvb_register._entry.158, section ".printk_index", align 4
@dvb_register._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.21, ptr @.str.2, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.162 = internal global ptr @dvb_register._entry.161, section ".printk_index", align 4
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ds3000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:ds3000_attach\00", [43 x i8] zeroinitializer }, align 32
@tevii_ds3000_config = internal global { %struct.ds3000_config, [20 x i8] } { %struct.ds3000_config { i8 104, i8 0, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.21, ptr @.str.2, i32 1561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol ds3000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.167 = internal global ptr @dvb_register._entry.165, section ".printk_index", align 4
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ts2020_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:ts2020_attach\00", [43 x i8] zeroinitializer }, align 32
@dvb_register._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.21, ptr @.str.2, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol ts2020_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.172 = internal global ptr @dvb_register._entry.170, section ".printk_index", align 4
@dvbworld_cx24116_config = internal global { %struct.cx24116_config, [16 x i8] } { %struct.cx24116_config { i8 5, ptr null, ptr null, i8 0, i16 0 }, [16 x i8] zeroinitializer }, align 32
@dvb_register._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.21, ptr @.str.2, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.174 = internal global ptr @dvb_register._entry.173, section ".printk_index", align 4
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0900_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0900_attach\00", [42 x i8] zeroinitializer }, align 32
@netup_stv0900_config = internal global { %struct.stv0900_config, [32 x i8] } { %struct.stv0900_config { i8 104, i8 1, i32 8000000, i8 3, i8 2, i8 0, i8 0, ptr @stv0900_ts_regs, i8 0, i8 3, i8 1, i8 1, i8 0, i8 0, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_register._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.21, ptr @.str.2, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0900_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.179 = internal global ptr @dvb_register._entry.177, section ".printk_index", align 4
@.str.180 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv6110_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv6110_attach\00", [42 x i8] zeroinitializer }, align 32
@netup_stv6110_tunerconfig_a = internal global { %struct.stv6110_config, [20 x i8] } { %struct.stv6110_config { i8 96, i32 16000000, i8 8, i8 1 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.21, ptr @.str.2, i32 1588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv6110_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.184 = internal global ptr @dvb_register._entry.182, section ".printk_index", align 4
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbh24_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbh24_attach\00", [43 x i8] zeroinitializer }, align 32
@dvb_register._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.21, ptr @.str.2, i32 1593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbh24_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.189 = internal global ptr @dvb_register._entry.187, section ".printk_index", align 4
@dvb_register._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.21, ptr @.str.2, i32 1594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013cx23885: No LNBH24 found!\0A\00", [35 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.192 = internal global ptr @dvb_register._entry.190, section ".printk_index", align 4
@dvb_register._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.21, ptr @.str.2, i32 1603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.194 = internal global ptr @dvb_register._entry.193, section ".printk_index", align 4
@netup_stv6110_tunerconfig_b = internal global { %struct.stv6110_config, [20 x i8] } { %struct.stv6110_config { i8 99, i32 16000000, i8 8, i8 1 }, [20 x i8] zeroinitializer }, align 32
@dvb_register._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.21, ptr @.str.2, i32 1608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.196 = internal global ptr @dvb_register._entry.195, section ".printk_index", align 4
@dvb_register._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.21, ptr @.str.2, i32 1613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.198 = internal global ptr @dvb_register._entry.197, section ".printk_index", align 4
@dvb_register._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.21, ptr @.str.2, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.200 = internal global ptr @dvb_register._entry.199, section ".printk_index", align 4
@.str.201 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lgs8gxx_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:lgs8gxx_attach\00", [42 x i8] zeroinitializer }, align 32
@mygica_x8506_lgs8gl5_config = internal global { %struct.lgs8gxx_config, [40 x i8] } { %struct.lgs8gxx_config { i8 1, i8 25, i8 0, i8 1, i8 1, i32 30400, i32 5380, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.21, ptr @.str.2, i32 1626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol lgs8gxx_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.205 = internal global ptr @dvb_register._entry.203, section ".printk_index", align 4
@mygica_x8506_xc5000_config = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 97, i32 5380, i8 0, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.21, ptr @.str.2, i32 1630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.207 = internal global ptr @dvb_register._entry.206, section ".printk_index", align 4
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mb86a20s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mb86a20s_attach\00", [41 x i8] zeroinitializer }, align 32
@mygica_x8507_mb86a20s_config = internal global { %struct.mb86a20s_config, [24 x i8] } { %struct.mb86a20s_config { i32 0, i8 16, i8 0 }, [24 x i8] zeroinitializer }, align 32
@dvb_register._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.21, ptr @.str.2, i32 1638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mb86a20s_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.212 = internal global ptr @dvb_register._entry.210, section ".printk_index", align 4
@mygica_x8507_xc5000_config = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 97, i32 4000, i8 0, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.21, ptr @.str.2, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.214 = internal global ptr @dvb_register._entry.213, section ".printk_index", align 4
@magicpro_prohdtve2_lgs8g75_config = internal global { %struct.lgs8gxx_config, [40 x i8] } { %struct.lgs8gxx_config { i8 6, i8 25, i8 0, i8 1, i8 1, i32 30400, i32 6500, i8 0, i8 1, i8 1, i8 1, i8 2, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.21, ptr @.str.2, i32 1652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.216 = internal global ptr @dvb_register._entry.215, section ".printk_index", align 4
@magicpro_prohdtve2_xc5000_config = internal global { %struct.xc5000_config, [44 x i8] } { %struct.xc5000_config { i8 97, i32 6500, i8 0, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.21, ptr @.str.2, i32 1657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.218 = internal global ptr @dvb_register._entry.217, section ".printk_index", align 4
@dvb_register._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.21, ptr @.str.2, i32 1664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.220 = internal global ptr @dvb_register._entry.219, section ".printk_index", align 4
@dvb_register._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 1669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.222 = internal global ptr @dvb_register._entry.221, section ".printk_index", align 4
@dvb_register._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.21, ptr @.str.2, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.224 = internal global ptr @dvb_register._entry.223, section ".printk_index", align 4
@dvb_register._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 1685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.226 = internal global ptr @dvb_register._entry.225, section ".printk_index", align 4
@.str.227 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atbm8830_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:atbm8830_attach\00", [41 x i8] zeroinitializer }, align 32
@mygica_x8558pro_atbm8830_cfg1 = internal global { %struct.atbm8830_config, [44 x i8] } { %struct.atbm8830_config { i8 0, i8 68, i8 0, i8 0, i8 1, i32 30400, i32 0, i8 1, i8 46, i8 -1, i8 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.21, ptr @.str.2, i32 1694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol atbm8830_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.231 = internal global ptr @dvb_register._entry.229, section ".printk_index", align 4
@.str.232 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max2165_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:max2165_attach\00", [42 x i8] zeroinitializer }, align 32
@mygic_x8558pro_max2165_cfg1 = internal global { %struct.max2165_config, [30 x i8] } { %struct.max2165_config { i8 96, i8 20 }, [30 x i8] zeroinitializer }, align 32
@dvb_register._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.21, ptr @.str.2, i32 1699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol max2165_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.236 = internal global ptr @dvb_register._entry.234, section ".printk_index", align 4
@mygica_x8558pro_atbm8830_cfg2 = internal global { %struct.atbm8830_config, [44 x i8] } { %struct.atbm8830_config { i8 0, i8 68, i8 1, i8 0, i8 1, i32 30400, i32 0, i8 1, i8 46, i8 -1, i8 0 }, [44 x i8] zeroinitializer }, align 32
@dvb_register._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.21, ptr @.str.2, i32 1706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.238 = internal global ptr @dvb_register._entry.237, section ".printk_index", align 4
@mygic_x8558pro_max2165_cfg2 = internal global { %struct.max2165_config, [30 x i8] } { %struct.max2165_config { i8 96, i8 20 }, [30 x i8] zeroinitializer }, align 32
@dvb_register._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.21, ptr @.str.2, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.240 = internal global ptr @dvb_register._entry.239, section ".printk_index", align 4
@.str.241 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv0367ter_attach\00", [46 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"symbol:stv0367ter_attach\00", [39 x i8] zeroinitializer }, align 32
@netup_stv0367_config = internal global { [2 x %struct.stv0367_config], [48 x i8] } { [2 x %struct.stv0367_config] [%struct.stv0367_config { i8 28, i32 27000000, i32 4500, i32 0, i32 1, i32 0 }, %struct.stv0367_config { i8 29, i32 27000000, i32 4500, i32 0, i32 1, i32 0 }], [48 x i8] zeroinitializer }, align 32
@dvb_register._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.21, ptr @.str.2, i32 1725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013DVB: Unable to find symbol stv0367ter_attach()\0A\00", [46 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.245 = internal global ptr @dvb_register._entry.243, section ".printk_index", align 4
@netup_xc5000_config = internal global { [2 x %struct.xc5000_config], [56 x i8] } { [2 x %struct.xc5000_config] [%struct.xc5000_config { i8 97, i32 4500, i8 0, i16 0, i16 0, i32 0 }, %struct.xc5000_config { i8 100, i32 4500, i8 0, i16 0, i16 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@dvb_register._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.21, ptr @.str.2, i32 1730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.247 = internal global ptr @dvb_register._entry.246, section ".printk_index", align 4
@.str.248 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv0367cab_attach\00", [46 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"symbol:stv0367cab_attach\00", [39 x i8] zeroinitializer }, align 32
@dvb_register._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.21, ptr @.str.2, i32 1742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013DVB: Unable to find symbol stv0367cab_attach()\0A\00", [46 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.252 = internal global ptr @dvb_register._entry.250, section ".printk_index", align 4
@dvb_register._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.21, ptr @.str.2, i32 1750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.254 = internal global ptr @dvb_register._entry.253, section ".printk_index", align 4
@.str.255 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drxk_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"symbol:drxk_attach\00", [45 x i8] zeroinitializer }, align 32
@terratec_drxk_config = internal global { [2 x %struct.drxk_config], [48 x i8] } { [2 x %struct.drxk_config] [%struct.drxk_config { i8 41, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i8 0, i32 0, ptr null, i32 0 }, %struct.drxk_config { i8 42, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i8 0, i32 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@dvb_register._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.21, ptr @.str.2, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013DVB: Unable to find symbol drxk_attach()\0A\00", [52 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.259 = internal global ptr @dvb_register._entry.257, section ".printk_index", align 4
@.str.260 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2063_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2063_attach\00", [43 x i8] zeroinitializer }, align 32
@terratec_mt2063_config = internal global { [2 x %struct.mt2063_config], [16 x i8] } { [2 x %struct.mt2063_config] [%struct.mt2063_config { i8 96, i32 0 }, %struct.mt2063_config { i8 103, i32 0 }], [16 x i8] zeroinitializer }, align 32
@dvb_register._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.21, ptr @.str.2, i32 1768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2063_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.264 = internal global ptr @dvb_register._entry.262, section ".printk_index", align 4
@dvb_register._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.21, ptr @.str.2, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.266 = internal global ptr @dvb_register._entry.265, section ".printk_index", align 4
@dvb_register._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.21, ptr @.str.2, i32 1781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.268 = internal global ptr @dvb_register._entry.267, section ".printk_index", align 4
@dvb_register._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.21, ptr @.str.2, i32 1791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.270 = internal global ptr @dvb_register._entry.269, section ".printk_index", align 4
@dvb_register._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.21, ptr @.str.2, i32 1795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.272 = internal global ptr @dvb_register._entry.271, section ".printk_index", align 4
@.str.273 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv090x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv090x_attach\00", [42 x i8] zeroinitializer }, align 32
@prof_8000_stv090x_config = internal global { %struct.stv090x_config, [48 x i8] } { %struct.stv090x_config { i32 0, i32 1, i32 2, i32 0, i32 27000000, i8 106, i8 3, i8 0, i32 0, i32 0, i8 0, i32 2, i8 0, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr @stb6100_set_frequency, ptr @stb6100_get_frequency, ptr @stb6100_set_bandwidth, ptr @stb6100_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@dvb_register._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.21, ptr @.str.2, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv090x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.277 = internal global ptr @dvb_register._entry.275, section ".printk_index", align 4
@.str.278 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6100_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb6100_attach\00", [42 x i8] zeroinitializer }, align 32
@prof_8000_stb6100_config = internal global { %struct.stb6100_config, [24 x i8] } { %struct.stb6100_config { i8 96, i32 27000000 }, [24 x i8] zeroinitializer }, align 32
@dvb_register._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.21, ptr @.str.2, i32 1809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb6100_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.282 = internal global ptr @dvb_register._entry.280, section ".printk_index", align 4
@hauppauge_tda10071_pdata = internal constant { %struct.tda10071_platform_data, [16 x i8] } { %struct.tda10071_platform_data { i32 40444000, i16 64, i8 0, i8 0, i8 20, i8 84, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda10071_cx24118\00", [47 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda10071\00", [23 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a8293\00", [26 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2165\00", [25 x i8] zeroinitializer }, align 32
@hauppauge_hvr4400_tuner_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr null, i32 0, i32 2, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dvb_register._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 1882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.288 = internal global ptr @dvb_register._entry.287, section ".printk_index", align 4
@.str.290 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m88ds3103_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:m88ds3103_attach\00", [40 x i8] zeroinitializer }, align 32
@dvbsky_t9580_m88ds3103_config = internal constant { %struct.m88ds3103_config, [40 x i8] } { %struct.m88ds3103_config { i8 104, i32 27000000, i16 33, i8 2, i32 16000, i8 -128, i8 0, i8 0, i8 -103, i8 64 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.21, ptr @.str.2, i32 1937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol m88ds3103_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.294 = internal global ptr @dvb_register._entry.292, section ".printk_index", align 4
@.str.295 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ts2020\00", [25 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2168\00", [25 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2157\00", [25 x i8] zeroinitializer }, align 32
@dvbsky_s950c_m88ds3103_config = internal constant { %struct.m88ds3103_config, [40 x i8] } { %struct.m88ds3103_config { i8 104, i32 27000000, i16 33, i8 3, i32 10000, i8 -128, i8 0, i8 0, i8 -103, i8 64 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.21, ptr @.str.2, i32 2065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.299 = internal global ptr @dvb_register._entry.298, section ".printk_index", align 4
@.str.300 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"m88ds3103\00", [22 x i8] zeroinitializer }, align 32
@hauppauge_hvr5525_m88ds3103_config = internal constant { %struct.m88ds3103_config, [40 x i8] } { %struct.m88ds3103_config { i8 105, i32 27000000, i16 33, i8 2, i32 16000, i8 -128, i8 0, i8 0, i8 -103, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.21, ptr @.str.2, i32 2231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.302 = internal global ptr @dvb_register._entry.301, section ".printk_index", align 4
@.str.303 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m88rs6000t\00", [21 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@dvb_register._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.21, ptr @.str.2, i32 2329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cx23885: %s(): board=%d port=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.307 = internal global ptr @dvb_register._entry.305, section ".printk_index", align 4
@dvb_register._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.21, ptr @.str.2, i32 2380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cx23885: %s(): QUADHD_DVB analog setup\0A\00", [54 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.310 = internal global ptr @dvb_register._entry.308, section ".printk_index", align 4
@dvb_register._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.21, ptr @.str.2, i32 2439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.312 = internal global ptr @dvb_register._entry.311, section ".printk_index", align 4
@.str.313 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lgdt3306a_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:lgdt3306a_attach\00", [40 x i8] zeroinitializer }, align 32
@hauppauge_quadHD_ATSC_a_config = internal global { %struct.lgdt3306a_config, [32 x i8] } { %struct.lgdt3306a_config { i8 89, i16 4000, i16 3250, i8 -128, i32 1, i32 0, i32 1, i32 25, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_register._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.21, ptr @.str.2, i32 2446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol lgdt3306a_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.317 = internal global ptr @dvb_register._entry.315, section ".printk_index", align 4
@dvb_register._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.21, ptr @.str.2, i32 2479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cx23885: %s(): QUADHD_ATSC analog setup\0A\00", [53 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.320 = internal global ptr @dvb_register._entry.318, section ".printk_index", align 4
@hauppauge_quadHD_ATSC_b_config = internal global { %struct.lgdt3306a_config, [32 x i8] } { %struct.lgdt3306a_config { i8 14, i16 4000, i16 3250, i8 -128, i32 1, i32 0, i32 1, i32 25, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_register._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.21, ptr @.str.2, i32 2492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.322 = internal global ptr @dvb_register._entry.321, section ".printk_index", align 4
@hauppauge_hvr1265k4_config = internal global { %struct.lgdt3306a_config, [32 x i8] } { %struct.lgdt3306a_config { i8 89, i16 4000, i16 3250, i8 -128, i32 1, i32 0, i32 1, i32 25, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_register._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.21, ptr @.str.2, i32 2532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.324 = internal global ptr @dvb_register._entry.323, section ".printk_index", align 4
@dvb_register._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.21, ptr @.str.2, i32 2566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016cx23885: %s: The frontend of your DVB/ATSC card  isn't supported yet\0A\00", [56 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.327 = internal global ptr @dvb_register._entry.325, section ".printk_index", align 4
@dvb_register._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.21, ptr @.str.2, i32 2572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cx23885: %s: frontend initialization failed\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_register._entry_ptr.330 = internal global ptr @dvb_register._entry.328, section ".printk_index", align 4
@hauppauge_hvr127x_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 3250, i8 -32, i8 -40 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -24, i8 -40 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@hauppauge_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 5380, i8 -37, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -61, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@hauppauge_hvr1200_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 3300, i8 -32, i8 -73 }, { i16, i8, i8 } { i16 3800, i8 -24, i8 -73 }, { i16, i8, i8 } { i16 4300, i8 -16, i8 -73 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@xc3028_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 6, i16 100, i16 712, i16 21, i8 0, i16 118, i8 0, i16 2867, i8 0, i8 2, i16 0, i16 0, i16 -25818, i16 9930, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -128, i8 29, i8 29, i8 17, i8 27, i8 23, i8 51, i8 1, %struct.anon.158 zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@xc3028_bw_config = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 60000, i32 30000, i8 1, i8 8, i8 3, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i16 -11764, i32 39370534, i32 20452225, i32 30000000 }, [32 x i8] zeroinitializer }, align 32
@dib7070_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 15, i16 10346, i16 600, i16 10, i8 0, i16 118, i8 0, i16 3530, i8 1, i8 5, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 40, i8 -73, i8 -50, i8 -1, i8 72, i8 -104, i8 88, i8 90, i8 17, i8 27, i8 23, i8 51, i8 0, %struct.anon.158 zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@dib7070_bw_config_12_mhz = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 60000, i32 15000, i8 1, i8 20, i8 3, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 2, i16 -11764, i32 0, i32 20452225, i32 12000000 }, [32 x i8] zeroinitializer }, align 32
@tevii_ts2020_config = internal global { { i8, i32, i8, i8, ptr, i8, ptr }, [40 x i8] } { { i8, i32, i8, i8, ptr, i8, ptr } { i8 96, i32 1146000, i8 1, i8 0, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0900_ts_regs = internal global { [10 x %struct.stv0900_reg], [56 x i8] } { [10 x %struct.stv0900_reg] [%struct.stv0900_reg { i16 -2512, i8 0 }, %struct.stv0900_reg { i16 -2688, i8 64 }, %struct.stv0900_reg { i16 -3200, i8 64 }, %struct.stv0900_reg { i16 -2701, i8 -64 }, %struct.stv0900_reg { i16 -3213, i8 -64 }, %struct.stv0900_reg { i16 -2702, i8 -32 }, %struct.stv0900_reg { i16 -3214, i8 -32 }, %struct.stv0900_reg { i16 -2700, i8 32 }, %struct.stv0900_reg { i16 -3212, i8 32 }, %struct.stv0900_reg { i16 -1, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.336, ptr @.str.337, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid parameter\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/dvb-frontends/stb6100_cfg.h\00", [54 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr = internal global ptr @stb6100_set_frequency._entry, section ".printk_index", align 4
@stb6100_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.338, ptr @.str.337, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_frequency\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_frequency._entry_ptr = internal global ptr @stb6100_get_frequency._entry, section ".printk_index", align 4
@stb6100_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.339, ptr @.str.337, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_set_bandwidth._entry_ptr = internal global ptr @stb6100_set_bandwidth._entry, section ".printk_index", align 4
@stb6100_get_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.340, ptr @.str.337, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_bandwidth._entry_ptr = internal global ptr @stb6100_get_bandwidth._entry, section ".printk_index", align 4
@dvb_register_ci_mac.cinfo = internal global { %struct.netup_card_info, [19 x i8] } zeroinitializer, align 32
@dvb_register_ci_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.341, ptr @.str.342, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016cx23885: NetUP Dual DVB-S2 CI card port%d MAC=%pM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_register_ci_mac\00", [44 x i8] zeroinitializer }, align 32
@dvb_register_ci_mac._entry_ptr = internal global ptr @dvb_register_ci_mac._entry, section ".printk_index", align 4
@dvb_register_ci_mac._entry.343 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.344, ptr @.str.342, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cx23885: TeVii S470 MAC= %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@dvb_register_ci_mac._entry_ptr.345 = internal global ptr @dvb_register_ci_mac._entry.343, section ".printk_index", align 4
@dvb_register_ci_mac._entry.346 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.342, ptr @.str.2, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016cx23885: %s port %d MAC address: %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@dvb_register_ci_mac._entry_ptr.348 = internal global ptr @dvb_register_ci_mac._entry.346, section ".printk_index", align 4
@cx23885_boards = external dso_local local_unnamed_addr global [0 x %struct.cx23885_board], align 4
@.str.349 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sp2\00", [28 x i8] zeroinitializer }, align 32
@dvb_register_ci_mac._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.351, ptr @.str.342, ptr @.str.2, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cx23885: %s MAC address: %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@dvb_register_ci_mac._entry_ptr.352 = internal global ptr @dvb_register_ci_mac._entry.350, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [55 x i64] [i64 53, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 30, i64 31, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 40, i64 41, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61]
@__sancov_gen_cov_switch_values.353 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.354 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.355 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.356 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.357 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.358 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.359 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.360 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.361 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.362 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.363 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.364 = internal global [12 x i64] [i64 10, i64 32, i64 15, i64 17, i64 30, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51]
@__sancov_gen_cov_switch_values.365 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 30]
@__sancov_gen_cov_switch_values.366 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.367 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.368 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.369 = internal global [6 x i64] [i64 4, i64 32, i64 19, i64 22, i64 23, i64 33]
@___asan_gen_.370 = private unnamed_addr constant [10 x i8] c"alt_tuner\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 80, i32 21 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2652, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2660, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2668, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2669, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2677, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant [9 x i8] c"dvb_qops\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 168, i32 29 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2697, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 84, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant [25 x i8] c"hauppauge_generic_config\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 179, i32 30 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1227, i32 23 }
@___asan_gen_.445 = private unnamed_addr constant [30 x i8] c"hauppauge_generic_tunerconfig\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 240, i32 29 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1232, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant [26 x i8] c"hauppauge_lgdt3305_config\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 353, i32 31 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1239, i32 23 }
@___asan_gen_.475 = private unnamed_addr constant [25 x i8] c"hauppauge_hvr127x_config\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 348, i32 31 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1244, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant [19 x i8] c"hcw_s5h1411_config\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 279, i32 30 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1253, i32 23 }
@___asan_gen_.499 = private unnamed_addr constant [26 x i8] c"hauppauge_tda18271_config\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 319, i32 31 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1259, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant [23 x i8] c"hauppauge_ezqam_config\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 211, i32 30 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1273, i32 5 }
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"tda829x_no_probe\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 299, i32 30 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1279, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1282, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1289, i32 5 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1294, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant [27 x i8] c"hauppauge_hvr1800lp_config\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 221, i32 30 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1301, i32 23 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1306, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant [21 x i8] c"fusionhdtv_5_express\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 244, i32 31 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1312, i32 23 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1318, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant [26 x i8] c"hauppauge_hvr1500q_config\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 249, i32 30 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1324, i32 23 }
@___asan_gen_.583 = private unnamed_addr constant [31 x i8] c"hauppauge_hvr1500q_tunerconfig\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 289, i32 29 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1329, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant [25 x i8] c"hauppauge_hvr1500_config\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 231, i32 30 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1335, i32 23 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1344, i32 30 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1345, i32 20 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1350, i32 9 }
@___asan_gen_.622 = private unnamed_addr constant [25 x i8] c"hauppauge_hvr1200_config\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 189, i32 31 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1359, i32 23 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1364, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant [31 x i8] c"hauppauge_hvr1200_tuner_config\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 325, i32 31 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1367, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant [25 x i8] c"hauppauge_hvr1210_config\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 200, i32 31 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1373, i32 23 }
@___asan_gen_.646 = private unnamed_addr constant [31 x i8] c"hauppauge_hvr1210_tuner_config\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 331, i32 31 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1377, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1385, i32 8 }
@___asan_gen_.664 = private unnamed_addr constant [33 x i8] c"hauppauge_hvr1400_dib7000_config\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 429, i32 31 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1396, i32 30 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1397, i32 16 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1405, i32 9 }
@___asan_gen_.676 = private unnamed_addr constant [21 x i8] c"dvico_s5h1409_config\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 259, i32 30 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1414, i32 23 }
@___asan_gen_.682 = private unnamed_addr constant [21 x i8] c"dvico_s5h1411_config\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 269, i32 30 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1418, i32 24 }
@___asan_gen_.688 = private unnamed_addr constant [25 x i8] c"dvico_xc5000_tunerconfig\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 294, i32 29 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1422, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant [24 x i8] c"dvico_fusionhdtv_xc3028\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 450, i32 30 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1429, i32 23 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1438, i32 30 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1444, i32 9 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1456, i32 8 }
@___asan_gen_.718 = private unnamed_addr constant [25 x i8] c"dib7070p_dib7000p_config\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1058, i32 31 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1460, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant [24 x i8] c"dib7070p_dib0070_config\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 990, i32 30 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1471, i32 9 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1481, i32 23 }
@___asan_gen_.745 = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1490, i32 30 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1496, i32 9 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1505, i32 23 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1518, i32 9 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1521, i32 5 }
@___asan_gen_.778 = private unnamed_addr constant [19 x i8] c"tbs_cx24116_config\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 497, i32 30 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1530, i32 23 }
@___asan_gen_.793 = private unnamed_addr constant [19 x i8] c"tbs_cx24117_config\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 501, i32 30 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1544, i32 24 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1550, i32 24 }
@___asan_gen_.811 = private unnamed_addr constant [20 x i8] c"tevii_ds3000_config\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 505, i32 29 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1559, i32 23 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1563, i32 4 }
@___asan_gen_.832 = private unnamed_addr constant [24 x i8] c"dvbworld_cx24116_config\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 515, i32 30 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1572, i32 23 }
@___asan_gen_.844 = private unnamed_addr constant [21 x i8] c"netup_stv0900_config\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 470, i32 30 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1581, i32 24 }
@___asan_gen_.859 = private unnamed_addr constant [28 x i8] c"netup_stv6110_tunerconfig_a\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 483, i32 30 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1585, i32 9 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1589, i32 11 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1594, i32 7 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1601, i32 24 }
@___asan_gen_.889 = private unnamed_addr constant [28 x i8] c"netup_stv6110_tunerconfig_b\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 490, i32 30 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1605, i32 9 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1609, i32 11 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1614, i32 7 }
@___asan_gen_.907 = private unnamed_addr constant [28 x i8] c"mygica_x8506_lgs8gl5_config\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 519, i32 30 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1624, i32 23 }
@___asan_gen_.916 = private unnamed_addr constant [27 x i8] c"mygica_x8506_xc5000_config\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 533, i32 29 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1629, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant [29 x i8] c"mygica_x8507_mb86a20s_config\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 538, i32 31 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1636, i32 23 }
@___asan_gen_.937 = private unnamed_addr constant [27 x i8] c"mygica_x8507_xc5000_config\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 542, i32 29 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1642, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant [34 x i8] c"magicpro_prohdtve2_lgs8g75_config\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 775, i32 30 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1650, i32 23 }
@___asan_gen_.949 = private unnamed_addr constant [33 x i8] c"magicpro_prohdtve2_xc5000_config\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 790, i32 29 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1655, i32 3 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1662, i32 23 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1667, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1678, i32 23 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1683, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant [30 x i8] c"mygica_x8558pro_atbm8830_cfg1\00", align 1
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 795, i32 31 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1692, i32 24 }
@___asan_gen_.988 = private unnamed_addr constant [28 x i8] c"mygic_x8558pro_max2165_cfg1\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 809, i32 30 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1697, i32 4 }
@___asan_gen_.997 = private unnamed_addr constant [30 x i8] c"mygica_x8558pro_atbm8830_cfg2\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 814, i32 31 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1704, i32 24 }
@___asan_gen_.1003 = private unnamed_addr constant [28 x i8] c"mygic_x8558pro_max2165_cfg2\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 828, i32 30 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1709, i32 4 }
@___asan_gen_.1015 = private unnamed_addr constant [21 x i8] c"netup_stv0367_config\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 832, i32 30 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1723, i32 23 }
@___asan_gen_.1024 = private unnamed_addr constant [20 x i8] c"netup_xc5000_config\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 850, i32 29 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1728, i32 15 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1740, i32 23 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1747, i32 15 }
@___asan_gen_.1051 = private unnamed_addr constant [21 x i8] c"terratec_drxk_config\00", align 1
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 860, i32 27 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1760, i32 24 }
@___asan_gen_.1066 = private unnamed_addr constant [23 x i8] c"terratec_mt2063_config\00", align 1
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 870, i32 29 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1765, i32 9 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1773, i32 24 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1778, i32 9 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1789, i32 23 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1794, i32 3 }
@___asan_gen_.1093 = private unnamed_addr constant [25 x i8] c"prof_8000_stv090x_config\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 547, i32 30 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1800, i32 23 }
@___asan_gen_.1108 = private unnamed_addr constant [25 x i8] c"prof_8000_stb6100_config\00", align 1
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 564, i32 30 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1806, i32 8 }
@___asan_gen_.1117 = private unnamed_addr constant [25 x i8] c"hauppauge_tda10071_pdata\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 878, i32 44 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1825, i32 23 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1828, i32 4 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1842, i32 23 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1863, i32 23 }
@___asan_gen_.1132 = private unnamed_addr constant [31 x i8] c"hauppauge_hvr4400_tuner_config\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 336, i32 31 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1879, i32 9 }
@___asan_gen_.1144 = private unnamed_addr constant [30 x i8] c"dvbsky_t9580_m88ds3103_config\00", align 1
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 886, i32 38 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1935, i32 24 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1946, i32 23 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1982, i32 23 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2000, i32 23 }
@___asan_gen_.1162 = private unnamed_addr constant [30 x i8] c"dvbsky_s950c_m88ds3103_config\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 899, i32 38 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2063, i32 23 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2123, i32 22 }
@___asan_gen_.1171 = private unnamed_addr constant [35 x i8] c"hauppauge_hvr5525_m88ds3103_config\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 912, i32 38 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2229, i32 24 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2255, i32 23 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2258, i32 4 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2328, i32 3 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2379, i32 5 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2438, i32 3 }
@___asan_gen_.1204 = private unnamed_addr constant [31 x i8] c"hauppauge_quadHD_ATSC_a_config\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 569, i32 32 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2445, i32 24 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2478, i32 5 }
@___asan_gen_.1219 = private unnamed_addr constant [31 x i8] c"hauppauge_quadHD_ATSC_b_config\00", align 1
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 581, i32 32 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2491, i32 24 }
@___asan_gen_.1225 = private unnamed_addr constant [27 x i8] c"hauppauge_hvr1265k4_config\00", align 1
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 922, i32 32 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2530, i32 24 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2565, i32 3 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 2571, i32 3 }
@___asan_gen_.1243 = private unnamed_addr constant [26 x i8] c"hauppauge_hvr127x_std_map\00", align 1
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 341, i32 32 }
@___asan_gen_.1246 = private unnamed_addr constant [27 x i8] c"hauppauge_tda18271_std_map\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 303, i32 32 }
@___asan_gen_.1249 = private unnamed_addr constant [35 x i8] c"hauppauge_hvr1200_tda18271_std_map\00", align 1
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 310, i32 32 }
@___asan_gen_.1252 = private unnamed_addr constant [18 x i8] c"xc3028_agc_config\00", align 1
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 364, i32 34 }
@___asan_gen_.1255 = private unnamed_addr constant [17 x i8] c"xc3028_bw_config\00", align 1
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 410, i32 40 }
@___asan_gen_.1258 = private unnamed_addr constant [19 x i8] c"dib7070_agc_config\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1000, i32 34 }
@___asan_gen_.1261 = private unnamed_addr constant [25 x i8] c"dib7070_bw_config_12_mhz\00", align 1
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1038, i32 40 }
@___asan_gen_.1264 = private unnamed_addr constant [20 x i8] c"tevii_ts2020_config\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 509, i32 29 }
@___asan_gen_.1267 = private unnamed_addr constant [16 x i8] c"stv0900_ts_regs\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 457, i32 27 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1298, i32 44, i32 4 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1298, i32 22, i32 4 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1298, i32 82, i32 4 }
@___asan_gen_.1298 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/stb6100_cfg.h\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1298, i32 60, i32 4 }
@___asan_gen_.1300 = private unnamed_addr constant [6 x i8] c"cinfo\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1089, i32 33 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1094, i32 3 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1120, i32 3 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1137, i32 3 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1158, i32 22 }
@___asan_gen_.1327 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1330 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1331 = private constant [43 x i8] c"../drivers/media/pci/cx23885/cx23885-dvb.c\00", align 1
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1331, i32 1178, i32 3 }
@llvm.compiler.used = appending global [433 x ptr] [ptr @__UNIQUE_ID_adapter_nr388, ptr @__UNIQUE_ID_adapter_nrtype387, ptr @__UNIQUE_ID_alt_tuner386, ptr @__UNIQUE_ID_alt_tunertype385, ptr @__param_adapter_nr, ptr @__param_alt_tuner, ptr @cx23885_dvb_register._entry, ptr @cx23885_dvb_register._entry.12, ptr @cx23885_dvb_register._entry.15, ptr @cx23885_dvb_register._entry.3, ptr @cx23885_dvb_register._entry.6, ptr @cx23885_dvb_register._entry.9, ptr @cx23885_dvb_register._entry_ptr, ptr @cx23885_dvb_register._entry_ptr.11, ptr @cx23885_dvb_register._entry_ptr.14, ptr @cx23885_dvb_register._entry_ptr.17, ptr @cx23885_dvb_register._entry_ptr.5, ptr @cx23885_dvb_register._entry_ptr.8, ptr @dvb_register._entry, ptr @dvb_register._entry.101, ptr @dvb_register._entry.107, ptr @dvb_register._entry.109, ptr @dvb_register._entry.111, ptr @dvb_register._entry.113, ptr @dvb_register._entry.117, ptr @dvb_register._entry.122, ptr @dvb_register._entry.124, ptr @dvb_register._entry.126, ptr @dvb_register._entry.131, ptr @dvb_register._entry.134, ptr @dvb_register._entry.138, ptr @dvb_register._entry.140, ptr @dvb_register._entry.145, ptr @dvb_register._entry.148, ptr @dvb_register._entry.153, ptr @dvb_register._entry.158, ptr @dvb_register._entry.161, ptr @dvb_register._entry.165, ptr @dvb_register._entry.170, ptr @dvb_register._entry.173, ptr @dvb_register._entry.177, ptr @dvb_register._entry.182, ptr @dvb_register._entry.187, ptr @dvb_register._entry.190, ptr @dvb_register._entry.193, ptr @dvb_register._entry.195, ptr @dvb_register._entry.197, ptr @dvb_register._entry.199, ptr @dvb_register._entry.203, ptr @dvb_register._entry.206, ptr @dvb_register._entry.210, ptr @dvb_register._entry.213, ptr @dvb_register._entry.215, ptr @dvb_register._entry.217, ptr @dvb_register._entry.219, ptr @dvb_register._entry.221, ptr @dvb_register._entry.223, ptr @dvb_register._entry.225, ptr @dvb_register._entry.229, ptr @dvb_register._entry.234, ptr @dvb_register._entry.237, ptr @dvb_register._entry.239, ptr @dvb_register._entry.24, ptr @dvb_register._entry.243, ptr @dvb_register._entry.246, ptr @dvb_register._entry.250, ptr @dvb_register._entry.253, ptr @dvb_register._entry.257, ptr @dvb_register._entry.262, ptr @dvb_register._entry.265, ptr @dvb_register._entry.267, ptr @dvb_register._entry.269, ptr @dvb_register._entry.271, ptr @dvb_register._entry.275, ptr @dvb_register._entry.280, ptr @dvb_register._entry.287, ptr @dvb_register._entry.29, ptr @dvb_register._entry.292, ptr @dvb_register._entry.298, ptr @dvb_register._entry.301, ptr @dvb_register._entry.305, ptr @dvb_register._entry.308, ptr @dvb_register._entry.311, ptr @dvb_register._entry.315, ptr @dvb_register._entry.318, ptr @dvb_register._entry.321, ptr @dvb_register._entry.323, ptr @dvb_register._entry.325, ptr @dvb_register._entry.328, ptr @dvb_register._entry.34, ptr @dvb_register._entry.39, ptr @dvb_register._entry.42, ptr @dvb_register._entry.44, ptr @dvb_register._entry.48, ptr @dvb_register._entry.51, ptr @dvb_register._entry.53, ptr @dvb_register._entry.55, ptr @dvb_register._entry.57, ptr @dvb_register._entry.59, ptr @dvb_register._entry.63, ptr @dvb_register._entry.68, ptr @dvb_register._entry.71, ptr @dvb_register._entry.75, ptr @dvb_register._entry.78, ptr @dvb_register._entry.83, ptr @dvb_register._entry.88, ptr @dvb_register._entry.91, ptr @dvb_register._entry.93, ptr @dvb_register._entry.95, ptr @dvb_register._entry.97, ptr @dvb_register._entry_ptr, ptr @dvb_register._entry_ptr.103, ptr @dvb_register._entry_ptr.108, ptr @dvb_register._entry_ptr.110, ptr @dvb_register._entry_ptr.112, ptr @dvb_register._entry_ptr.114, ptr @dvb_register._entry_ptr.119, ptr @dvb_register._entry_ptr.123, ptr @dvb_register._entry_ptr.125, ptr @dvb_register._entry_ptr.128, ptr @dvb_register._entry_ptr.133, ptr @dvb_register._entry_ptr.135, ptr @dvb_register._entry_ptr.139, ptr @dvb_register._entry_ptr.141, ptr @dvb_register._entry_ptr.147, ptr @dvb_register._entry_ptr.150, ptr @dvb_register._entry_ptr.155, ptr @dvb_register._entry_ptr.160, ptr @dvb_register._entry_ptr.162, ptr @dvb_register._entry_ptr.167, ptr @dvb_register._entry_ptr.172, ptr @dvb_register._entry_ptr.174, ptr @dvb_register._entry_ptr.179, ptr @dvb_register._entry_ptr.184, ptr @dvb_register._entry_ptr.189, ptr @dvb_register._entry_ptr.192, ptr @dvb_register._entry_ptr.194, ptr @dvb_register._entry_ptr.196, ptr @dvb_register._entry_ptr.198, ptr @dvb_register._entry_ptr.200, ptr @dvb_register._entry_ptr.205, ptr @dvb_register._entry_ptr.207, ptr @dvb_register._entry_ptr.212, ptr @dvb_register._entry_ptr.214, ptr @dvb_register._entry_ptr.216, ptr @dvb_register._entry_ptr.218, ptr @dvb_register._entry_ptr.220, ptr @dvb_register._entry_ptr.222, ptr @dvb_register._entry_ptr.224, ptr @dvb_register._entry_ptr.226, ptr @dvb_register._entry_ptr.231, ptr @dvb_register._entry_ptr.236, ptr @dvb_register._entry_ptr.238, ptr @dvb_register._entry_ptr.240, ptr @dvb_register._entry_ptr.245, ptr @dvb_register._entry_ptr.247, ptr @dvb_register._entry_ptr.252, ptr @dvb_register._entry_ptr.254, ptr @dvb_register._entry_ptr.259, ptr @dvb_register._entry_ptr.26, ptr @dvb_register._entry_ptr.264, ptr @dvb_register._entry_ptr.266, ptr @dvb_register._entry_ptr.268, ptr @dvb_register._entry_ptr.270, ptr @dvb_register._entry_ptr.272, ptr @dvb_register._entry_ptr.277, ptr @dvb_register._entry_ptr.282, ptr @dvb_register._entry_ptr.288, ptr @dvb_register._entry_ptr.294, ptr @dvb_register._entry_ptr.299, ptr @dvb_register._entry_ptr.302, ptr @dvb_register._entry_ptr.307, ptr @dvb_register._entry_ptr.31, ptr @dvb_register._entry_ptr.310, ptr @dvb_register._entry_ptr.312, ptr @dvb_register._entry_ptr.317, ptr @dvb_register._entry_ptr.320, ptr @dvb_register._entry_ptr.322, ptr @dvb_register._entry_ptr.324, ptr @dvb_register._entry_ptr.327, ptr @dvb_register._entry_ptr.330, ptr @dvb_register._entry_ptr.36, ptr @dvb_register._entry_ptr.41, ptr @dvb_register._entry_ptr.43, ptr @dvb_register._entry_ptr.45, ptr @dvb_register._entry_ptr.50, ptr @dvb_register._entry_ptr.52, ptr @dvb_register._entry_ptr.54, ptr @dvb_register._entry_ptr.56, ptr @dvb_register._entry_ptr.58, ptr @dvb_register._entry_ptr.60, ptr @dvb_register._entry_ptr.65, ptr @dvb_register._entry_ptr.70, ptr @dvb_register._entry_ptr.72, ptr @dvb_register._entry_ptr.77, ptr @dvb_register._entry_ptr.79, ptr @dvb_register._entry_ptr.85, ptr @dvb_register._entry_ptr.90, ptr @dvb_register._entry_ptr.92, ptr @dvb_register._entry_ptr.94, ptr @dvb_register._entry_ptr.96, ptr @dvb_register._entry_ptr.98, ptr @dvb_register_ci_mac._entry, ptr @dvb_register_ci_mac._entry.343, ptr @dvb_register_ci_mac._entry.346, ptr @dvb_register_ci_mac._entry.350, ptr @dvb_register_ci_mac._entry_ptr, ptr @dvb_register_ci_mac._entry_ptr.345, ptr @dvb_register_ci_mac._entry_ptr.348, ptr @dvb_register_ci_mac._entry_ptr.352, ptr @stb6100_get_bandwidth._entry, ptr @stb6100_get_bandwidth._entry_ptr, ptr @stb6100_get_frequency._entry, ptr @stb6100_get_frequency._entry_ptr, ptr @stb6100_set_bandwidth._entry, ptr @stb6100_set_bandwidth._entry_ptr, ptr @stb6100_set_frequency._entry, ptr @stb6100_set_frequency._entry_ptr, ptr @alt_tuner, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @dvb_qops, ptr @.str.16, ptr @adapter_nr, ptr @.str.18, ptr @.str.19, ptr @hauppauge_generic_config, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @hauppauge_generic_tunerconfig, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @hauppauge_lgdt3305_config, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @hauppauge_hvr127x_config, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @hcw_s5h1411_config, ptr @.str.40, ptr @hauppauge_tda18271_config, ptr @hauppauge_ezqam_config, ptr @.str.46, ptr @.str.47, ptr @tda829x_no_probe, ptr @.str.49, ptr @hauppauge_hvr1800lp_config, ptr @.str.61, ptr @.str.62, ptr @fusionhdtv_5_express, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @hauppauge_hvr1500q_config, ptr @.str.73, ptr @.str.74, ptr @hauppauge_hvr1500q_tunerconfig, ptr @.str.76, ptr @hauppauge_hvr1500_config, ptr @dvb_register.ctl, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @hauppauge_hvr1200_config, ptr @.str.89, ptr @hauppauge_hvr1200_tuner_config, ptr @hauppauge_hvr1210_config, ptr @hauppauge_hvr1210_tuner_config, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @hauppauge_hvr1400_dib7000_config, ptr @dvb_register.ctl.105, ptr @.str.106, ptr @dvico_s5h1409_config, ptr @dvico_s5h1411_config, ptr @dvico_xc5000_tunerconfig, ptr @.str.115, ptr @.str.116, ptr @dvico_fusionhdtv_xc3028, ptr @.str.118, ptr @dvb_register.ctl.121, ptr @dib7070p_dib7000p_config, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @dib7070p_dib0070_config, ptr @.str.132, ptr @dvb_register.ctl.137, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @tbs_cx24116_config, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @tbs_cx24117_config, ptr @.str.159, ptr @.str.163, ptr @.str.164, ptr @tevii_ds3000_config, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @dvbworld_cx24116_config, ptr @.str.175, ptr @.str.176, ptr @netup_stv0900_config, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @netup_stv6110_tunerconfig_a, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @.str.188, ptr @.str.191, ptr @netup_stv6110_tunerconfig_b, ptr @.str.201, ptr @.str.202, ptr @mygica_x8506_lgs8gl5_config, ptr @.str.204, ptr @mygica_x8506_xc5000_config, ptr @.str.208, ptr @.str.209, ptr @mygica_x8507_mb86a20s_config, ptr @.str.211, ptr @mygica_x8507_xc5000_config, ptr @magicpro_prohdtve2_lgs8g75_config, ptr @magicpro_prohdtve2_xc5000_config, ptr @.str.227, ptr @.str.228, ptr @mygica_x8558pro_atbm8830_cfg1, ptr @.str.230, ptr @.str.232, ptr @.str.233, ptr @mygic_x8558pro_max2165_cfg1, ptr @.str.235, ptr @mygica_x8558pro_atbm8830_cfg2, ptr @mygic_x8558pro_max2165_cfg2, ptr @.str.241, ptr @.str.242, ptr @netup_stv0367_config, ptr @.str.244, ptr @netup_xc5000_config, ptr @.str.248, ptr @.str.249, ptr @.str.251, ptr @.str.255, ptr @.str.256, ptr @terratec_drxk_config, ptr @.str.258, ptr @.str.260, ptr @.str.261, ptr @terratec_mt2063_config, ptr @.str.263, ptr @.str.273, ptr @.str.274, ptr @prof_8000_stv090x_config, ptr @.str.276, ptr @.str.278, ptr @.str.279, ptr @prof_8000_stb6100_config, ptr @.str.281, ptr @hauppauge_tda10071_pdata, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @hauppauge_hvr4400_tuner_config, ptr @.str.290, ptr @.str.291, ptr @dvbsky_t9580_m88ds3103_config, ptr @.str.293, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @dvbsky_s950c_m88ds3103_config, ptr @.str.300, ptr @hauppauge_hvr5525_m88ds3103_config, ptr @.str.303, ptr @.str.304, ptr @.str.306, ptr @.str.309, ptr @.str.313, ptr @.str.314, ptr @hauppauge_quadHD_ATSC_a_config, ptr @.str.316, ptr @.str.319, ptr @hauppauge_quadHD_ATSC_b_config, ptr @hauppauge_hvr1265k4_config, ptr @.str.326, ptr @.str.329, ptr @hauppauge_hvr127x_std_map, ptr @hauppauge_tda18271_std_map, ptr @hauppauge_hvr1200_tda18271_std_map, ptr @xc3028_agc_config, ptr @xc3028_bw_config, ptr @dib7070_agc_config, ptr @dib7070_bw_config_12_mhz, ptr @tevii_ts2020_config, ptr @stv0900_ts_regs, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @dvb_register_ci_mac.cinfo, ptr @.str.341, ptr @.str.342, ptr @.str.344, ptr @.str.347, ptr @.str.349, ptr @.str.351], section "llvm.metadata"
@0 = internal global [321 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alt_tuner to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dvb_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dvb_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dvb_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dvb_register._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_dvb_register._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_generic_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_generic_tunerconfig to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_lgdt3305_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr127x_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcw_s5h1411_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_ezqam_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_no_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1800lp_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusionhdtv_5_express to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1500q_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1500q_tunerconfig to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1500_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register.ctl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1200_config to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1200_tuner_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1210_config to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1210_tuner_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1400_dib7000_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register.ctl.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_s5h1409_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_s5h1411_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_xc5000_tunerconfig to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_fusionhdtv_xc3028 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register.ctl.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070p_dib7000p_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070p_dib0070_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register.ctl.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbs_cx24116_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbs_cx24117_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tevii_ds3000_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbworld_cx24116_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_stv0900_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_stv6110_tunerconfig_a to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_stv6110_tunerconfig_b to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygica_x8506_lgs8gl5_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygica_x8506_xc5000_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygica_x8507_mb86a20s_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygica_x8507_xc5000_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicpro_prohdtve2_lgs8g75_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicpro_prohdtve2_xc5000_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygica_x8558pro_atbm8830_cfg1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygic_x8558pro_max2165_cfg1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygica_x8558pro_atbm8830_cfg2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygic_x8558pro_max2165_cfg2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_stv0367_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_xc5000_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_drxk_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_mt2063_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_8000_stv090x_config to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_8000_stb6100_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda10071_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr4400_tuner_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_t9580_m88ds3103_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_s950c_m88ds3103_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr5525_m88ds3103_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_quadHD_ATSC_a_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_quadHD_ATSC_b_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1265k4_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr127x_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_hvr1200_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc3028_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc3028_bw_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070_bw_config_12_mhz to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tevii_ts2020_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_ts_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register_ci_mac.cinfo to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register_ci_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register_ci_mac._entry.343 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register_ci_mac._entry.346 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_register_ci_mac._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_dvb_register(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %num_frontends = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 32
  %2 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_frontends, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %3) #10
  %4 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_frontends, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not96 = icmp eq i32 %5, 0
  br i1 %cmp.not96, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %frontends = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3
  %name40 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 19
  %lock = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 16
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %inc = add i32 %i.097, 1
  %6 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_frontends, align 4
  %cmp.not = icmp ugt i32 %inc, %7
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call3 = tail call ptr @vb2_dvb_alloc_frontend(ptr noundef %frontends, i32 noundef %i.097) #7
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %do.end7, label %if.end

do.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #10
  br label %cleanup59

if.end:                                           ; preds = %for.body
  %call11 = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef %i.097) #7
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end.cleanup59_crit_edge, label %cleanup

if.end.cleanup59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

cleanup:                                          ; preds = %if.end
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name40) #10
  %dvbq = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %dvbq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dvbq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2, i32 1
  %9 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 23, ptr %io_modes, align 4
  %gfp_flags = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2, i32 14
  %10 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %gfp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2, i32 15
  %11 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %min_buffers_needed, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2, i32 10
  %12 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %port, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2, i32 12
  %13 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 776, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2, i32 7
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dvb_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2, i32 8
  %15 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2, i32 13
  %16 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock43 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2, i32 5
  %17 = ptrtoint ptr %lock43 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %lock, ptr %lock43, align 4
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 4
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %dev45 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call11, i32 0, i32 2, i32 2, i32 2
  %20 = ptrtoint ptr %dev45 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev44, ptr %dev45, align 4
  %call46 = tail call i32 @vb2_queue_init(ptr noundef %dvbq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %cleanup.cleanup59_crit_edge, label %for.cond

cleanup.cleanup59_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %call50 = tail call fastcc i32 @dvb_register(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %for.end.cleanup59_crit_edge, label %do.end55

for.end.cleanup59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

do.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef %call50) #10
  br label %cleanup59

cleanup59:                                        ; preds = %do.end55, %for.end.cleanup59_crit_edge, %cleanup.cleanup59_crit_edge, %if.end.cleanup59_crit_edge, %do.end7
  %retval.2 = phi i32 [ %call50, %do.end55 ], [ 0, %for.end.cleanup59_crit_edge ], [ -12, %do.end7 ], [ -22, %if.end.cleanup59_crit_edge ], [ %call46, %cleanup.cleanup59_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_dvb_alloc_frontend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_dvb_get_frontend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_register(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  %netup_ci_cfg.i = alloca %struct.altera_ci_config, align 4
  %eeprom.i = alloca [256 x i8], align 1
  %eeprom44.i = alloca [256 x i8], align 1
  %eeprom83.i = alloca [256 x i8], align 1
  %sp2_config.i = alloca %struct.sp2_config, align 4
  %info.i = alloca %struct.i2c_board_info, align 4
  %dib7000p_ops = alloca %struct.dib7000p_ops, align 4
  %si2168_config = alloca %struct.si2168_config, align 4
  %si2165_pdata = alloca %struct.si2165_platform_data, align 4
  %si2157_config = alloca %struct.si2157_config, align 4
  %ts2020_config = alloca %struct.ts2020_config, align 4
  %m88ds3103_pdata = alloca %struct.m88ds3103_platform_data, align 4
  %m88rs6000t_config = alloca %struct.m88rs6000t_config, align 4
  %a8293_pdata = alloca %struct.a8293_platform_data, align 4
  %info = alloca %struct.i2c_board_info, align 4
  %adapter = alloca ptr, align 4
  %cfg = alloca %struct.xc2028_config, align 4
  %cfg799 = alloca %struct.xc2028_config, align 4
  %cfg976 = alloca %struct.xc2028_config, align 4
  %cfg1148 = alloca %struct.xc2028_config, align 4
  %cfg1229 = alloca %struct.xc4000_config, align 8
  %tda10071_pdata = alloca %struct.tda10071_platform_data, align 4
  %a8293_pdata2554 = alloca %struct.a8293_platform_data, align 4
  %tda10071_pdata2662 = alloca %struct.tda10071_platform_data, align 4
  %a8293_pdata2663 = alloca %struct.a8293_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dib7000p_ops) #7
  %0 = call ptr @memset(ptr %dib7000p_ops, i32 255, i32 64)
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config) #7
  %3 = call ptr @memset(ptr %si2168_config, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %si2165_pdata) #7
  %4 = call ptr @memset(ptr %si2165_pdata, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #7
  %5 = call ptr @memset(ptr %si2157_config, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ts2020_config) #7
  %6 = call ptr @memset(ptr %ts2020_config, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %m88ds3103_pdata) #7
  %7 = call ptr @memset(ptr %m88ds3103_pdata, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m88rs6000t_config) #7
  %8 = ptrtoint ptr %m88rs6000t_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %m88rs6000t_config, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a8293_pdata) #7
  %9 = ptrtoint ptr %a8293_pdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %a8293_pdata, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #7
  %10 = call ptr @memset(ptr %info, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter) #7
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter, align 4, !annotation !640
  %frontends = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3
  %call = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup3779_crit_edge, label %if.end

entry.cleanup3779_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup3779

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 19
  %dvb = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %dvb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %dvb, align 8
  %gate = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %gate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %gate, align 4
  %gate_ctrl = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 33
  %14 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cx23885_dvb_gate_ctrl, ptr %gate_ctrl, align 4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 18
  %15 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %board, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end3671 [
    i32 3, label %sw.bb
    i32 18, label %if.end.sw.bb50_crit_edge
    i32 19, label %if.end.sw.bb50_crit_edge5192
    i32 20, label %if.end.sw.bb120_crit_edge
    i32 36, label %if.end.sw.bb120_crit_edge5193
    i32 2, label %sw.bb188
    i32 1, label %sw.bb342
    i32 4, label %sw.bb404
    i32 5, label %sw.bb466
    i32 6, label %sw.bb530
    i32 7, label %if.end.sw.bb603_crit_edge
    i32 8, label %if.end.sw.bb603_crit_edge5194
    i32 21, label %sw.bb696
    i32 9, label %sw.bb760
    i32 10, label %sw.bb845
    i32 11, label %sw.bb939
    i32 44, label %sw.bb1020
    i32 12, label %if.end.sw.bb1113_crit_edge
    i32 13, label %if.end.sw.bb1113_crit_edge5195
    i32 25, label %if.end.sw.bb1113_crit_edge5196
    i32 31, label %sw.bb1194
    i32 14, label %sw.bb1274
    i32 41, label %if.end.sw.bb1312_crit_edge
    i32 40, label %if.end.sw.bb1312_crit_edge5197
    i32 15, label %sw.bb1373
    i32 16, label %sw.bb1439
    i32 17, label %sw.bb1469
    i32 22, label %sw.bb1670
    i32 33, label %sw.bb1736
    i32 23, label %sw.bb1802
    i32 24, label %sw.bb1868
    i32 26, label %sw.bb1938
    i32 27, label %sw.bb2002
    i32 30, label %sw.bb2129
    i32 34, label %sw.bb2289
    i32 35, label %sw.bb2422
    i32 37, label %sw.bb2484
    i32 38, label %sw.bb2553
    i32 53, label %sw.bb2661
    i32 45, label %if.end.sw.bb2712_crit_edge
    i32 49, label %if.end.sw.bb2712_crit_edge5198
    i32 46, label %if.end.sw.bb2834_crit_edge
    i32 48, label %if.end.sw.bb2834_crit_edge5199
    i32 47, label %sw.bb2887
    i32 50, label %sw.bb2956
    i32 51, label %sw.bb3042
    i32 59, label %if.end.sw.bb3100_crit_edge
    i32 52, label %if.end.sw.bb3100_crit_edge5200
    i32 56, label %if.end.do.end3263_crit_edge
    i32 60, label %if.end.do.end3263_crit_edge5201
    i32 57, label %if.end.do.end3417_crit_edge
    i32 61, label %if.end.do.end3417_crit_edge5202
    i32 58, label %sw.bb3589
  ]

if.end.do.end3417_crit_edge5202:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3417

if.end.do.end3417_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3417

if.end.do.end3263_crit_edge5201:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3263

if.end.do.end3263_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3263

if.end.sw.bb3100_crit_edge5200:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3100

if.end.sw.bb3100_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3100

if.end.sw.bb2834_crit_edge5199:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2834

if.end.sw.bb2834_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2834

if.end.sw.bb2712_crit_edge5198:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2712

if.end.sw.bb2712_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2712

if.end.sw.bb1312_crit_edge5197:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1312

if.end.sw.bb1312_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1312

if.end.sw.bb1113_crit_edge5196:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1113

if.end.sw.bb1113_crit_edge5195:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1113

if.end.sw.bb1113_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1113

if.end.sw.bb603_crit_edge5194:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb603

if.end.sw.bb603_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb603

if.end.sw.bb120_crit_edge5193:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb120

if.end.sw.bb120_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb120

if.end.sw.bb50_crit_edge5192:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb50

if.end.sw.bb50_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb50

sw.bb:                                            ; preds = %if.end
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cond.end, label %sw.bb.if.then10_crit_edge

sw.bb.if.then10_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

cond.end:                                         ; preds = %sw.bb
  %call7 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #7
  %call8 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end, label %cond.end.if.then10_crit_edge

cond.end.if.then10_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %cond.end.if.then10_crit_edge, %sw.bb.if.then10_crit_edge
  %cond4768 = phi ptr [ %call8, %cond.end.if.then10_crit_edge ], [ %call5, %sw.bb.if.then10_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call11 = tail call ptr %cond4768(ptr noundef nonnull @hauppauge_generic_config, ptr noundef %i2c_adap) #7
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %if.then12, label %if.end22

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #7
  br label %if.end15.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %do.end, %if.then12
  %frontend4770 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %frontend4770 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %frontend4770, align 4
  br label %sw.epilog3676

if.end22:                                         ; preds = %if.then10
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call11, ptr %frontend, align 4
  %call25 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %cond.end31, label %if.end22.if.then34_crit_edge

if.end22.if.then34_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

cond.end31:                                       ; preds = %if.end22
  %call29 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23) #7
  %call30 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #7
  %tobool33.not = icmp eq ptr %call30, null
  br i1 %tobool33.not, label %do.end45, label %cond.end31.if.then34_crit_edge

cond.end31.if.then34_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then34:                                        ; preds = %cond.end31.if.then34_crit_edge, %if.end22.if.then34_crit_edge
  %cond324774 = phi ptr [ %call30, %cond.end31.if.then34_crit_edge ], [ %call25, %if.end22.if.then34_crit_edge ]
  %20 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %frontend, align 4
  %call38 = tail call ptr %cond324774(ptr noundef %21, ptr noundef %i2c_adap, ptr noundef nonnull @hauppauge_generic_tunerconfig, i16 noundef zeroext 0) #7
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %if.then40, label %if.then34.sw.epilog3676_crit_edge

if.then34.sw.epilog3676_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then40:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.22) #7
  br label %sw.epilog3676

do.end45:                                         ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %sw.epilog3676

sw.bb50:                                          ; preds = %if.end.sw.bb50_crit_edge, %if.end.sw.bb50_crit_edge5192
  %call55 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #7
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %cond.end61, label %sw.bb50.if.then64_crit_edge

sw.bb50.if.then64_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64

cond.end61:                                       ; preds = %sw.bb50
  %call59 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.28) #7
  %call60 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #7
  %tobool63.not = icmp eq ptr %call60, null
  br i1 %tobool63.not, label %do.end73, label %cond.end61.if.then64_crit_edge

cond.end61.if.then64_crit_edge:                   ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64

if.then64:                                        ; preds = %cond.end61.if.then64_crit_edge, %sw.bb50.if.then64_crit_edge
  %cond624777 = phi ptr [ %call60, %cond.end61.if.then64_crit_edge ], [ %call55, %sw.bb50.if.then64_crit_edge ]
  %i2c_adap65 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call66 = tail call ptr %cond624777(ptr noundef nonnull @hauppauge_lgdt3305_config, ptr noundef %i2c_adap65) #7
  %cmp67 = icmp eq ptr %call66, null
  br i1 %cmp67, label %if.then68, label %if.end84

if.then68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.27) #7
  br label %if.end76.thread

do.end73:                                         ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %if.end76.thread

if.end76.thread:                                  ; preds = %do.end73, %if.then68
  %frontend794779 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %frontend794779 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %frontend794779, align 4
  br label %sw.epilog3676

if.end84:                                         ; preds = %if.then64
  %frontend79 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %frontend79 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call66, ptr %frontend79, align 4
  %call87 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %cond.end93, label %if.end84.if.then96_crit_edge

if.end84.if.then96_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

cond.end93:                                       ; preds = %if.end84
  %call91 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #7
  %call92 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool95.not = icmp eq ptr %call92, null
  br i1 %tobool95.not, label %do.end109, label %cond.end93.if.then96_crit_edge

cond.end93.if.then96_crit_edge:                   ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

if.then96:                                        ; preds = %cond.end93.if.then96_crit_edge, %if.end84.if.then96_crit_edge
  %cond944783 = phi ptr [ %call92, %cond.end93.if.then96_crit_edge ], [ %call87, %if.end84.if.then96_crit_edge ]
  %24 = ptrtoint ptr %frontend79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %frontend79, align 4
  %i2c_adap101 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call102 = tail call ptr %cond944783(ptr noundef %25, i8 noundef zeroext 96, ptr noundef %i2c_adap101, ptr noundef nonnull @hauppauge_hvr127x_config) #7
  %cmp103 = icmp eq ptr %call102, null
  br i1 %cmp103, label %if.then104, label %if.then96.if.end112_crit_edge

if.then96.if.end112_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then104:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #7
  br label %if.end112

do.end109:                                        ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #9
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %if.then104, %if.then96.if.end112_crit_edge
  %26 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %board, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %27)
  %cmp115 = icmp eq i32 %27, 19
  br i1 %cmp115, label %if.then116, label %if.end112.sw.epilog3676_crit_edge

if.end112.sw.epilog3676_crit_edge:                ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %frontend79 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %frontend79, align 4
  %set_frontend.i = getelementptr inbounds %struct.dvb_frontend, ptr %29, i32 0, i32 1, i32 12
  %30 = ptrtoint ptr %set_frontend.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_frontend.i, align 4
  %set_frontend1.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 40
  %32 = ptrtoint ptr %set_frontend1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %set_frontend1.i, align 4
  store ptr @cx23885_dvb_set_frontend, ptr %set_frontend.i, align 4
  br label %sw.epilog3676

sw.bb120:                                         ; preds = %if.end.sw.bb120_crit_edge, %if.end.sw.bb120_crit_edge5193
  %call125 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #7
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %cond.end131, label %sw.bb120.if.then134_crit_edge

sw.bb120.if.then134_crit_edge:                    ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then134

cond.end131:                                      ; preds = %sw.bb120
  %call129 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.38) #7
  %call130 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #7
  %tobool133.not = icmp eq ptr %call130, null
  br i1 %tobool133.not, label %do.end143, label %cond.end131.if.then134_crit_edge

cond.end131.if.then134_crit_edge:                 ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then134

if.then134:                                       ; preds = %cond.end131.if.then134_crit_edge, %sw.bb120.if.then134_crit_edge
  %cond1324786 = phi ptr [ %call130, %cond.end131.if.then134_crit_edge ], [ %call125, %sw.bb120.if.then134_crit_edge ]
  %i2c_adap135 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call136 = tail call ptr %cond1324786(ptr noundef nonnull @hcw_s5h1411_config, ptr noundef %i2c_adap135) #7
  %cmp137 = icmp eq ptr %call136, null
  br i1 %cmp137, label %if.then138, label %if.end154

if.then138:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.37) #7
  br label %if.end146.thread

do.end143:                                        ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #9
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  br label %if.end146.thread

if.end146.thread:                                 ; preds = %do.end143, %if.then138
  %frontend1494788 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %frontend1494788 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %frontend1494788, align 4
  br label %sw.epilog3676

if.end154:                                        ; preds = %if.then134
  %frontend149 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %frontend149 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call136, ptr %frontend149, align 4
  %call157 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %cond.end163, label %if.end154.if.then166_crit_edge

if.end154.if.then166_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then166

cond.end163:                                      ; preds = %if.end154
  %call161 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #7
  %call162 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool165.not = icmp eq ptr %call162, null
  br i1 %tobool165.not, label %do.end179, label %cond.end163.if.then166_crit_edge

cond.end163.if.then166_crit_edge:                 ; preds = %cond.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then166

if.then166:                                       ; preds = %cond.end163.if.then166_crit_edge, %if.end154.if.then166_crit_edge
  %cond1644792 = phi ptr [ %call162, %cond.end163.if.then166_crit_edge ], [ %call157, %if.end154.if.then166_crit_edge ]
  %35 = ptrtoint ptr %frontend149 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %frontend149, align 4
  %i2c_adap171 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call172 = tail call ptr %cond1644792(ptr noundef %36, i8 noundef zeroext 96, ptr noundef %i2c_adap171, ptr noundef nonnull @hauppauge_tda18271_config) #7
  %cmp173 = icmp eq ptr %call172, null
  br i1 %cmp173, label %if.then174, label %if.then166.if.end182_crit_edge

if.then166.if.end182_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end182

if.then174:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #7
  br label %if.end182

do.end179:                                        ; preds = %cond.end163
  call void @__sanitizer_cov_trace_pc() #9
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %if.end182

if.end182:                                        ; preds = %do.end179, %if.then174, %if.then166.if.end182_crit_edge
  %analog_fe = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 20, i32 35
  %i2c_adap186 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call187 = tail call ptr @tda18271_attach(ptr noundef %analog_fe, i8 noundef zeroext 96, ptr noundef %i2c_adap186, ptr noundef nonnull @hauppauge_tda18271_config) #7
  br label %sw.epilog3676

sw.bb188:                                         ; preds = %if.end
  %37 = load i32, ptr @alt_tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cond3802 = icmp eq i32 %37, 1
  %call194 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool195.not = icmp eq ptr %call194, null
  br i1 %cond3802, label %sw.bb191, label %sw.default

sw.bb191:                                         ; preds = %sw.bb188
  br i1 %tobool195.not, label %cond.end200, label %sw.bb191.if.then203_crit_edge

sw.bb191.if.then203_crit_edge:                    ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then203

cond.end200:                                      ; preds = %sw.bb191
  %call198 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #7
  %call199 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool202.not = icmp eq ptr %call199, null
  br i1 %tobool202.not, label %do.end212, label %cond.end200.if.then203_crit_edge

cond.end200.if.then203_crit_edge:                 ; preds = %cond.end200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then203

if.then203:                                       ; preds = %cond.end200.if.then203_crit_edge, %sw.bb191.if.then203_crit_edge
  %cond2014795 = phi ptr [ %call199, %cond.end200.if.then203_crit_edge ], [ %call194, %sw.bb191.if.then203_crit_edge ]
  %i2c_adap204 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call205 = tail call ptr %cond2014795(ptr noundef nonnull @hauppauge_ezqam_config, ptr noundef %i2c_adap204) #7
  %cmp206 = icmp eq ptr %call205, null
  br i1 %cmp206, label %if.then207, label %if.end223

if.then207:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #7
  br label %if.end215.thread

do.end212:                                        ; preds = %cond.end200
  call void @__sanitizer_cov_trace_pc() #9
  %call214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %if.end215.thread

if.end215.thread:                                 ; preds = %do.end212, %if.then207
  %frontend2184797 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %frontend2184797 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %frontend2184797, align 4
  br label %sw.epilog3676

if.end223:                                        ; preds = %if.then203
  %frontend218 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %frontend218 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call205, ptr %frontend218, align 4
  %call226 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #7
  %tobool227.not = icmp eq ptr %call226, null
  br i1 %tobool227.not, label %cond.end232, label %if.end223.if.then235_crit_edge

if.end223.if.then235_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then235

cond.end232:                                      ; preds = %if.end223
  %call230 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.47) #7
  %call231 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #7
  %tobool234.not = icmp eq ptr %call231, null
  br i1 %tobool234.not, label %do.end248, label %cond.end232.if.then235_crit_edge

cond.end232.if.then235_crit_edge:                 ; preds = %cond.end232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then235

if.then235:                                       ; preds = %cond.end232.if.then235_crit_edge, %if.end223.if.then235_crit_edge
  %cond2334801 = phi ptr [ %call231, %cond.end232.if.then235_crit_edge ], [ %call226, %if.end223.if.then235_crit_edge ]
  %40 = ptrtoint ptr %frontend218 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %frontend218, align 4
  %i2c_adap240 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call241 = tail call ptr %cond2334801(ptr noundef %41, ptr noundef %i2c_adap240, i8 noundef zeroext 66, ptr noundef nonnull @tda829x_no_probe) #7
  %cmp242 = icmp eq ptr %call241, null
  br i1 %cmp242, label %if.then243, label %if.then235.if.end251_crit_edge

if.then235.if.end251_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251

if.then243:                                       ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.46) #7
  br label %if.end251

do.end248:                                        ; preds = %cond.end232
  call void @__sanitizer_cov_trace_pc() #9
  %call250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #10
  br label %if.end251

if.end251:                                        ; preds = %do.end248, %if.then243, %if.then235.if.end251_crit_edge
  %call255 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool256.not = icmp eq ptr %call255, null
  br i1 %tobool256.not, label %cond.end261, label %if.end251.if.then264_crit_edge

if.end251.if.then264_crit_edge:                   ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then264

cond.end261:                                      ; preds = %if.end251
  %call259 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #7
  %call260 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool263.not = icmp eq ptr %call260, null
  br i1 %tobool263.not, label %do.end277, label %cond.end261.if.then264_crit_edge

cond.end261.if.then264_crit_edge:                 ; preds = %cond.end261
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then264

if.then264:                                       ; preds = %cond.end261.if.then264_crit_edge, %if.end251.if.then264_crit_edge
  %cond2624804 = phi ptr [ %call260, %cond.end261.if.then264_crit_edge ], [ %call255, %if.end251.if.then264_crit_edge ]
  %42 = ptrtoint ptr %frontend218 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %frontend218, align 4
  %i2c_adap269 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call270 = tail call ptr %cond2624804(ptr noundef %43, i8 noundef zeroext 96, ptr noundef %i2c_adap269, ptr noundef nonnull @hauppauge_tda18271_config) #7
  %cmp271 = icmp eq ptr %call270, null
  br i1 %cmp271, label %if.then272, label %if.then264.sw.epilog3676_crit_edge

if.then264.sw.epilog3676_crit_edge:               ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then272:                                       ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #7
  br label %sw.epilog3676

do.end277:                                        ; preds = %cond.end261
  call void @__sanitizer_cov_trace_pc() #9
  %call279 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %sw.epilog3676

sw.default:                                       ; preds = %sw.bb188
  br i1 %tobool195.not, label %cond.end291, label %sw.default.if.then294_crit_edge

sw.default.if.then294_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then294

cond.end291:                                      ; preds = %sw.default
  %call289 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #7
  %call290 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool293.not = icmp eq ptr %call290, null
  br i1 %tobool293.not, label %do.end303, label %cond.end291.if.then294_crit_edge

cond.end291.if.then294_crit_edge:                 ; preds = %cond.end291
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then294

if.then294:                                       ; preds = %cond.end291.if.then294_crit_edge, %sw.default.if.then294_crit_edge
  %cond2924807 = phi ptr [ %call290, %cond.end291.if.then294_crit_edge ], [ %call194, %sw.default.if.then294_crit_edge ]
  %i2c_adap295 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call296 = tail call ptr %cond2924807(ptr noundef nonnull @hauppauge_generic_config, ptr noundef %i2c_adap295) #7
  %cmp297 = icmp eq ptr %call296, null
  br i1 %cmp297, label %if.then298, label %if.end314

if.then298:                                       ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #7
  br label %if.end306.thread

do.end303:                                        ; preds = %cond.end291
  call void @__sanitizer_cov_trace_pc() #9
  %call305 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %if.end306.thread

if.end306.thread:                                 ; preds = %do.end303, %if.then298
  %frontend3094809 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %frontend3094809 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %frontend3094809, align 4
  br label %sw.epilog3676

if.end314:                                        ; preds = %if.then294
  %frontend309 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %frontend309 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call296, ptr %frontend309, align 4
  %call317 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #7
  %tobool318.not = icmp eq ptr %call317, null
  br i1 %tobool318.not, label %cond.end323, label %if.end314.if.then326_crit_edge

if.end314.if.then326_crit_edge:                   ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then326

cond.end323:                                      ; preds = %if.end314
  %call321 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23) #7
  %call322 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #7
  %tobool325.not = icmp eq ptr %call322, null
  br i1 %tobool325.not, label %do.end337, label %cond.end323.if.then326_crit_edge

cond.end323.if.then326_crit_edge:                 ; preds = %cond.end323
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then326

if.then326:                                       ; preds = %cond.end323.if.then326_crit_edge, %if.end314.if.then326_crit_edge
  %cond3244813 = phi ptr [ %call322, %cond.end323.if.then326_crit_edge ], [ %call317, %if.end314.if.then326_crit_edge ]
  %46 = ptrtoint ptr %frontend309 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %frontend309, align 4
  %call330 = tail call ptr %cond3244813(ptr noundef %47, ptr noundef %i2c_adap295, ptr noundef nonnull @hauppauge_generic_tunerconfig, i16 noundef zeroext 0) #7
  %cmp331 = icmp eq ptr %call330, null
  br i1 %cmp331, label %if.then332, label %if.then326.sw.epilog3676_crit_edge

if.then326.sw.epilog3676_crit_edge:               ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then332:                                       ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.22) #7
  br label %sw.epilog3676

do.end337:                                        ; preds = %cond.end323
  call void @__sanitizer_cov_trace_pc() #9
  %call339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %sw.epilog3676

sw.bb342:                                         ; preds = %if.end
  %call347 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool348.not = icmp eq ptr %call347, null
  br i1 %tobool348.not, label %cond.end353, label %sw.bb342.if.then356_crit_edge

sw.bb342.if.then356_crit_edge:                    ; preds = %sw.bb342
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then356

cond.end353:                                      ; preds = %sw.bb342
  %call351 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #7
  %call352 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool355.not = icmp eq ptr %call352, null
  br i1 %tobool355.not, label %do.end365, label %cond.end353.if.then356_crit_edge

cond.end353.if.then356_crit_edge:                 ; preds = %cond.end353
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then356

if.then356:                                       ; preds = %cond.end353.if.then356_crit_edge, %sw.bb342.if.then356_crit_edge
  %cond3544816 = phi ptr [ %call352, %cond.end353.if.then356_crit_edge ], [ %call347, %sw.bb342.if.then356_crit_edge ]
  %i2c_adap357 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call358 = tail call ptr %cond3544816(ptr noundef nonnull @hauppauge_hvr1800lp_config, ptr noundef %i2c_adap357) #7
  %cmp359 = icmp eq ptr %call358, null
  br i1 %cmp359, label %if.then360, label %if.end376

if.then360:                                       ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #7
  br label %if.end368.thread

do.end365:                                        ; preds = %cond.end353
  call void @__sanitizer_cov_trace_pc() #9
  %call367 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %if.end368.thread

if.end368.thread:                                 ; preds = %do.end365, %if.then360
  %frontend3714818 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %frontend3714818 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %frontend3714818, align 4
  br label %sw.epilog3676

if.end376:                                        ; preds = %if.then356
  %frontend371 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %frontend371 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call358, ptr %frontend371, align 4
  %call379 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #7
  %tobool380.not = icmp eq ptr %call379, null
  br i1 %tobool380.not, label %cond.end385, label %if.end376.if.then388_crit_edge

if.end376.if.then388_crit_edge:                   ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then388

cond.end385:                                      ; preds = %if.end376
  %call383 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23) #7
  %call384 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #7
  %tobool387.not = icmp eq ptr %call384, null
  br i1 %tobool387.not, label %do.end399, label %cond.end385.if.then388_crit_edge

cond.end385.if.then388_crit_edge:                 ; preds = %cond.end385
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then388

if.then388:                                       ; preds = %cond.end385.if.then388_crit_edge, %if.end376.if.then388_crit_edge
  %cond3864822 = phi ptr [ %call384, %cond.end385.if.then388_crit_edge ], [ %call379, %if.end376.if.then388_crit_edge ]
  %50 = ptrtoint ptr %frontend371 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %frontend371, align 4
  %call392 = tail call ptr %cond3864822(ptr noundef %51, ptr noundef %i2c_adap357, ptr noundef nonnull @hauppauge_generic_tunerconfig, i16 noundef zeroext 0) #7
  %cmp393 = icmp eq ptr %call392, null
  br i1 %cmp393, label %if.then394, label %if.then388.sw.epilog3676_crit_edge

if.then388.sw.epilog3676_crit_edge:               ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then394:                                       ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.22) #7
  br label %sw.epilog3676

do.end399:                                        ; preds = %cond.end385
  call void @__sanitizer_cov_trace_pc() #9
  %call401 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %sw.epilog3676

sw.bb404:                                         ; preds = %if.end
  %call409 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.61) #7
  %tobool410.not = icmp eq ptr %call409, null
  br i1 %tobool410.not, label %cond.end415, label %sw.bb404.if.then418_crit_edge

sw.bb404.if.then418_crit_edge:                    ; preds = %sw.bb404
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then418

cond.end415:                                      ; preds = %sw.bb404
  %call413 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.62) #7
  %call414 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.61) #7
  %tobool417.not = icmp eq ptr %call414, null
  br i1 %tobool417.not, label %do.end427, label %cond.end415.if.then418_crit_edge

cond.end415.if.then418_crit_edge:                 ; preds = %cond.end415
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then418

if.then418:                                       ; preds = %cond.end415.if.then418_crit_edge, %sw.bb404.if.then418_crit_edge
  %cond4164825 = phi ptr [ %call414, %cond.end415.if.then418_crit_edge ], [ %call409, %sw.bb404.if.then418_crit_edge ]
  %i2c_adap419 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call420 = tail call ptr %cond4164825(ptr noundef nonnull @fusionhdtv_5_express, i8 noundef zeroext 14, ptr noundef %i2c_adap419) #7
  %cmp421 = icmp eq ptr %call420, null
  br i1 %cmp421, label %if.then422, label %if.end438

if.then422:                                       ; preds = %if.then418
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.61) #7
  br label %if.end430.thread

do.end427:                                        ; preds = %cond.end415
  call void @__sanitizer_cov_trace_pc() #9
  %call429 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #10
  br label %if.end430.thread

if.end430.thread:                                 ; preds = %do.end427, %if.then422
  %frontend4334827 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %frontend4334827 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %frontend4334827, align 4
  br label %sw.epilog3676

if.end438:                                        ; preds = %if.then418
  %frontend433 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %frontend433 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call420, ptr %frontend433, align 4
  %call441 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.66) #7
  %tobool442.not = icmp eq ptr %call441, null
  br i1 %tobool442.not, label %cond.end447, label %if.end438.if.then450_crit_edge

if.end438.if.then450_crit_edge:                   ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then450

cond.end447:                                      ; preds = %if.end438
  %call445 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.67) #7
  %call446 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.66) #7
  %tobool449.not = icmp eq ptr %call446, null
  br i1 %tobool449.not, label %do.end461, label %cond.end447.if.then450_crit_edge

cond.end447.if.then450_crit_edge:                 ; preds = %cond.end447
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then450

if.then450:                                       ; preds = %cond.end447.if.then450_crit_edge, %if.end438.if.then450_crit_edge
  %cond4484831 = phi ptr [ %call446, %cond.end447.if.then450_crit_edge ], [ %call441, %if.end438.if.then450_crit_edge ]
  %54 = ptrtoint ptr %frontend433 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %frontend433, align 4
  %call454 = tail call ptr %cond4484831(ptr noundef %55, ptr noundef %i2c_adap419, i8 noundef zeroext 97, i32 noundef 64) #7
  %cmp455 = icmp eq ptr %call454, null
  br i1 %cmp455, label %if.then456, label %if.then450.sw.epilog3676_crit_edge

if.then450.sw.epilog3676_crit_edge:               ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then456:                                       ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.66) #7
  br label %sw.epilog3676

do.end461:                                        ; preds = %cond.end447
  call void @__sanitizer_cov_trace_pc() #9
  %call463 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #10
  br label %sw.epilog3676

sw.bb466:                                         ; preds = %if.end
  %call471 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool472.not = icmp eq ptr %call471, null
  br i1 %tobool472.not, label %cond.end477, label %sw.bb466.if.then480_crit_edge

sw.bb466.if.then480_crit_edge:                    ; preds = %sw.bb466
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then480

cond.end477:                                      ; preds = %sw.bb466
  %call475 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #7
  %call476 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool479.not = icmp eq ptr %call476, null
  br i1 %tobool479.not, label %do.end491, label %cond.end477.if.then480_crit_edge

cond.end477.if.then480_crit_edge:                 ; preds = %cond.end477
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then480

if.then480:                                       ; preds = %cond.end477.if.then480_crit_edge, %sw.bb466.if.then480_crit_edge
  %cond4784834 = phi ptr [ %call476, %cond.end477.if.then480_crit_edge ], [ %call471, %sw.bb466.if.then480_crit_edge ]
  %i2c_adap483 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call484 = tail call ptr %cond4784834(ptr noundef nonnull @hauppauge_hvr1500q_config, ptr noundef %i2c_adap483) #7
  %cmp485 = icmp eq ptr %call484, null
  br i1 %cmp485, label %if.then486, label %if.end502

if.then486:                                       ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #7
  br label %if.end494.thread

do.end491:                                        ; preds = %cond.end477
  call void @__sanitizer_cov_trace_pc() #9
  %call493 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %if.end494.thread

if.end494.thread:                                 ; preds = %do.end491, %if.then486
  %frontend4974836 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %frontend4974836 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %frontend4974836, align 4
  br label %sw.epilog3676

if.end502:                                        ; preds = %if.then480
  %frontend497 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %frontend497 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call484, ptr %frontend497, align 4
  %call505 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool506.not = icmp eq ptr %call505, null
  br i1 %tobool506.not, label %cond.end511, label %if.end502.if.then514_crit_edge

if.end502.if.then514_crit_edge:                   ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then514

cond.end511:                                      ; preds = %if.end502
  %call509 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.74) #7
  %call510 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool513.not = icmp eq ptr %call510, null
  br i1 %tobool513.not, label %do.end525, label %cond.end511.if.then514_crit_edge

cond.end511.if.then514_crit_edge:                 ; preds = %cond.end511
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then514

if.then514:                                       ; preds = %cond.end511.if.then514_crit_edge, %if.end502.if.then514_crit_edge
  %cond5124840 = phi ptr [ %call510, %cond.end511.if.then514_crit_edge ], [ %call505, %if.end502.if.then514_crit_edge ]
  %58 = ptrtoint ptr %frontend497 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %frontend497, align 4
  %i2c_adap517 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call518 = tail call ptr %cond5124840(ptr noundef %59, ptr noundef %i2c_adap517, ptr noundef nonnull @hauppauge_hvr1500q_tunerconfig) #7
  %cmp519 = icmp eq ptr %call518, null
  br i1 %cmp519, label %if.then520, label %if.then514.sw.epilog3676_crit_edge

if.then514.sw.epilog3676_crit_edge:               ; preds = %if.then514
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then520:                                       ; preds = %if.then514
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.73) #7
  br label %sw.epilog3676

do.end525:                                        ; preds = %cond.end511
  call void @__sanitizer_cov_trace_pc() #9
  %call527 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #10
  br label %sw.epilog3676

sw.bb530:                                         ; preds = %if.end
  %call535 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool536.not = icmp eq ptr %call535, null
  br i1 %tobool536.not, label %cond.end541, label %sw.bb530.if.then544_crit_edge

sw.bb530.if.then544_crit_edge:                    ; preds = %sw.bb530
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then544

cond.end541:                                      ; preds = %sw.bb530
  %call539 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #7
  %call540 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool543.not = icmp eq ptr %call540, null
  br i1 %tobool543.not, label %do.end555, label %cond.end541.if.then544_crit_edge

cond.end541.if.then544_crit_edge:                 ; preds = %cond.end541
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then544

if.then544:                                       ; preds = %cond.end541.if.then544_crit_edge, %sw.bb530.if.then544_crit_edge
  %cond5424843 = phi ptr [ %call540, %cond.end541.if.then544_crit_edge ], [ %call535, %sw.bb530.if.then544_crit_edge ]
  %i2c_adap547 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call548 = tail call ptr %cond5424843(ptr noundef nonnull @hauppauge_hvr1500_config, ptr noundef %i2c_adap547) #7
  %cmp549 = icmp eq ptr %call548, null
  br i1 %cmp549, label %if.then550, label %if.then565

if.then550:                                       ; preds = %if.then544
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #7
  br label %if.end558.thread

do.end555:                                        ; preds = %cond.end541
  call void @__sanitizer_cov_trace_pc() #9
  %call557 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %if.end558.thread

if.end558.thread:                                 ; preds = %do.end555, %if.then550
  %frontend5614845 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %frontend5614845 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %frontend5614845, align 4
  br label %sw.epilog3676

if.then565:                                       ; preds = %if.then544
  %frontend561 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %frontend561 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call548, ptr %frontend561, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #7
  %62 = getelementptr inbounds i8, ptr %cfg, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %62, align 4
  %i2c_adap567 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %64 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %i2c_adap567, ptr %cfg, align 4
  %i2c_addr = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 1
  %65 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 97, ptr %i2c_addr, align 4
  %ctrl = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 2
  %66 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %ctrl, align 4
  %call570 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.81) #7
  %tobool571.not = icmp eq ptr %call570, null
  br i1 %tobool571.not, label %cond.end576, label %if.then565.if.then579_crit_edge

if.then565.if.then579_crit_edge:                  ; preds = %if.then565
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then579

cond.end576:                                      ; preds = %if.then565
  %call574 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.82) #7
  %call575 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.81) #7
  %tobool578.not = icmp eq ptr %call575, null
  br i1 %tobool578.not, label %do.end589, label %cond.end576.if.then579_crit_edge

cond.end576.if.then579_crit_edge:                 ; preds = %cond.end576
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then579

if.then579:                                       ; preds = %cond.end576.if.then579_crit_edge, %if.then565.if.then579_crit_edge
  %cond5774849 = phi ptr [ %call575, %cond.end576.if.then579_crit_edge ], [ %call570, %if.then565.if.then579_crit_edge ]
  %67 = ptrtoint ptr %frontend561 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %frontend561, align 4
  %call582 = call ptr %cond5774849(ptr noundef %68, ptr noundef nonnull %cfg) #7
  %cmp583 = icmp eq ptr %call582, null
  br i1 %cmp583, label %if.then584, label %land.lhs.true

if.then584:                                       ; preds = %if.then579
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.81) #7
  br label %if.end601

do.end589:                                        ; preds = %cond.end576
  call void @__sanitizer_cov_trace_pc() #9
  %call591 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #10
  br label %if.end601

land.lhs.true:                                    ; preds = %if.then579
  %set_config = getelementptr inbounds %struct.dvb_frontend, ptr %call582, i32 0, i32 1, i32 32, i32 8
  %69 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_config, align 4
  %cmp595.not = icmp eq ptr %70, null
  br i1 %cmp595.not, label %land.lhs.true.if.end601_crit_edge, label %if.then596

land.lhs.true.if.end601_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end601

if.then596:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call600 = call i32 %70(ptr noundef nonnull %call582, ptr noundef nonnull @dvb_register.ctl) #7
  br label %if.end601

if.end601:                                        ; preds = %if.then596, %land.lhs.true.if.end601_crit_edge, %do.end589, %if.then584
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #7
  br label %sw.epilog3676

sw.bb603:                                         ; preds = %if.end.sw.bb603_crit_edge, %if.end.sw.bb603_crit_edge5194
  %call608 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.86) #7
  %tobool609.not = icmp eq ptr %call608, null
  br i1 %tobool609.not, label %cond.end614, label %sw.bb603.if.then617_crit_edge

sw.bb603.if.then617_crit_edge:                    ; preds = %sw.bb603
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then617

cond.end614:                                      ; preds = %sw.bb603
  %call612 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.87) #7
  %call613 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.86) #7
  %tobool616.not = icmp eq ptr %call613, null
  br i1 %tobool616.not, label %do.end626, label %cond.end614.if.then617_crit_edge

cond.end614.if.then617_crit_edge:                 ; preds = %cond.end614
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then617

if.then617:                                       ; preds = %cond.end614.if.then617_crit_edge, %sw.bb603.if.then617_crit_edge
  %cond6154854 = phi ptr [ %call613, %cond.end614.if.then617_crit_edge ], [ %call608, %sw.bb603.if.then617_crit_edge ]
  %i2c_adap618 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call619 = tail call ptr %cond6154854(ptr noundef nonnull @hauppauge_hvr1200_config, ptr noundef %i2c_adap618) #7
  %cmp620 = icmp eq ptr %call619, null
  br i1 %cmp620, label %if.then621, label %if.end637

if.then621:                                       ; preds = %if.then617
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.86) #7
  br label %if.end629.thread

do.end626:                                        ; preds = %cond.end614
  call void @__sanitizer_cov_trace_pc() #9
  %call628 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #10
  br label %if.end629.thread

if.end629.thread:                                 ; preds = %do.end626, %if.then621
  %frontend6324856 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %frontend6324856 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %frontend6324856, align 4
  br label %sw.epilog3676

if.end637:                                        ; preds = %if.then617
  %frontend632 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %frontend632 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call619, ptr %frontend632, align 4
  %call640 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #7
  %tobool641.not = icmp eq ptr %call640, null
  br i1 %tobool641.not, label %cond.end646, label %if.end637.if.then649_crit_edge

if.end637.if.then649_crit_edge:                   ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then649

cond.end646:                                      ; preds = %if.end637
  %call644 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.47) #7
  %call645 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.46) #7
  %tobool648.not = icmp eq ptr %call645, null
  br i1 %tobool648.not, label %do.end662, label %cond.end646.if.then649_crit_edge

cond.end646.if.then649_crit_edge:                 ; preds = %cond.end646
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then649

if.then649:                                       ; preds = %cond.end646.if.then649_crit_edge, %if.end637.if.then649_crit_edge
  %cond6474860 = phi ptr [ %call645, %cond.end646.if.then649_crit_edge ], [ %call640, %if.end637.if.then649_crit_edge ]
  %73 = ptrtoint ptr %frontend632 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %frontend632, align 4
  %i2c_adap654 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call655 = tail call ptr %cond6474860(ptr noundef %74, ptr noundef %i2c_adap654, i8 noundef zeroext 66, ptr noundef nonnull @tda829x_no_probe) #7
  %cmp656 = icmp eq ptr %call655, null
  br i1 %cmp656, label %if.then657, label %if.then649.if.end665_crit_edge

if.then649.if.end665_crit_edge:                   ; preds = %if.then649
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end665

if.then657:                                       ; preds = %if.then649
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.46) #7
  br label %if.end665

do.end662:                                        ; preds = %cond.end646
  call void @__sanitizer_cov_trace_pc() #9
  %call664 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #10
  br label %if.end665

if.end665:                                        ; preds = %do.end662, %if.then657, %if.then649.if.end665_crit_edge
  %call669 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool670.not = icmp eq ptr %call669, null
  br i1 %tobool670.not, label %cond.end675, label %if.end665.if.then678_crit_edge

if.end665.if.then678_crit_edge:                   ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then678

cond.end675:                                      ; preds = %if.end665
  %call673 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #7
  %call674 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool677.not = icmp eq ptr %call674, null
  br i1 %tobool677.not, label %do.end691, label %cond.end675.if.then678_crit_edge

cond.end675.if.then678_crit_edge:                 ; preds = %cond.end675
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then678

if.then678:                                       ; preds = %cond.end675.if.then678_crit_edge, %if.end665.if.then678_crit_edge
  %cond6764863 = phi ptr [ %call674, %cond.end675.if.then678_crit_edge ], [ %call669, %if.end665.if.then678_crit_edge ]
  %75 = ptrtoint ptr %frontend632 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %frontend632, align 4
  %i2c_adap683 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call684 = tail call ptr %cond6764863(ptr noundef %76, i8 noundef zeroext 96, ptr noundef %i2c_adap683, ptr noundef nonnull @hauppauge_hvr1200_tuner_config) #7
  %cmp685 = icmp eq ptr %call684, null
  br i1 %cmp685, label %if.then686, label %if.then678.sw.epilog3676_crit_edge

if.then678.sw.epilog3676_crit_edge:               ; preds = %if.then678
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then686:                                       ; preds = %if.then678
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #7
  br label %sw.epilog3676

do.end691:                                        ; preds = %cond.end675
  call void @__sanitizer_cov_trace_pc() #9
  %call693 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %sw.epilog3676

sw.bb696:                                         ; preds = %if.end
  %call701 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.86) #7
  %tobool702.not = icmp eq ptr %call701, null
  br i1 %tobool702.not, label %cond.end707, label %sw.bb696.if.then710_crit_edge

sw.bb696.if.then710_crit_edge:                    ; preds = %sw.bb696
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then710

cond.end707:                                      ; preds = %sw.bb696
  %call705 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.87) #7
  %call706 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.86) #7
  %tobool709.not = icmp eq ptr %call706, null
  br i1 %tobool709.not, label %do.end719, label %cond.end707.if.then710_crit_edge

cond.end707.if.then710_crit_edge:                 ; preds = %cond.end707
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then710

if.then710:                                       ; preds = %cond.end707.if.then710_crit_edge, %sw.bb696.if.then710_crit_edge
  %cond7084866 = phi ptr [ %call706, %cond.end707.if.then710_crit_edge ], [ %call701, %sw.bb696.if.then710_crit_edge ]
  %i2c_adap711 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call712 = tail call ptr %cond7084866(ptr noundef nonnull @hauppauge_hvr1210_config, ptr noundef %i2c_adap711) #7
  %cmp713 = icmp eq ptr %call712, null
  br i1 %cmp713, label %if.then714, label %if.then729

if.then714:                                       ; preds = %if.then710
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.86) #7
  br label %if.end722.thread

do.end719:                                        ; preds = %cond.end707
  call void @__sanitizer_cov_trace_pc() #9
  %call721 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #10
  br label %if.end722.thread

if.end722.thread:                                 ; preds = %do.end719, %if.then714
  %frontend7254868 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %frontend7254868 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %frontend7254868, align 4
  br label %sw.epilog3676

if.then729:                                       ; preds = %if.then710
  %frontend725 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %frontend725 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call712, ptr %frontend725, align 4
  %call732 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool733.not = icmp eq ptr %call732, null
  br i1 %tobool733.not, label %cond.end738, label %if.then729.if.then741_crit_edge

if.then729.if.then741_crit_edge:                  ; preds = %if.then729
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then741

cond.end738:                                      ; preds = %if.then729
  %call736 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #7
  %call737 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool740.not = icmp eq ptr %call737, null
  br i1 %tobool740.not, label %do.end754, label %cond.end738.if.then741_crit_edge

cond.end738.if.then741_crit_edge:                 ; preds = %cond.end738
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then741

if.then741:                                       ; preds = %cond.end738.if.then741_crit_edge, %if.then729.if.then741_crit_edge
  %cond7394872 = phi ptr [ %call737, %cond.end738.if.then741_crit_edge ], [ %call732, %if.then729.if.then741_crit_edge ]
  %79 = ptrtoint ptr %frontend725 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %frontend725, align 4
  %i2c_adap746 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call747 = tail call ptr %cond7394872(ptr noundef %80, i8 noundef zeroext 96, ptr noundef %i2c_adap746, ptr noundef nonnull @hauppauge_hvr1210_tuner_config) #7
  %cmp748 = icmp eq ptr %call747, null
  br i1 %cmp748, label %if.then749, label %if.then741.sw.epilog3676_crit_edge

if.then741.sw.epilog3676_crit_edge:               ; preds = %if.then741
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then749:                                       ; preds = %if.then741
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #7
  br label %sw.epilog3676

do.end754:                                        ; preds = %cond.end738
  call void @__sanitizer_cov_trace_pc() #9
  %call756 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %sw.epilog3676

sw.bb760:                                         ; preds = %if.end
  %call765 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.99) #7
  %tobool766.not = icmp eq ptr %call765, null
  br i1 %tobool766.not, label %cond.end771, label %sw.bb760.if.then774_crit_edge

sw.bb760.if.then774_crit_edge:                    ; preds = %sw.bb760
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then774

cond.end771:                                      ; preds = %sw.bb760
  %call769 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.100) #7
  %call770 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.99) #7
  %tobool773.not = icmp eq ptr %call770, null
  br i1 %tobool773.not, label %do.end782, label %cond.end771.if.then774_crit_edge

cond.end771.if.then774_crit_edge:                 ; preds = %cond.end771
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then774

if.then774:                                       ; preds = %cond.end771.if.then774_crit_edge, %sw.bb760.if.then774_crit_edge
  %cond7724875 = phi ptr [ %call770, %cond.end771.if.then774_crit_edge ], [ %call765, %sw.bb760.if.then774_crit_edge ]
  %call775 = call ptr %cond7724875(ptr noundef nonnull %dib7000p_ops) #7
  %cmp776 = icmp eq ptr %call775, null
  br i1 %cmp776, label %if.then777, label %if.end789

if.then777:                                       ; preds = %if.then774
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.99) #7
  br label %cleanup3779

do.end782:                                        ; preds = %cond.end771
  call void @__sanitizer_cov_trace_pc() #9
  %call784 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #10
  br label %cleanup3779

if.end789:                                        ; preds = %if.then774
  %init = getelementptr inbounds %struct.dib7000p_ops, ptr %dib7000p_ops, i32 0, i32 15
  %81 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init, align 4
  %i2c_adap790 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call791 = call ptr %82(ptr noundef %i2c_adap790, i8 noundef zeroext 18, ptr noundef nonnull @hauppauge_hvr1400_dib7000_config) #7
  %frontend793 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %frontend793 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call791, ptr %frontend793, align 4
  %cmp796.not = icmp eq ptr %call791, null
  br i1 %cmp796.not, label %if.end789.sw.epilog3676_crit_edge, label %if.then797

if.end789.sw.epilog3676_crit_edge:                ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then797:                                       ; preds = %if.end789
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg799) #7
  %84 = getelementptr inbounds i8, ptr %cfg799, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %84, align 4
  %i2c_adap803 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %86 = ptrtoint ptr %cfg799 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %i2c_adap803, ptr %cfg799, align 4
  %i2c_addr804 = getelementptr inbounds %struct.xc2028_config, ptr %cfg799, i32 0, i32 1
  %87 = ptrtoint ptr %i2c_addr804 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 100, ptr %i2c_addr804, align 4
  %ctrl805 = getelementptr inbounds %struct.xc2028_config, ptr %cfg799, i32 0, i32 2
  %88 = ptrtoint ptr %ctrl805 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %ctrl805, align 4
  %call808 = call ptr @__symbol_get(ptr noundef nonnull @.str.81) #7
  %tobool809.not = icmp eq ptr %call808, null
  br i1 %tobool809.not, label %cond.end814, label %if.then797.if.then817_crit_edge

if.then797.if.then817_crit_edge:                  ; preds = %if.then797
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then817

cond.end814:                                      ; preds = %if.then797
  %call812 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.82) #7
  %call813 = call ptr @__symbol_get(ptr noundef nonnull @.str.81) #7
  %tobool816.not = icmp eq ptr %call813, null
  br i1 %tobool816.not, label %do.end827, label %cond.end814.if.then817_crit_edge

cond.end814.if.then817_crit_edge:                 ; preds = %cond.end814
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then817

if.then817:                                       ; preds = %cond.end814.if.then817_crit_edge, %if.then797.if.then817_crit_edge
  %cond8154880 = phi ptr [ %call813, %cond.end814.if.then817_crit_edge ], [ %call808, %if.then797.if.then817_crit_edge ]
  %89 = ptrtoint ptr %frontend793 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %frontend793, align 4
  %call820 = call ptr %cond8154880(ptr noundef %90, ptr noundef nonnull %cfg799) #7
  %cmp821 = icmp eq ptr %call820, null
  br i1 %cmp821, label %if.then822, label %land.lhs.true833

if.then822:                                       ; preds = %if.then817
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.81) #7
  br label %if.end843

do.end827:                                        ; preds = %cond.end814
  call void @__sanitizer_cov_trace_pc() #9
  %call829 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #10
  br label %if.end843

land.lhs.true833:                                 ; preds = %if.then817
  %set_config836 = getelementptr inbounds %struct.dvb_frontend, ptr %call820, i32 0, i32 1, i32 32, i32 8
  %91 = ptrtoint ptr %set_config836 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_config836, align 4
  %cmp837.not = icmp eq ptr %92, null
  br i1 %cmp837.not, label %land.lhs.true833.if.end843_crit_edge, label %if.then838

land.lhs.true833.if.end843_crit_edge:             ; preds = %land.lhs.true833
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end843

if.then838:                                       ; preds = %land.lhs.true833
  call void @__sanitizer_cov_trace_pc() #9
  %call842 = call i32 %92(ptr noundef nonnull %call820, ptr noundef nonnull @dvb_register.ctl.105) #7
  br label %if.end843

if.end843:                                        ; preds = %if.then838, %land.lhs.true833.if.end843_crit_edge, %do.end827, %if.then822
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg799) #7
  br label %sw.epilog3676

sw.bb845:                                         ; preds = %if.end
  %nr = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %93 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nr, align 4
  %sub = add i32 %94, -1
  %call850 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool851.not = icmp eq ptr %call850, null
  br i1 %tobool851.not, label %cond.end856, label %sw.bb845.if.then859_crit_edge

sw.bb845.if.then859_crit_edge:                    ; preds = %sw.bb845
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then859

cond.end856:                                      ; preds = %sw.bb845
  %call854 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #7
  %call855 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool858.not = icmp eq ptr %call855, null
  br i1 %tobool858.not, label %do.end868, label %cond.end856.if.then859_crit_edge

cond.end856.if.then859_crit_edge:                 ; preds = %cond.end856
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then859

if.then859:                                       ; preds = %cond.end856.if.then859_crit_edge, %sw.bb845.if.then859_crit_edge
  %cond8574885 = phi ptr [ %call855, %cond.end856.if.then859_crit_edge ], [ %call850, %sw.bb845.if.then859_crit_edge ]
  %i2c_adap860 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 %sub, i32 2
  %call861 = tail call ptr %cond8574885(ptr noundef nonnull @dvico_s5h1409_config, ptr noundef %i2c_adap860) #7
  %cmp862 = icmp eq ptr %call861, null
  br i1 %cmp862, label %if.then863, label %if.end906.thread

if.then863:                                       ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #7
  br label %if.then878

do.end868:                                        ; preds = %cond.end856
  call void @__sanitizer_cov_trace_pc() #9
  %call870 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %if.then878

if.end906.thread:                                 ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #9
  %frontend874 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %frontend874 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call861, ptr %frontend874, align 4
  br label %if.then910

if.then878:                                       ; preds = %do.end868, %if.then863
  %frontend8744887 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %96 = ptrtoint ptr %frontend8744887 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %frontend8744887, align 4
  %call881 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #7
  %tobool882.not = icmp eq ptr %call881, null
  br i1 %tobool882.not, label %cond.end887, label %if.then878.if.then890_crit_edge

if.then878.if.then890_crit_edge:                  ; preds = %if.then878
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then890

cond.end887:                                      ; preds = %if.then878
  %call885 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.38) #7
  %call886 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #7
  %tobool889.not = icmp eq ptr %call886, null
  br i1 %tobool889.not, label %do.end899, label %cond.end887.if.then890_crit_edge

cond.end887.if.then890_crit_edge:                 ; preds = %cond.end887
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then890

if.then890:                                       ; preds = %cond.end887.if.then890_crit_edge, %if.then878.if.then890_crit_edge
  %cond8884893 = phi ptr [ %call886, %cond.end887.if.then890_crit_edge ], [ %call881, %if.then878.if.then890_crit_edge ]
  %i2c_adap891 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 %sub, i32 2
  %call892 = tail call ptr %cond8884893(ptr noundef nonnull @dvico_s5h1411_config, ptr noundef %i2c_adap891) #7
  %cmp893 = icmp eq ptr %call892, null
  br i1 %cmp893, label %if.then894, label %if.end906

if.then894:                                       ; preds = %if.then890
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.37) #7
  br label %if.end906.thread4897

do.end899:                                        ; preds = %cond.end887
  call void @__sanitizer_cov_trace_pc() #9
  %call901 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  br label %if.end906.thread4897

if.end906.thread4897:                             ; preds = %do.end899, %if.then894
  %97 = ptrtoint ptr %frontend8744887 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %frontend8744887, align 4
  br label %sw.epilog3676

if.end906:                                        ; preds = %if.then890
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %frontend8744887 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call892, ptr %frontend8744887, align 4
  br label %if.then910

if.then910:                                       ; preds = %if.end906, %if.end906.thread
  %frontend87448894896 = phi ptr [ %frontend874, %if.end906.thread ], [ %frontend8744887, %if.end906 ]
  %call913 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool914.not = icmp eq ptr %call913, null
  br i1 %tobool914.not, label %cond.end919, label %if.then910.if.then922_crit_edge

if.then910.if.then922_crit_edge:                  ; preds = %if.then910
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then922

cond.end919:                                      ; preds = %if.then910
  %call917 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.74) #7
  %call918 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool921.not = icmp eq ptr %call918, null
  br i1 %tobool921.not, label %do.end933, label %cond.end919.if.then922_crit_edge

cond.end919.if.then922_crit_edge:                 ; preds = %cond.end919
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then922

if.then922:                                       ; preds = %cond.end919.if.then922_crit_edge, %if.then910.if.then922_crit_edge
  %cond9204902 = phi ptr [ %call918, %cond.end919.if.then922_crit_edge ], [ %call913, %if.then910.if.then922_crit_edge ]
  %99 = ptrtoint ptr %frontend87448894896 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %frontend87448894896, align 4
  %i2c_adap925 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 %sub, i32 2
  %call926 = tail call ptr %cond9204902(ptr noundef %100, ptr noundef %i2c_adap925, ptr noundef nonnull @dvico_xc5000_tunerconfig) #7
  %cmp927 = icmp eq ptr %call926, null
  br i1 %cmp927, label %if.then928, label %if.then922.sw.epilog3676_crit_edge

if.then922.sw.epilog3676_crit_edge:               ; preds = %if.then922
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then928:                                       ; preds = %if.then922
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.73) #7
  br label %sw.epilog3676

do.end933:                                        ; preds = %cond.end919
  call void @__sanitizer_cov_trace_pc() #9
  %call935 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #10
  br label %sw.epilog3676

sw.bb939:                                         ; preds = %if.end
  %nr941 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %101 = ptrtoint ptr %nr941 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nr941, align 4
  %sub942 = add i32 %102, -1
  %call946 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.115) #7
  %tobool947.not = icmp eq ptr %call946, null
  br i1 %tobool947.not, label %cond.end952, label %sw.bb939.if.then955_crit_edge

sw.bb939.if.then955_crit_edge:                    ; preds = %sw.bb939
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then955

cond.end952:                                      ; preds = %sw.bb939
  %call950 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.116) #7
  %call951 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.115) #7
  %tobool954.not = icmp eq ptr %call951, null
  br i1 %tobool954.not, label %do.end964, label %cond.end952.if.then955_crit_edge

cond.end952.if.then955_crit_edge:                 ; preds = %cond.end952
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then955

if.then955:                                       ; preds = %cond.end952.if.then955_crit_edge, %sw.bb939.if.then955_crit_edge
  %cond9534905 = phi ptr [ %call951, %cond.end952.if.then955_crit_edge ], [ %call946, %sw.bb939.if.then955_crit_edge ]
  %i2c_adap956 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 %sub942, i32 2
  %call957 = tail call ptr %cond9534905(ptr noundef nonnull @dvico_fusionhdtv_xc3028, ptr noundef %i2c_adap956) #7
  %cmp958 = icmp eq ptr %call957, null
  br i1 %cmp958, label %if.then959, label %if.then974

if.then959:                                       ; preds = %if.then955
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.115) #7
  br label %if.end967.thread

do.end964:                                        ; preds = %cond.end952
  call void @__sanitizer_cov_trace_pc() #9
  %call966 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #10
  br label %if.end967.thread

if.end967.thread:                                 ; preds = %do.end964, %if.then959
  %frontend9704907 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %frontend9704907 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %frontend9704907, align 4
  br label %sw.epilog3676

if.then974:                                       ; preds = %if.then955
  %frontend970 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %104 = ptrtoint ptr %frontend970 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call957, ptr %frontend970, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg976) #7
  %105 = getelementptr inbounds i8, ptr %cfg976, i32 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %105, align 4
  %107 = ptrtoint ptr %cfg976 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %i2c_adap956, ptr %cfg976, align 4
  %i2c_addr979 = getelementptr inbounds %struct.xc2028_config, ptr %cfg976, i32 0, i32 1
  %108 = ptrtoint ptr %i2c_addr979 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 97, ptr %i2c_addr979, align 4
  %ctrl980 = getelementptr inbounds %struct.xc2028_config, ptr %cfg976, i32 0, i32 2
  %109 = ptrtoint ptr %ctrl980 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %ctrl980, align 4
  %call983 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.81) #7
  %tobool984.not = icmp eq ptr %call983, null
  br i1 %tobool984.not, label %cond.end989, label %if.then974.if.then992_crit_edge

if.then974.if.then992_crit_edge:                  ; preds = %if.then974
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then992

cond.end989:                                      ; preds = %if.then974
  %call987 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.82) #7
  %call988 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.81) #7
  %tobool991.not = icmp eq ptr %call988, null
  br i1 %tobool991.not, label %do.end1002, label %cond.end989.if.then992_crit_edge

cond.end989.if.then992_crit_edge:                 ; preds = %cond.end989
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then992

if.then992:                                       ; preds = %cond.end989.if.then992_crit_edge, %if.then974.if.then992_crit_edge
  %cond9904911 = phi ptr [ %call988, %cond.end989.if.then992_crit_edge ], [ %call983, %if.then974.if.then992_crit_edge ]
  %110 = ptrtoint ptr %frontend970 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %frontend970, align 4
  %call995 = call ptr %cond9904911(ptr noundef %111, ptr noundef nonnull %cfg976) #7
  %cmp996 = icmp eq ptr %call995, null
  br i1 %cmp996, label %if.then997, label %land.lhs.true1008

if.then997:                                       ; preds = %if.then992
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.81) #7
  br label %if.end1018

do.end1002:                                       ; preds = %cond.end989
  call void @__sanitizer_cov_trace_pc() #9
  %call1004 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #10
  br label %if.end1018

land.lhs.true1008:                                ; preds = %if.then992
  %set_config1011 = getelementptr inbounds %struct.dvb_frontend, ptr %call995, i32 0, i32 1, i32 32, i32 8
  %112 = ptrtoint ptr %set_config1011 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %set_config1011, align 4
  %cmp1012.not = icmp eq ptr %113, null
  br i1 %cmp1012.not, label %land.lhs.true1008.if.end1018_crit_edge, label %if.then1013

land.lhs.true1008.if.end1018_crit_edge:           ; preds = %land.lhs.true1008
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1018

if.then1013:                                      ; preds = %land.lhs.true1008
  call void @__sanitizer_cov_trace_pc() #9
  %call1017 = call i32 %113(ptr noundef nonnull %call995, ptr noundef nonnull @dvb_register.ctl.121) #7
  br label %if.end1018

if.end1018:                                       ; preds = %if.then1013, %land.lhs.true1008.if.end1018_crit_edge, %do.end1002, %if.then997
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg976) #7
  br label %sw.epilog3676

sw.bb1020:                                        ; preds = %if.end
  %nr1022 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %114 = ptrtoint ptr %nr1022 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nr1022, align 4
  %sub1023 = add i32 %115, -1
  %call1027 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.99) #7
  %tobool1028.not = icmp eq ptr %call1027, null
  br i1 %tobool1028.not, label %cond.end1033, label %sw.bb1020.if.then1036_crit_edge

sw.bb1020.if.then1036_crit_edge:                  ; preds = %sw.bb1020
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1036

cond.end1033:                                     ; preds = %sw.bb1020
  %call1031 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.100) #7
  %call1032 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.99) #7
  %tobool1035.not = icmp eq ptr %call1032, null
  br i1 %tobool1035.not, label %do.end1044, label %cond.end1033.if.then1036_crit_edge

cond.end1033.if.then1036_crit_edge:               ; preds = %cond.end1033
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1036

if.then1036:                                      ; preds = %cond.end1033.if.then1036_crit_edge, %sw.bb1020.if.then1036_crit_edge
  %cond10344916 = phi ptr [ %call1032, %cond.end1033.if.then1036_crit_edge ], [ %call1027, %sw.bb1020.if.then1036_crit_edge ]
  %call1037 = call ptr %cond10344916(ptr noundef nonnull %dib7000p_ops) #7
  %cmp1038 = icmp eq ptr %call1037, null
  br i1 %cmp1038, label %if.then1039, label %if.end1051

if.then1039:                                      ; preds = %if.then1036
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.99) #7
  br label %cleanup3779

do.end1044:                                       ; preds = %cond.end1033
  call void @__sanitizer_cov_trace_pc() #9
  %call1046 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #10
  br label %cleanup3779

if.end1051:                                       ; preds = %if.then1036
  %i2c_enumeration = getelementptr inbounds %struct.dib7000p_ops, ptr %dib7000p_ops, i32 0, i32 10
  %116 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i2c_enumeration, align 4
  %i2c_adap1052 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 %sub1023, i32 2
  %call1053 = call i32 %117(ptr noundef %i2c_adap1052, i32 noundef 1, i8 noundef zeroext 18, ptr noundef nonnull @dib7070p_dib7000p_config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1053)
  %cmp1054 = icmp slt i32 %call1053, 0
  br i1 %cmp1054, label %do.end1058, label %if.end1061

do.end1058:                                       ; preds = %if.end1051
  call void @__sanitizer_cov_trace_pc() #9
  %call1060 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #10
  br label %cleanup3779

if.end1061:                                       ; preds = %if.end1051
  %init1062 = getelementptr inbounds %struct.dib7000p_ops, ptr %dib7000p_ops, i32 0, i32 15
  %118 = ptrtoint ptr %init1062 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %init1062, align 4
  %call1064 = call ptr %119(ptr noundef %i2c_adap1052, i8 noundef zeroext -128, ptr noundef nonnull @dib7070p_dib7000p_config) #7
  %frontend1066 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %120 = ptrtoint ptr %frontend1066 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call1064, ptr %frontend1066, align 4
  %cmp1069.not = icmp eq ptr %call1064, null
  br i1 %cmp1069.not, label %if.end1061.sw.epilog3676_crit_edge, label %if.then1070

if.end1061.sw.epilog3676_crit_edge:               ; preds = %if.end1061
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then1070:                                      ; preds = %if.end1061
  %call1071 = call ptr @kmemdup(ptr noundef nonnull %dib7000p_ops, i32 noundef 64, i32 noundef 3264) #7
  %121 = ptrtoint ptr %frontend1066 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %frontend1066, align 4
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call1071, ptr %sec_priv, align 4
  %124 = load ptr, ptr %frontend1066, align 4
  %sec_priv1076 = getelementptr inbounds %struct.dvb_frontend, ptr %124, i32 0, i32 6
  %125 = ptrtoint ptr %sec_priv1076 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %sec_priv1076, align 4
  %tobool1077.not = icmp eq ptr %126, null
  br i1 %tobool1077.not, label %if.then1070.cleanup3779_crit_edge, label %if.end1079

if.then1070.cleanup3779_crit_edge:                ; preds = %if.then1070
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup3779

if.end1079:                                       ; preds = %if.then1070
  %get_i2c_master = getelementptr inbounds %struct.dib7000p_ops, ptr %dib7000p_ops, i32 0, i32 7
  %127 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %get_i2c_master, align 4
  %call1082 = call ptr %128(ptr noundef %124, i32 noundef 0, i32 noundef 1) #7
  %call1085 = call ptr @__symbol_get(ptr noundef nonnull @.str.129) #7
  %tobool1086.not = icmp eq ptr %call1085, null
  br i1 %tobool1086.not, label %cond.end1091, label %if.end1079.if.then1094_crit_edge

if.end1079.if.then1094_crit_edge:                 ; preds = %if.end1079
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1094

cond.end1091:                                     ; preds = %if.end1079
  %call1089 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.130) #7
  %call1090 = call ptr @__symbol_get(ptr noundef nonnull @.str.129) #7
  %tobool1093.not = icmp eq ptr %call1090, null
  br i1 %tobool1093.not, label %do.end1104, label %cond.end1091.if.then1094_crit_edge

cond.end1091.if.then1094_crit_edge:               ; preds = %cond.end1091
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1094

if.then1094:                                      ; preds = %cond.end1091.if.then1094_crit_edge, %if.end1079.if.then1094_crit_edge
  %cond10924921 = phi ptr [ %call1090, %cond.end1091.if.then1094_crit_edge ], [ %call1085, %if.end1079.if.then1094_crit_edge ]
  %129 = ptrtoint ptr %frontend1066 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %frontend1066, align 4
  %call1097 = call ptr %cond10924921(ptr noundef %130, ptr noundef %call1082, ptr noundef nonnull @dib7070p_dib0070_config) #7
  %cmp1098 = icmp eq ptr %call1097, null
  br i1 %cmp1098, label %if.then1099, label %if.then1094.sw.epilog3676_crit_edge

if.then1094.sw.epilog3676_crit_edge:              ; preds = %if.then1094
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then1099:                                      ; preds = %if.then1094
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.129) #7
  br label %cleanup3779

do.end1104:                                       ; preds = %cond.end1091
  call void @__sanitizer_cov_trace_pc() #9
  %call1106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #10
  br label %cleanup3779

sw.bb1113:                                        ; preds = %if.end.sw.bb1113_crit_edge, %if.end.sw.bb1113_crit_edge5195, %if.end.sw.bb1113_crit_edge5196
  %call1118 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.115) #7
  %tobool1119.not = icmp eq ptr %call1118, null
  br i1 %tobool1119.not, label %cond.end1124, label %sw.bb1113.if.then1127_crit_edge

sw.bb1113.if.then1127_crit_edge:                  ; preds = %sw.bb1113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1127

cond.end1124:                                     ; preds = %sw.bb1113
  %call1122 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.116) #7
  %call1123 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.115) #7
  %tobool1126.not = icmp eq ptr %call1123, null
  br i1 %tobool1126.not, label %do.end1136, label %cond.end1124.if.then1127_crit_edge

cond.end1124.if.then1127_crit_edge:               ; preds = %cond.end1124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1127

if.then1127:                                      ; preds = %cond.end1124.if.then1127_crit_edge, %sw.bb1113.if.then1127_crit_edge
  %cond11254930 = phi ptr [ %call1123, %cond.end1124.if.then1127_crit_edge ], [ %call1118, %sw.bb1113.if.then1127_crit_edge ]
  %i2c_adap1128 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call1129 = tail call ptr %cond11254930(ptr noundef nonnull @dvico_fusionhdtv_xc3028, ptr noundef %i2c_adap1128) #7
  %cmp1130 = icmp eq ptr %call1129, null
  br i1 %cmp1130, label %if.then1131, label %if.then1146

if.then1131:                                      ; preds = %if.then1127
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.115) #7
  br label %if.end1139.thread

do.end1136:                                       ; preds = %cond.end1124
  call void @__sanitizer_cov_trace_pc() #9
  %call1138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #10
  br label %if.end1139.thread

if.end1139.thread:                                ; preds = %do.end1136, %if.then1131
  %frontend11424932 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %131 = ptrtoint ptr %frontend11424932 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %frontend11424932, align 4
  br label %sw.epilog3676

if.then1146:                                      ; preds = %if.then1127
  %frontend1142 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %132 = ptrtoint ptr %frontend1142 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call1129, ptr %frontend1142, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg1148) #7
  %133 = getelementptr inbounds i8, ptr %cfg1148, i32 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %133, align 4
  %i2c_adap1152 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %135 = ptrtoint ptr %cfg1148 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %i2c_adap1152, ptr %cfg1148, align 4
  %i2c_addr1153 = getelementptr inbounds %struct.xc2028_config, ptr %cfg1148, i32 0, i32 1
  %136 = ptrtoint ptr %i2c_addr1153 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 97, ptr %i2c_addr1153, align 4
  %ctrl1154 = getelementptr inbounds %struct.xc2028_config, ptr %cfg1148, i32 0, i32 2
  %137 = ptrtoint ptr %ctrl1154 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %ctrl1154, align 4
  %call1157 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.81) #7
  %tobool1158.not = icmp eq ptr %call1157, null
  br i1 %tobool1158.not, label %cond.end1163, label %if.then1146.if.then1166_crit_edge

if.then1146.if.then1166_crit_edge:                ; preds = %if.then1146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1166

cond.end1163:                                     ; preds = %if.then1146
  %call1161 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.82) #7
  %call1162 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.81) #7
  %tobool1165.not = icmp eq ptr %call1162, null
  br i1 %tobool1165.not, label %do.end1176, label %cond.end1163.if.then1166_crit_edge

cond.end1163.if.then1166_crit_edge:               ; preds = %cond.end1163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1166

if.then1166:                                      ; preds = %cond.end1163.if.then1166_crit_edge, %if.then1146.if.then1166_crit_edge
  %cond11644936 = phi ptr [ %call1162, %cond.end1163.if.then1166_crit_edge ], [ %call1157, %if.then1146.if.then1166_crit_edge ]
  %138 = ptrtoint ptr %frontend1142 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %frontend1142, align 4
  %call1169 = call ptr %cond11644936(ptr noundef %139, ptr noundef nonnull %cfg1148) #7
  %cmp1170 = icmp eq ptr %call1169, null
  br i1 %cmp1170, label %if.then1171, label %land.lhs.true1182

if.then1171:                                      ; preds = %if.then1166
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.81) #7
  br label %if.end1192

do.end1176:                                       ; preds = %cond.end1163
  call void @__sanitizer_cov_trace_pc() #9
  %call1178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #10
  br label %if.end1192

land.lhs.true1182:                                ; preds = %if.then1166
  %set_config1185 = getelementptr inbounds %struct.dvb_frontend, ptr %call1169, i32 0, i32 1, i32 32, i32 8
  %140 = ptrtoint ptr %set_config1185 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %set_config1185, align 4
  %cmp1186.not = icmp eq ptr %141, null
  br i1 %cmp1186.not, label %land.lhs.true1182.if.end1192_crit_edge, label %if.then1187

land.lhs.true1182.if.end1192_crit_edge:           ; preds = %land.lhs.true1182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1192

if.then1187:                                      ; preds = %land.lhs.true1182
  call void @__sanitizer_cov_trace_pc() #9
  %call1191 = call i32 %141(ptr noundef nonnull %call1169, ptr noundef nonnull @dvb_register.ctl.137) #7
  br label %if.end1192

if.end1192:                                       ; preds = %if.then1187, %land.lhs.true1182.if.end1192_crit_edge, %do.end1176, %if.then1171
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg1148) #7
  br label %sw.epilog3676

sw.bb1194:                                        ; preds = %if.end
  %call1199 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.115) #7
  %tobool1200.not = icmp eq ptr %call1199, null
  br i1 %tobool1200.not, label %cond.end1205, label %sw.bb1194.if.then1208_crit_edge

sw.bb1194.if.then1208_crit_edge:                  ; preds = %sw.bb1194
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1208

cond.end1205:                                     ; preds = %sw.bb1194
  %call1203 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.116) #7
  %call1204 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.115) #7
  %tobool1207.not = icmp eq ptr %call1204, null
  br i1 %tobool1207.not, label %do.end1217, label %cond.end1205.if.then1208_crit_edge

cond.end1205.if.then1208_crit_edge:               ; preds = %cond.end1205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1208

if.then1208:                                      ; preds = %cond.end1205.if.then1208_crit_edge, %sw.bb1194.if.then1208_crit_edge
  %cond12064941 = phi ptr [ %call1204, %cond.end1205.if.then1208_crit_edge ], [ %call1199, %sw.bb1194.if.then1208_crit_edge ]
  %i2c_adap1209 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call1210 = tail call ptr %cond12064941(ptr noundef nonnull @dvico_fusionhdtv_xc3028, ptr noundef %i2c_adap1209) #7
  %cmp1211 = icmp eq ptr %call1210, null
  br i1 %cmp1211, label %if.then1212, label %if.then1227

if.then1212:                                      ; preds = %if.then1208
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.115) #7
  br label %if.end1220.thread

do.end1217:                                       ; preds = %cond.end1205
  call void @__sanitizer_cov_trace_pc() #9
  %call1219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #10
  br label %if.end1220.thread

if.end1220.thread:                                ; preds = %do.end1217, %if.then1212
  %frontend12234943 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %142 = ptrtoint ptr %frontend12234943 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %frontend12234943, align 4
  br label %sw.epilog3676

if.then1227:                                      ; preds = %if.then1208
  %frontend1223 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %143 = ptrtoint ptr %frontend1223 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call1210, ptr %frontend1223, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg1229) #7
  %144 = ptrtoint ptr %cfg1229 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 6989733960532103632, ptr %cfg1229, align 8
  %call1232 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.143) #7
  %tobool1233.not = icmp eq ptr %call1232, null
  br i1 %tobool1233.not, label %cond.end1238, label %if.then1227.if.then1241_crit_edge

if.then1227.if.then1241_crit_edge:                ; preds = %if.then1227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1241

cond.end1238:                                     ; preds = %if.then1227
  %call1236 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.144) #7
  %call1237 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.143) #7
  %tobool1240.not = icmp eq ptr %call1237, null
  br i1 %tobool1240.not, label %do.end1254, label %cond.end1238.if.then1241_crit_edge

cond.end1238.if.then1241_crit_edge:               ; preds = %cond.end1238
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1241

if.then1241:                                      ; preds = %cond.end1238.if.then1241_crit_edge, %if.then1227.if.then1241_crit_edge
  %cond12394947 = phi ptr [ %call1237, %cond.end1238.if.then1241_crit_edge ], [ %call1232, %if.then1227.if.then1241_crit_edge ]
  %145 = ptrtoint ptr %frontend1223 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %frontend1223, align 4
  %i2c_adap1246 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call1247 = call ptr %cond12394947(ptr noundef %146, ptr noundef %i2c_adap1246, ptr noundef nonnull %cfg1229) #7
  %cmp1248 = icmp eq ptr %call1247, null
  br i1 %cmp1248, label %if.then1249, label %cleanup1269.thread

cleanup1269.thread:                               ; preds = %if.then1241
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg1229) #7
  br label %sw.epilog3676

if.then1249:                                      ; preds = %if.then1241
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.143) #7
  br label %cleanup1269

do.end1254:                                       ; preds = %cond.end1238
  call void @__sanitizer_cov_trace_pc() #9
  %call1256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #10
  br label %cleanup1269

cleanup1269:                                      ; preds = %do.end1254, %if.then1249
  %call1267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg1229) #7
  br label %frontend_detach

sw.bb1274:                                        ; preds = %if.end
  %call1279 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.151) #7
  %tobool1280.not = icmp eq ptr %call1279, null
  br i1 %tobool1280.not, label %cond.end1285, label %sw.bb1274.if.then1288_crit_edge

sw.bb1274.if.then1288_crit_edge:                  ; preds = %sw.bb1274
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1288

cond.end1285:                                     ; preds = %sw.bb1274
  %call1283 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.152) #7
  %call1284 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.151) #7
  %tobool1287.not = icmp eq ptr %call1284, null
  br i1 %tobool1287.not, label %do.end1297, label %cond.end1285.if.then1288_crit_edge

cond.end1285.if.then1288_crit_edge:               ; preds = %cond.end1285
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1288

if.then1288:                                      ; preds = %cond.end1285.if.then1288_crit_edge, %sw.bb1274.if.then1288_crit_edge
  %cond12864953 = phi ptr [ %call1284, %cond.end1285.if.then1288_crit_edge ], [ %call1279, %sw.bb1274.if.then1288_crit_edge ]
  %i2c_adap1289 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call1290 = tail call ptr %cond12864953(ptr noundef nonnull @tbs_cx24116_config, ptr noundef %i2c_adap1289) #7
  %cmp1291 = icmp eq ptr %call1290, null
  br i1 %cmp1291, label %if.then1292, label %if.then1307

if.then1292:                                      ; preds = %if.then1288
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.151) #7
  br label %if.end1300.thread

do.end1297:                                       ; preds = %cond.end1285
  call void @__sanitizer_cov_trace_pc() #9
  %call1299 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #10
  br label %if.end1300.thread

if.end1300.thread:                                ; preds = %do.end1297, %if.then1292
  %frontend13034955 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %147 = ptrtoint ptr %frontend13034955 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %frontend13034955, align 4
  br label %sw.epilog3676

if.then1307:                                      ; preds = %if.then1288
  call void @__sanitizer_cov_trace_pc() #9
  %frontend1303 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %148 = ptrtoint ptr %frontend1303 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call1290, ptr %frontend1303, align 4
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %call1290, i32 0, i32 1, i32 25
  %149 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @f300_set_voltage, ptr %set_voltage, align 4
  br label %sw.epilog3676

sw.bb1312:                                        ; preds = %if.end.sw.bb1312_crit_edge, %if.end.sw.bb1312_crit_edge5197
  %nr1315 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %150 = ptrtoint ptr %nr1315 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %nr1315, align 4
  %152 = zext i32 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.353)
  switch i32 %151, label %sw.bb1312.sw.epilog3676_crit_edge [
    i32 1, label %sw.bb1316
    i32 2, label %sw.bb1344
  ]

sw.bb1312.sw.epilog3676_crit_edge:                ; preds = %sw.bb1312
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

sw.bb1316:                                        ; preds = %sw.bb1312
  %call1319 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.156) #7
  %tobool1320.not = icmp eq ptr %call1319, null
  br i1 %tobool1320.not, label %cond.end1325, label %sw.bb1316.if.then1328_crit_edge

sw.bb1316.if.then1328_crit_edge:                  ; preds = %sw.bb1316
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1328

cond.end1325:                                     ; preds = %sw.bb1316
  %call1323 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.157) #7
  %call1324 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.156) #7
  %tobool1327.not = icmp eq ptr %call1324, null
  br i1 %tobool1327.not, label %do.end1337, label %cond.end1325.if.then1328_crit_edge

cond.end1325.if.then1328_crit_edge:               ; preds = %cond.end1325
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1328

if.then1328:                                      ; preds = %cond.end1325.if.then1328_crit_edge, %sw.bb1316.if.then1328_crit_edge
  %cond13264959 = phi ptr [ %call1324, %cond.end1325.if.then1328_crit_edge ], [ %call1319, %sw.bb1316.if.then1328_crit_edge ]
  %i2c_adap1329 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call1330 = tail call ptr %cond13264959(ptr noundef nonnull @tbs_cx24117_config, ptr noundef %i2c_adap1329) #7
  %cmp1331 = icmp eq ptr %call1330, null
  br i1 %cmp1331, label %if.then1332, label %if.then1328.if.end1340_crit_edge

if.then1328.if.end1340_crit_edge:                 ; preds = %if.then1328
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1340

if.then1332:                                      ; preds = %if.then1328
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.156) #7
  br label %if.end1340

do.end1337:                                       ; preds = %cond.end1325
  call void @__sanitizer_cov_trace_pc() #9
  %call1339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #10
  br label %if.end1340

if.end1340:                                       ; preds = %do.end1337, %if.then1332, %if.then1328.if.end1340_crit_edge
  %__r1317.0 = phi ptr [ null, %if.then1332 ], [ %call1330, %if.then1328.if.end1340_crit_edge ], [ null, %do.end1337 ]
  %frontend1343 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %153 = ptrtoint ptr %frontend1343 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %__r1317.0, ptr %frontend1343, align 4
  br label %sw.epilog3676

sw.bb1344:                                        ; preds = %sw.bb1312
  %call1347 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.156) #7
  %tobool1348.not = icmp eq ptr %call1347, null
  br i1 %tobool1348.not, label %cond.end1353, label %sw.bb1344.if.then1356_crit_edge

sw.bb1344.if.then1356_crit_edge:                  ; preds = %sw.bb1344
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1356

cond.end1353:                                     ; preds = %sw.bb1344
  %call1351 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.157) #7
  %call1352 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.156) #7
  %tobool1355.not = icmp eq ptr %call1352, null
  br i1 %tobool1355.not, label %do.end1365, label %cond.end1353.if.then1356_crit_edge

cond.end1353.if.then1356_crit_edge:               ; preds = %cond.end1353
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1356

if.then1356:                                      ; preds = %cond.end1353.if.then1356_crit_edge, %sw.bb1344.if.then1356_crit_edge
  %cond13544962 = phi ptr [ %call1352, %cond.end1353.if.then1356_crit_edge ], [ %call1347, %sw.bb1344.if.then1356_crit_edge ]
  %i2c_adap1357 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call1358 = tail call ptr %cond13544962(ptr noundef nonnull @tbs_cx24117_config, ptr noundef %i2c_adap1357) #7
  %cmp1359 = icmp eq ptr %call1358, null
  br i1 %cmp1359, label %if.then1360, label %if.then1356.if.end1368_crit_edge

if.then1356.if.end1368_crit_edge:                 ; preds = %if.then1356
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1368

if.then1360:                                      ; preds = %if.then1356
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.156) #7
  br label %if.end1368

do.end1365:                                       ; preds = %cond.end1353
  call void @__sanitizer_cov_trace_pc() #9
  %call1367 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #10
  br label %if.end1368

if.end1368:                                       ; preds = %do.end1365, %if.then1360, %if.then1356.if.end1368_crit_edge
  %__r1345.0 = phi ptr [ null, %if.then1360 ], [ %call1358, %if.then1356.if.end1368_crit_edge ], [ null, %do.end1365 ]
  %frontend1371 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %154 = ptrtoint ptr %frontend1371 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %__r1345.0, ptr %frontend1371, align 4
  br label %sw.epilog3676

sw.bb1373:                                        ; preds = %if.end
  %call1378 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.163) #7
  %tobool1379.not = icmp eq ptr %call1378, null
  br i1 %tobool1379.not, label %cond.end1384, label %sw.bb1373.if.then1387_crit_edge

sw.bb1373.if.then1387_crit_edge:                  ; preds = %sw.bb1373
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1387

cond.end1384:                                     ; preds = %sw.bb1373
  %call1382 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.164) #7
  %call1383 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.163) #7
  %tobool1386.not = icmp eq ptr %call1383, null
  br i1 %tobool1386.not, label %do.end1396, label %cond.end1384.if.then1387_crit_edge

cond.end1384.if.then1387_crit_edge:               ; preds = %cond.end1384
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1387

if.then1387:                                      ; preds = %cond.end1384.if.then1387_crit_edge, %sw.bb1373.if.then1387_crit_edge
  %cond13854965 = phi ptr [ %call1383, %cond.end1384.if.then1387_crit_edge ], [ %call1378, %sw.bb1373.if.then1387_crit_edge ]
  %i2c_adap1388 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call1389 = tail call ptr %cond13854965(ptr noundef nonnull @tevii_ds3000_config, ptr noundef %i2c_adap1388) #7
  %cmp1390 = icmp eq ptr %call1389, null
  br i1 %cmp1390, label %if.then1391, label %if.then1406

if.then1391:                                      ; preds = %if.then1387
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.163) #7
  br label %if.end1399.thread

do.end1396:                                       ; preds = %cond.end1384
  call void @__sanitizer_cov_trace_pc() #9
  %call1398 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #10
  br label %if.end1399.thread

if.end1399.thread:                                ; preds = %do.end1396, %if.then1391
  %frontend14024967 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %155 = ptrtoint ptr %frontend14024967 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %frontend14024967, align 4
  br label %sw.epilog3676

if.then1406:                                      ; preds = %if.then1387
  %frontend1402 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %156 = ptrtoint ptr %frontend1402 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call1389, ptr %frontend1402, align 4
  %call1409 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #7
  %tobool1410.not = icmp eq ptr %call1409, null
  br i1 %tobool1410.not, label %cond.end1415, label %if.then1406.if.then1418_crit_edge

if.then1406.if.then1418_crit_edge:                ; preds = %if.then1406
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1418

cond.end1415:                                     ; preds = %if.then1406
  %call1413 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.169) #7
  %call1414 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #7
  %tobool1417.not = icmp eq ptr %call1414, null
  br i1 %tobool1417.not, label %do.end1429, label %cond.end1415.if.then1418_crit_edge

cond.end1415.if.then1418_crit_edge:               ; preds = %cond.end1415
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1418

if.then1418:                                      ; preds = %cond.end1415.if.then1418_crit_edge, %if.then1406.if.then1418_crit_edge
  %cond14164971 = phi ptr [ %call1414, %cond.end1415.if.then1418_crit_edge ], [ %call1409, %if.then1406.if.then1418_crit_edge ]
  %157 = ptrtoint ptr %frontend1402 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %frontend1402, align 4
  %call1422 = tail call ptr %cond14164971(ptr noundef %158, ptr noundef nonnull @tevii_ts2020_config, ptr noundef %i2c_adap1388) #7
  %cmp1423 = icmp eq ptr %call1422, null
  br i1 %cmp1423, label %if.then1424, label %if.then1418.if.end1432_crit_edge

if.then1418.if.end1432_crit_edge:                 ; preds = %if.then1418
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1432

if.then1424:                                      ; preds = %if.then1418
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.168) #7
  br label %if.end1432

do.end1429:                                       ; preds = %cond.end1415
  call void @__sanitizer_cov_trace_pc() #9
  %call1431 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #10
  br label %if.end1432

if.end1432:                                       ; preds = %do.end1429, %if.then1424, %if.then1418.if.end1432_crit_edge
  %159 = ptrtoint ptr %frontend1402 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %frontend1402, align 4
  %set_voltage1437 = getelementptr inbounds %struct.dvb_frontend, ptr %160, i32 0, i32 1, i32 25
  %161 = ptrtoint ptr %set_voltage1437 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @f300_set_voltage, ptr %set_voltage1437, align 4
  br label %sw.epilog3676

sw.bb1439:                                        ; preds = %if.end
  %call1444 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.151) #7
  %tobool1445.not = icmp eq ptr %call1444, null
  br i1 %tobool1445.not, label %cond.end1450, label %sw.bb1439.if.then1453_crit_edge

sw.bb1439.if.then1453_crit_edge:                  ; preds = %sw.bb1439
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1453

cond.end1450:                                     ; preds = %sw.bb1439
  %call1448 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.152) #7
  %call1449 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.151) #7
  %tobool1452.not = icmp eq ptr %call1449, null
  br i1 %tobool1452.not, label %do.end1462, label %cond.end1450.if.then1453_crit_edge

cond.end1450.if.then1453_crit_edge:               ; preds = %cond.end1450
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1453

if.then1453:                                      ; preds = %cond.end1450.if.then1453_crit_edge, %sw.bb1439.if.then1453_crit_edge
  %cond14514974 = phi ptr [ %call1449, %cond.end1450.if.then1453_crit_edge ], [ %call1444, %sw.bb1439.if.then1453_crit_edge ]
  %i2c_adap1454 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call1455 = tail call ptr %cond14514974(ptr noundef nonnull @dvbworld_cx24116_config, ptr noundef %i2c_adap1454) #7
  %cmp1456 = icmp eq ptr %call1455, null
  br i1 %cmp1456, label %if.then1457, label %if.then1453.if.end1465_crit_edge

if.then1453.if.end1465_crit_edge:                 ; preds = %if.then1453
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1465

if.then1457:                                      ; preds = %if.then1453
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.151) #7
  br label %if.end1465

do.end1462:                                       ; preds = %cond.end1450
  call void @__sanitizer_cov_trace_pc() #9
  %call1464 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #10
  br label %if.end1465

if.end1465:                                       ; preds = %do.end1462, %if.then1457, %if.then1453.if.end1465_crit_edge
  %__r1442.0 = phi ptr [ null, %if.then1457 ], [ %call1455, %if.then1453.if.end1465_crit_edge ], [ null, %do.end1462 ]
  %frontend1468 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %162 = ptrtoint ptr %frontend1468 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %__r1442.0, ptr %frontend1468, align 4
  br label %sw.epilog3676

sw.bb1469:                                        ; preds = %if.end
  %nr1472 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %163 = ptrtoint ptr %nr1472 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %nr1472, align 4
  %165 = zext i32 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.354)
  switch i32 %164, label %sw.bb1469.sw.epilog3676_crit_edge [
    i32 1, label %sw.bb1473
    i32 2, label %sw.bb1571
  ]

sw.bb1469.sw.epilog3676_crit_edge:                ; preds = %sw.bb1469
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

sw.bb1473:                                        ; preds = %sw.bb1469
  %call1476 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.175) #7
  %tobool1477.not = icmp eq ptr %call1476, null
  br i1 %tobool1477.not, label %cond.end1482, label %sw.bb1473.if.then1485_crit_edge

sw.bb1473.if.then1485_crit_edge:                  ; preds = %sw.bb1473
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1485

cond.end1482:                                     ; preds = %sw.bb1473
  %call1480 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.176) #7
  %call1481 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.175) #7
  %tobool1484.not = icmp eq ptr %call1481, null
  br i1 %tobool1484.not, label %do.end1494, label %cond.end1482.if.then1485_crit_edge

cond.end1482.if.then1485_crit_edge:               ; preds = %cond.end1482
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1485

if.then1485:                                      ; preds = %cond.end1482.if.then1485_crit_edge, %sw.bb1473.if.then1485_crit_edge
  %cond14834977 = phi ptr [ %call1481, %cond.end1482.if.then1485_crit_edge ], [ %call1476, %sw.bb1473.if.then1485_crit_edge ]
  %i2c_adap1486 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call1487 = tail call ptr %cond14834977(ptr noundef nonnull @netup_stv0900_config, ptr noundef %i2c_adap1486, i32 noundef 0) #7
  %cmp1488 = icmp eq ptr %call1487, null
  br i1 %cmp1488, label %if.then1489, label %if.then1504

if.then1489:                                      ; preds = %if.then1485
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.175) #7
  br label %if.end1497.thread

do.end1494:                                       ; preds = %cond.end1482
  call void @__sanitizer_cov_trace_pc() #9
  %call1496 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #10
  br label %if.end1497.thread

if.end1497.thread:                                ; preds = %do.end1494, %if.then1489
  %frontend15004979 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %166 = ptrtoint ptr %frontend15004979 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %frontend15004979, align 4
  br label %sw.epilog3676

if.then1504:                                      ; preds = %if.then1485
  %frontend1500 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %167 = ptrtoint ptr %frontend1500 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call1487, ptr %frontend1500, align 4
  %call1507 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.180) #7
  %tobool1508.not = icmp eq ptr %call1507, null
  br i1 %tobool1508.not, label %cond.end1513, label %if.then1504.if.then1516_crit_edge

if.then1504.if.then1516_crit_edge:                ; preds = %if.then1504
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1516

cond.end1513:                                     ; preds = %if.then1504
  %call1511 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.181) #7
  %call1512 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.180) #7
  %tobool1515.not = icmp eq ptr %call1512, null
  br i1 %tobool1515.not, label %do.end1527, label %cond.end1513.if.then1516_crit_edge

cond.end1513.if.then1516_crit_edge:               ; preds = %cond.end1513
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1516

if.then1516:                                      ; preds = %cond.end1513.if.then1516_crit_edge, %if.then1504.if.then1516_crit_edge
  %cond15144983 = phi ptr [ %call1512, %cond.end1513.if.then1516_crit_edge ], [ %call1507, %if.then1504.if.then1516_crit_edge ]
  %168 = ptrtoint ptr %frontend1500 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %frontend1500, align 4
  %call1520 = tail call ptr %cond15144983(ptr noundef %169, ptr noundef nonnull @netup_stv6110_tunerconfig_a, ptr noundef %i2c_adap1486) #7
  %cmp1521 = icmp eq ptr %call1520, null
  br i1 %cmp1521, label %if.then1522, label %if.then1533

if.then1522:                                      ; preds = %if.then1516
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.180) #7
  br label %sw.epilog3676

do.end1527:                                       ; preds = %cond.end1513
  call void @__sanitizer_cov_trace_pc() #9
  %call1529 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #10
  br label %sw.epilog3676

if.then1533:                                      ; preds = %if.then1516
  %call1536 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.185) #7
  %tobool1537.not = icmp eq ptr %call1536, null
  br i1 %tobool1537.not, label %cond.end1542, label %if.then1533.if.then1545_crit_edge

if.then1533.if.then1545_crit_edge:                ; preds = %if.then1533
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1545

cond.end1542:                                     ; preds = %if.then1533
  %call1540 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.186) #7
  %call1541 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.185) #7
  %tobool1544.not = icmp eq ptr %call1541, null
  br i1 %tobool1544.not, label %do.end1556, label %cond.end1542.if.then1545_crit_edge

cond.end1542.if.then1545_crit_edge:               ; preds = %cond.end1542
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1545

if.then1545:                                      ; preds = %cond.end1542.if.then1545_crit_edge, %if.then1533.if.then1545_crit_edge
  %cond15434988 = phi ptr [ %call1541, %cond.end1542.if.then1545_crit_edge ], [ %call1536, %if.then1533.if.then1545_crit_edge ]
  %170 = ptrtoint ptr %frontend1500 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %frontend1500, align 4
  %call1549 = tail call ptr %cond15434988(ptr noundef %171, ptr noundef %i2c_adap1486, i8 noundef zeroext -64, i8 noundef zeroext 32, i8 noundef zeroext 9) #7
  %cmp1550 = icmp eq ptr %call1549, null
  br i1 %cmp1550, label %if.then1551, label %if.then1545.sw.epilog3676_crit_edge

if.then1545.sw.epilog3676_crit_edge:              ; preds = %if.then1545
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then1551:                                      ; preds = %if.then1545
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.185) #7
  br label %do.end1565

do.end1556:                                       ; preds = %cond.end1542
  call void @__sanitizer_cov_trace_pc() #9
  %call1558 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188) #10
  br label %do.end1565

do.end1565:                                       ; preds = %do.end1556, %if.then1551
  %call1567 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191) #10
  br label %sw.epilog3676

sw.bb1571:                                        ; preds = %sw.bb1469
  %call1574 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.175) #7
  %tobool1575.not = icmp eq ptr %call1574, null
  br i1 %tobool1575.not, label %cond.end1580, label %sw.bb1571.if.then1583_crit_edge

sw.bb1571.if.then1583_crit_edge:                  ; preds = %sw.bb1571
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1583

cond.end1580:                                     ; preds = %sw.bb1571
  %call1578 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.176) #7
  %call1579 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.175) #7
  %tobool1582.not = icmp eq ptr %call1579, null
  br i1 %tobool1582.not, label %do.end1592, label %cond.end1580.if.then1583_crit_edge

cond.end1580.if.then1583_crit_edge:               ; preds = %cond.end1580
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1583

if.then1583:                                      ; preds = %cond.end1580.if.then1583_crit_edge, %sw.bb1571.if.then1583_crit_edge
  %cond15814993 = phi ptr [ %call1579, %cond.end1580.if.then1583_crit_edge ], [ %call1574, %sw.bb1571.if.then1583_crit_edge ]
  %i2c_adap1584 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call1585 = tail call ptr %cond15814993(ptr noundef nonnull @netup_stv0900_config, ptr noundef %i2c_adap1584, i32 noundef 1) #7
  %cmp1586 = icmp eq ptr %call1585, null
  br i1 %cmp1586, label %if.then1587, label %if.then1602

if.then1587:                                      ; preds = %if.then1583
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.175) #7
  br label %if.end1595.thread

do.end1592:                                       ; preds = %cond.end1580
  call void @__sanitizer_cov_trace_pc() #9
  %call1594 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #10
  br label %if.end1595.thread

if.end1595.thread:                                ; preds = %do.end1592, %if.then1587
  %frontend15984995 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %172 = ptrtoint ptr %frontend15984995 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %frontend15984995, align 4
  br label %sw.epilog3676

if.then1602:                                      ; preds = %if.then1583
  %frontend1598 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %173 = ptrtoint ptr %frontend1598 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call1585, ptr %frontend1598, align 4
  %call1605 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.180) #7
  %tobool1606.not = icmp eq ptr %call1605, null
  br i1 %tobool1606.not, label %cond.end1611, label %if.then1602.if.then1614_crit_edge

if.then1602.if.then1614_crit_edge:                ; preds = %if.then1602
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1614

cond.end1611:                                     ; preds = %if.then1602
  %call1609 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.181) #7
  %call1610 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.180) #7
  %tobool1613.not = icmp eq ptr %call1610, null
  br i1 %tobool1613.not, label %do.end1625, label %cond.end1611.if.then1614_crit_edge

cond.end1611.if.then1614_crit_edge:               ; preds = %cond.end1611
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1614

if.then1614:                                      ; preds = %cond.end1611.if.then1614_crit_edge, %if.then1602.if.then1614_crit_edge
  %cond16124999 = phi ptr [ %call1610, %cond.end1611.if.then1614_crit_edge ], [ %call1605, %if.then1602.if.then1614_crit_edge ]
  %174 = ptrtoint ptr %frontend1598 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %frontend1598, align 4
  %call1618 = tail call ptr %cond16124999(ptr noundef %175, ptr noundef nonnull @netup_stv6110_tunerconfig_b, ptr noundef %i2c_adap1584) #7
  %cmp1619 = icmp eq ptr %call1618, null
  br i1 %cmp1619, label %if.then1620, label %if.then1631

if.then1620:                                      ; preds = %if.then1614
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.180) #7
  br label %sw.epilog3676

do.end1625:                                       ; preds = %cond.end1611
  call void @__sanitizer_cov_trace_pc() #9
  %call1627 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #10
  br label %sw.epilog3676

if.then1631:                                      ; preds = %if.then1614
  %call1634 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.185) #7
  %tobool1635.not = icmp eq ptr %call1634, null
  br i1 %tobool1635.not, label %cond.end1640, label %if.then1631.if.then1643_crit_edge

if.then1631.if.then1643_crit_edge:                ; preds = %if.then1631
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1643

cond.end1640:                                     ; preds = %if.then1631
  %call1638 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.186) #7
  %call1639 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.185) #7
  %tobool1642.not = icmp eq ptr %call1639, null
  br i1 %tobool1642.not, label %do.end1654, label %cond.end1640.if.then1643_crit_edge

cond.end1640.if.then1643_crit_edge:               ; preds = %cond.end1640
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1643

if.then1643:                                      ; preds = %cond.end1640.if.then1643_crit_edge, %if.then1631.if.then1643_crit_edge
  %cond16415004 = phi ptr [ %call1639, %cond.end1640.if.then1643_crit_edge ], [ %call1634, %if.then1631.if.then1643_crit_edge ]
  %176 = ptrtoint ptr %frontend1598 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %frontend1598, align 4
  %call1647 = tail call ptr %cond16415004(ptr noundef %177, ptr noundef %i2c_adap1584, i8 noundef zeroext -64, i8 noundef zeroext 32, i8 noundef zeroext 10) #7
  %cmp1648 = icmp eq ptr %call1647, null
  br i1 %cmp1648, label %if.then1649, label %if.then1643.sw.epilog3676_crit_edge

if.then1643.sw.epilog3676_crit_edge:              ; preds = %if.then1643
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then1649:                                      ; preds = %if.then1643
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.185) #7
  br label %do.end1663

do.end1654:                                       ; preds = %cond.end1640
  call void @__sanitizer_cov_trace_pc() #9
  %call1656 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188) #10
  br label %do.end1663

do.end1663:                                       ; preds = %do.end1654, %if.then1649
  %call1665 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191) #10
  br label %sw.epilog3676

sw.bb1670:                                        ; preds = %if.end
  %call1677 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.201) #7
  %tobool1678.not = icmp eq ptr %call1677, null
  br i1 %tobool1678.not, label %cond.end1683, label %sw.bb1670.if.then1686_crit_edge

sw.bb1670.if.then1686_crit_edge:                  ; preds = %sw.bb1670
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1686

cond.end1683:                                     ; preds = %sw.bb1670
  %call1681 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.202) #7
  %call1682 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.201) #7
  %tobool1685.not = icmp eq ptr %call1682, null
  br i1 %tobool1685.not, label %do.end1695, label %cond.end1683.if.then1686_crit_edge

cond.end1683.if.then1686_crit_edge:               ; preds = %cond.end1683
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1686

if.then1686:                                      ; preds = %cond.end1683.if.then1686_crit_edge, %sw.bb1670.if.then1686_crit_edge
  %cond16845009 = phi ptr [ %call1682, %cond.end1683.if.then1686_crit_edge ], [ %call1677, %sw.bb1670.if.then1686_crit_edge ]
  %i2c_adap1687 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call1688 = tail call ptr %cond16845009(ptr noundef nonnull @mygica_x8506_lgs8gl5_config, ptr noundef %i2c_adap1687) #7
  %cmp1689 = icmp eq ptr %call1688, null
  br i1 %cmp1689, label %if.then1690, label %if.end1706

if.then1690:                                      ; preds = %if.then1686
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.201) #7
  br label %if.end1698.thread

do.end1695:                                       ; preds = %cond.end1683
  call void @__sanitizer_cov_trace_pc() #9
  %call1697 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204) #10
  br label %if.end1698.thread

if.end1698.thread:                                ; preds = %do.end1695, %if.then1690
  %frontend17015011 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %178 = ptrtoint ptr %frontend17015011 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %frontend17015011, align 4
  br label %sw.epilog3676

if.end1706:                                       ; preds = %if.then1686
  %frontend1701 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %179 = ptrtoint ptr %frontend1701 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call1688, ptr %frontend1701, align 4
  %call1709 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool1710.not = icmp eq ptr %call1709, null
  br i1 %tobool1710.not, label %cond.end1715, label %if.end1706.if.then1718_crit_edge

if.end1706.if.then1718_crit_edge:                 ; preds = %if.end1706
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1718

cond.end1715:                                     ; preds = %if.end1706
  %call1713 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.74) #7
  %call1714 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool1717.not = icmp eq ptr %call1714, null
  br i1 %tobool1717.not, label %do.end1729, label %cond.end1715.if.then1718_crit_edge

cond.end1715.if.then1718_crit_edge:               ; preds = %cond.end1715
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1718

if.then1718:                                      ; preds = %cond.end1715.if.then1718_crit_edge, %if.end1706.if.then1718_crit_edge
  %cond17165015 = phi ptr [ %call1714, %cond.end1715.if.then1718_crit_edge ], [ %call1709, %if.end1706.if.then1718_crit_edge ]
  %180 = ptrtoint ptr %frontend1701 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %frontend1701, align 4
  %i2c_adap1721 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call1722 = tail call ptr %cond17165015(ptr noundef %181, ptr noundef %i2c_adap1721, ptr noundef nonnull @mygica_x8506_xc5000_config) #7
  %cmp1723 = icmp eq ptr %call1722, null
  br i1 %cmp1723, label %if.then1724, label %if.then1718.if.end1732_crit_edge

if.then1718.if.end1732_crit_edge:                 ; preds = %if.then1718
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1732

if.then1724:                                      ; preds = %if.then1718
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.73) #7
  br label %if.end1732

do.end1729:                                       ; preds = %cond.end1715
  call void @__sanitizer_cov_trace_pc() #9
  %call1731 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #10
  br label %if.end1732

if.end1732:                                       ; preds = %do.end1729, %if.then1724, %if.then1718.if.end1732_crit_edge
  %182 = ptrtoint ptr %frontend1701 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %frontend1701, align 4
  %set_frontend.i4585 = getelementptr inbounds %struct.dvb_frontend, ptr %183, i32 0, i32 1, i32 12
  %184 = ptrtoint ptr %set_frontend.i4585 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %set_frontend.i4585, align 4
  %set_frontend1.i4586 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 40
  %186 = ptrtoint ptr %set_frontend1.i4586 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %185, ptr %set_frontend1.i4586, align 4
  store ptr @cx23885_dvb_set_frontend, ptr %set_frontend.i4585, align 4
  br label %sw.epilog3676

sw.bb1736:                                        ; preds = %if.end
  %call1743 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.208) #7
  %tobool1744.not = icmp eq ptr %call1743, null
  br i1 %tobool1744.not, label %cond.end1749, label %sw.bb1736.if.then1752_crit_edge

sw.bb1736.if.then1752_crit_edge:                  ; preds = %sw.bb1736
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1752

cond.end1749:                                     ; preds = %sw.bb1736
  %call1747 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.209) #7
  %call1748 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.208) #7
  %tobool1751.not = icmp eq ptr %call1748, null
  br i1 %tobool1751.not, label %do.end1761, label %cond.end1749.if.then1752_crit_edge

cond.end1749.if.then1752_crit_edge:               ; preds = %cond.end1749
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1752

if.then1752:                                      ; preds = %cond.end1749.if.then1752_crit_edge, %sw.bb1736.if.then1752_crit_edge
  %cond17505018 = phi ptr [ %call1748, %cond.end1749.if.then1752_crit_edge ], [ %call1743, %sw.bb1736.if.then1752_crit_edge ]
  %i2c_adap1753 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call1754 = tail call ptr %cond17505018(ptr noundef nonnull @mygica_x8507_mb86a20s_config, ptr noundef %i2c_adap1753) #7
  %cmp1755 = icmp eq ptr %call1754, null
  br i1 %cmp1755, label %if.then1756, label %if.end1772

if.then1756:                                      ; preds = %if.then1752
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.208) #7
  br label %if.end1764.thread

do.end1761:                                       ; preds = %cond.end1749
  call void @__sanitizer_cov_trace_pc() #9
  %call1763 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211) #10
  br label %if.end1764.thread

if.end1764.thread:                                ; preds = %do.end1761, %if.then1756
  %frontend17675020 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %187 = ptrtoint ptr %frontend17675020 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %frontend17675020, align 4
  br label %sw.epilog3676

if.end1772:                                       ; preds = %if.then1752
  %frontend1767 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %188 = ptrtoint ptr %frontend1767 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call1754, ptr %frontend1767, align 4
  %call1775 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool1776.not = icmp eq ptr %call1775, null
  br i1 %tobool1776.not, label %cond.end1781, label %if.end1772.if.then1784_crit_edge

if.end1772.if.then1784_crit_edge:                 ; preds = %if.end1772
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1784

cond.end1781:                                     ; preds = %if.end1772
  %call1779 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.74) #7
  %call1780 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool1783.not = icmp eq ptr %call1780, null
  br i1 %tobool1783.not, label %do.end1795, label %cond.end1781.if.then1784_crit_edge

cond.end1781.if.then1784_crit_edge:               ; preds = %cond.end1781
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1784

if.then1784:                                      ; preds = %cond.end1781.if.then1784_crit_edge, %if.end1772.if.then1784_crit_edge
  %cond17825024 = phi ptr [ %call1780, %cond.end1781.if.then1784_crit_edge ], [ %call1775, %if.end1772.if.then1784_crit_edge ]
  %189 = ptrtoint ptr %frontend1767 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %frontend1767, align 4
  %i2c_adap1787 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call1788 = tail call ptr %cond17825024(ptr noundef %190, ptr noundef %i2c_adap1787, ptr noundef nonnull @mygica_x8507_xc5000_config) #7
  %cmp1789 = icmp eq ptr %call1788, null
  br i1 %cmp1789, label %if.then1790, label %if.then1784.if.end1798_crit_edge

if.then1784.if.end1798_crit_edge:                 ; preds = %if.then1784
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1798

if.then1790:                                      ; preds = %if.then1784
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.73) #7
  br label %if.end1798

do.end1795:                                       ; preds = %cond.end1781
  call void @__sanitizer_cov_trace_pc() #9
  %call1797 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #10
  br label %if.end1798

if.end1798:                                       ; preds = %do.end1795, %if.then1790, %if.then1784.if.end1798_crit_edge
  %191 = ptrtoint ptr %frontend1767 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %frontend1767, align 4
  %set_frontend.i4587 = getelementptr inbounds %struct.dvb_frontend, ptr %192, i32 0, i32 1, i32 12
  %193 = ptrtoint ptr %set_frontend.i4587 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %set_frontend.i4587, align 4
  %set_frontend1.i4588 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 40
  %195 = ptrtoint ptr %set_frontend1.i4588 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %194, ptr %set_frontend1.i4588, align 4
  store ptr @cx23885_dvb_set_frontend, ptr %set_frontend.i4587, align 4
  br label %sw.epilog3676

sw.bb1802:                                        ; preds = %if.end
  %call1809 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.201) #7
  %tobool1810.not = icmp eq ptr %call1809, null
  br i1 %tobool1810.not, label %cond.end1815, label %sw.bb1802.if.then1818_crit_edge

sw.bb1802.if.then1818_crit_edge:                  ; preds = %sw.bb1802
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1818

cond.end1815:                                     ; preds = %sw.bb1802
  %call1813 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.202) #7
  %call1814 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.201) #7
  %tobool1817.not = icmp eq ptr %call1814, null
  br i1 %tobool1817.not, label %do.end1827, label %cond.end1815.if.then1818_crit_edge

cond.end1815.if.then1818_crit_edge:               ; preds = %cond.end1815
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1818

if.then1818:                                      ; preds = %cond.end1815.if.then1818_crit_edge, %sw.bb1802.if.then1818_crit_edge
  %cond18165027 = phi ptr [ %call1814, %cond.end1815.if.then1818_crit_edge ], [ %call1809, %sw.bb1802.if.then1818_crit_edge ]
  %i2c_adap1819 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call1820 = tail call ptr %cond18165027(ptr noundef nonnull @magicpro_prohdtve2_lgs8g75_config, ptr noundef %i2c_adap1819) #7
  %cmp1821 = icmp eq ptr %call1820, null
  br i1 %cmp1821, label %if.then1822, label %if.end1838

if.then1822:                                      ; preds = %if.then1818
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.201) #7
  br label %if.end1830.thread

do.end1827:                                       ; preds = %cond.end1815
  call void @__sanitizer_cov_trace_pc() #9
  %call1829 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204) #10
  br label %if.end1830.thread

if.end1830.thread:                                ; preds = %do.end1827, %if.then1822
  %frontend18335029 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %196 = ptrtoint ptr %frontend18335029 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %frontend18335029, align 4
  br label %sw.epilog3676

if.end1838:                                       ; preds = %if.then1818
  %frontend1833 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %197 = ptrtoint ptr %frontend1833 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call1820, ptr %frontend1833, align 4
  %call1841 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool1842.not = icmp eq ptr %call1841, null
  br i1 %tobool1842.not, label %cond.end1847, label %if.end1838.if.then1850_crit_edge

if.end1838.if.then1850_crit_edge:                 ; preds = %if.end1838
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1850

cond.end1847:                                     ; preds = %if.end1838
  %call1845 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.74) #7
  %call1846 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool1849.not = icmp eq ptr %call1846, null
  br i1 %tobool1849.not, label %do.end1861, label %cond.end1847.if.then1850_crit_edge

cond.end1847.if.then1850_crit_edge:               ; preds = %cond.end1847
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1850

if.then1850:                                      ; preds = %cond.end1847.if.then1850_crit_edge, %if.end1838.if.then1850_crit_edge
  %cond18485033 = phi ptr [ %call1846, %cond.end1847.if.then1850_crit_edge ], [ %call1841, %if.end1838.if.then1850_crit_edge ]
  %198 = ptrtoint ptr %frontend1833 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %frontend1833, align 4
  %i2c_adap1853 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call1854 = tail call ptr %cond18485033(ptr noundef %199, ptr noundef %i2c_adap1853, ptr noundef nonnull @magicpro_prohdtve2_xc5000_config) #7
  %cmp1855 = icmp eq ptr %call1854, null
  br i1 %cmp1855, label %if.then1856, label %if.then1850.if.end1864_crit_edge

if.then1850.if.end1864_crit_edge:                 ; preds = %if.then1850
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1864

if.then1856:                                      ; preds = %if.then1850
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.73) #7
  br label %if.end1864

do.end1861:                                       ; preds = %cond.end1847
  call void @__sanitizer_cov_trace_pc() #9
  %call1863 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #10
  br label %if.end1864

if.end1864:                                       ; preds = %do.end1861, %if.then1856, %if.then1850.if.end1864_crit_edge
  %200 = ptrtoint ptr %frontend1833 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %frontend1833, align 4
  %set_frontend.i4589 = getelementptr inbounds %struct.dvb_frontend, ptr %201, i32 0, i32 1, i32 12
  %202 = ptrtoint ptr %set_frontend.i4589 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %set_frontend.i4589, align 4
  %set_frontend1.i4590 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 40
  %204 = ptrtoint ptr %set_frontend1.i4590 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %203, ptr %set_frontend1.i4590, align 4
  store ptr @cx23885_dvb_set_frontend, ptr %set_frontend.i4589, align 4
  br label %sw.epilog3676

sw.bb1868:                                        ; preds = %if.end
  %call1873 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #7
  %tobool1874.not = icmp eq ptr %call1873, null
  br i1 %tobool1874.not, label %cond.end1879, label %sw.bb1868.if.then1882_crit_edge

sw.bb1868.if.then1882_crit_edge:                  ; preds = %sw.bb1868
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1882

cond.end1879:                                     ; preds = %sw.bb1868
  %call1877 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.38) #7
  %call1878 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #7
  %tobool1881.not = icmp eq ptr %call1878, null
  br i1 %tobool1881.not, label %do.end1891, label %cond.end1879.if.then1882_crit_edge

cond.end1879.if.then1882_crit_edge:               ; preds = %cond.end1879
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1882

if.then1882:                                      ; preds = %cond.end1879.if.then1882_crit_edge, %sw.bb1868.if.then1882_crit_edge
  %cond18805036 = phi ptr [ %call1878, %cond.end1879.if.then1882_crit_edge ], [ %call1873, %sw.bb1868.if.then1882_crit_edge ]
  %i2c_adap1883 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call1884 = tail call ptr %cond18805036(ptr noundef nonnull @hcw_s5h1411_config, ptr noundef %i2c_adap1883) #7
  %cmp1885 = icmp eq ptr %call1884, null
  br i1 %cmp1885, label %if.then1886, label %if.end1902

if.then1886:                                      ; preds = %if.then1882
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.37) #7
  br label %if.end1894.thread

do.end1891:                                       ; preds = %cond.end1879
  call void @__sanitizer_cov_trace_pc() #9
  %call1893 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  br label %if.end1894.thread

if.end1894.thread:                                ; preds = %do.end1891, %if.then1886
  %frontend18975038 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %205 = ptrtoint ptr %frontend18975038 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %frontend18975038, align 4
  br label %sw.epilog3676

if.end1902:                                       ; preds = %if.then1882
  %frontend1897 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %206 = ptrtoint ptr %frontend1897 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call1884, ptr %frontend1897, align 4
  %call1905 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool1906.not = icmp eq ptr %call1905, null
  br i1 %tobool1906.not, label %cond.end1911, label %if.end1902.if.then1914_crit_edge

if.end1902.if.then1914_crit_edge:                 ; preds = %if.end1902
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1914

cond.end1911:                                     ; preds = %if.end1902
  %call1909 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #7
  %call1910 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool1913.not = icmp eq ptr %call1910, null
  br i1 %tobool1913.not, label %do.end1927, label %cond.end1911.if.then1914_crit_edge

cond.end1911.if.then1914_crit_edge:               ; preds = %cond.end1911
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1914

if.then1914:                                      ; preds = %cond.end1911.if.then1914_crit_edge, %if.end1902.if.then1914_crit_edge
  %cond19125042 = phi ptr [ %call1910, %cond.end1911.if.then1914_crit_edge ], [ %call1905, %if.end1902.if.then1914_crit_edge ]
  %207 = ptrtoint ptr %frontend1897 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %frontend1897, align 4
  %call1920 = tail call ptr %cond19125042(ptr noundef %208, i8 noundef zeroext 96, ptr noundef %i2c_adap1883, ptr noundef nonnull @hauppauge_tda18271_config) #7
  %cmp1921 = icmp eq ptr %call1920, null
  br i1 %cmp1921, label %if.then1922, label %if.then1914.if.end1930_crit_edge

if.then1914.if.end1930_crit_edge:                 ; preds = %if.then1914
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1930

if.then1922:                                      ; preds = %if.then1914
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #7
  br label %if.end1930

do.end1927:                                       ; preds = %cond.end1911
  call void @__sanitizer_cov_trace_pc() #9
  %call1929 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %if.end1930

if.end1930:                                       ; preds = %do.end1927, %if.then1922, %if.then1914.if.end1930_crit_edge
  %analog_fe1933 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 20, i32 35
  %i2c_adap1936 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call1937 = tail call ptr @tda18271_attach(ptr noundef %analog_fe1933, i8 noundef zeroext 96, ptr noundef %i2c_adap1936, ptr noundef nonnull @hauppauge_tda18271_config) #7
  br label %sw.epilog3676

sw.bb1938:                                        ; preds = %if.end
  %call1943 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #7
  %tobool1944.not = icmp eq ptr %call1943, null
  br i1 %tobool1944.not, label %cond.end1949, label %sw.bb1938.if.then1952_crit_edge

sw.bb1938.if.then1952_crit_edge:                  ; preds = %sw.bb1938
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1952

cond.end1949:                                     ; preds = %sw.bb1938
  %call1947 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.38) #7
  %call1948 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #7
  %tobool1951.not = icmp eq ptr %call1948, null
  br i1 %tobool1951.not, label %do.end1961, label %cond.end1949.if.then1952_crit_edge

cond.end1949.if.then1952_crit_edge:               ; preds = %cond.end1949
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1952

if.then1952:                                      ; preds = %cond.end1949.if.then1952_crit_edge, %sw.bb1938.if.then1952_crit_edge
  %cond19505045 = phi ptr [ %call1948, %cond.end1949.if.then1952_crit_edge ], [ %call1943, %sw.bb1938.if.then1952_crit_edge ]
  %i2c_adap1953 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call1954 = tail call ptr %cond19505045(ptr noundef nonnull @hcw_s5h1411_config, ptr noundef %i2c_adap1953) #7
  %cmp1955 = icmp eq ptr %call1954, null
  br i1 %cmp1955, label %if.then1956, label %if.end1972

if.then1956:                                      ; preds = %if.then1952
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.37) #7
  br label %if.end1964.thread

do.end1961:                                       ; preds = %cond.end1949
  call void @__sanitizer_cov_trace_pc() #9
  %call1963 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  br label %if.end1964.thread

if.end1964.thread:                                ; preds = %do.end1961, %if.then1956
  %frontend19675047 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %209 = ptrtoint ptr %frontend19675047 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %frontend19675047, align 4
  br label %sw.epilog3676

if.end1972:                                       ; preds = %if.then1952
  %frontend1967 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %210 = ptrtoint ptr %frontend1967 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call1954, ptr %frontend1967, align 4
  %call1975 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool1976.not = icmp eq ptr %call1975, null
  br i1 %tobool1976.not, label %cond.end1981, label %if.end1972.if.then1984_crit_edge

if.end1972.if.then1984_crit_edge:                 ; preds = %if.end1972
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1984

cond.end1981:                                     ; preds = %if.end1972
  %call1979 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #7
  %call1980 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool1983.not = icmp eq ptr %call1980, null
  br i1 %tobool1983.not, label %do.end1997, label %cond.end1981.if.then1984_crit_edge

cond.end1981.if.then1984_crit_edge:               ; preds = %cond.end1981
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1984

if.then1984:                                      ; preds = %cond.end1981.if.then1984_crit_edge, %if.end1972.if.then1984_crit_edge
  %cond19825051 = phi ptr [ %call1980, %cond.end1981.if.then1984_crit_edge ], [ %call1975, %if.end1972.if.then1984_crit_edge ]
  %211 = ptrtoint ptr %frontend1967 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %frontend1967, align 4
  %call1990 = tail call ptr %cond19825051(ptr noundef %212, i8 noundef zeroext 96, ptr noundef %i2c_adap1953, ptr noundef nonnull @hauppauge_tda18271_config) #7
  %cmp1991 = icmp eq ptr %call1990, null
  br i1 %cmp1991, label %if.then1992, label %if.then1984.sw.epilog3676_crit_edge

if.then1984.sw.epilog3676_crit_edge:              ; preds = %if.then1984
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then1992:                                      ; preds = %if.then1984
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.32) #7
  br label %sw.epilog3676

do.end1997:                                       ; preds = %cond.end1981
  call void @__sanitizer_cov_trace_pc() #9
  %call1999 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %sw.epilog3676

sw.bb2002:                                        ; preds = %if.end
  %nr2003 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %213 = ptrtoint ptr %nr2003 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %nr2003, align 4
  %215 = zext i32 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.355)
  switch i32 %214, label %sw.bb2002.sw.epilog3676_crit_edge [
    i32 1, label %sw.bb2004
    i32 2, label %sw.bb2066
  ]

sw.bb2002.sw.epilog3676_crit_edge:                ; preds = %sw.bb2002
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

sw.bb2004:                                        ; preds = %sw.bb2002
  %call2009 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.227) #7
  %tobool2010.not = icmp eq ptr %call2009, null
  br i1 %tobool2010.not, label %cond.end2015, label %sw.bb2004.if.then2018_crit_edge

sw.bb2004.if.then2018_crit_edge:                  ; preds = %sw.bb2004
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2018

cond.end2015:                                     ; preds = %sw.bb2004
  %call2013 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.228) #7
  %call2014 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.227) #7
  %tobool2017.not = icmp eq ptr %call2014, null
  br i1 %tobool2017.not, label %do.end2027, label %cond.end2015.if.then2018_crit_edge

cond.end2015.if.then2018_crit_edge:               ; preds = %cond.end2015
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2018

if.then2018:                                      ; preds = %cond.end2015.if.then2018_crit_edge, %sw.bb2004.if.then2018_crit_edge
  %cond20165054 = phi ptr [ %call2014, %cond.end2015.if.then2018_crit_edge ], [ %call2009, %sw.bb2004.if.then2018_crit_edge ]
  %i2c_adap2019 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call2020 = tail call ptr %cond20165054(ptr noundef nonnull @mygica_x8558pro_atbm8830_cfg1, ptr noundef %i2c_adap2019) #7
  %cmp2021 = icmp eq ptr %call2020, null
  br i1 %cmp2021, label %if.then2022, label %if.end2038

if.then2022:                                      ; preds = %if.then2018
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.227) #7
  br label %if.end2030.thread

do.end2027:                                       ; preds = %cond.end2015
  call void @__sanitizer_cov_trace_pc() #9
  %call2029 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230) #10
  br label %if.end2030.thread

if.end2030.thread:                                ; preds = %do.end2027, %if.then2022
  %frontend20335056 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %216 = ptrtoint ptr %frontend20335056 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %frontend20335056, align 4
  br label %sw.epilog3676

if.end2038:                                       ; preds = %if.then2018
  %frontend2033 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %217 = ptrtoint ptr %frontend2033 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call2020, ptr %frontend2033, align 4
  %call2041 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.232) #7
  %tobool2042.not = icmp eq ptr %call2041, null
  br i1 %tobool2042.not, label %cond.end2047, label %if.end2038.if.then2050_crit_edge

if.end2038.if.then2050_crit_edge:                 ; preds = %if.end2038
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2050

cond.end2047:                                     ; preds = %if.end2038
  %call2045 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.233) #7
  %call2046 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.232) #7
  %tobool2049.not = icmp eq ptr %call2046, null
  br i1 %tobool2049.not, label %do.end2061, label %cond.end2047.if.then2050_crit_edge

cond.end2047.if.then2050_crit_edge:               ; preds = %cond.end2047
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2050

if.then2050:                                      ; preds = %cond.end2047.if.then2050_crit_edge, %if.end2038.if.then2050_crit_edge
  %cond20485060 = phi ptr [ %call2046, %cond.end2047.if.then2050_crit_edge ], [ %call2041, %if.end2038.if.then2050_crit_edge ]
  %218 = ptrtoint ptr %frontend2033 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %frontend2033, align 4
  %call2054 = tail call ptr %cond20485060(ptr noundef %219, ptr noundef %i2c_adap2019, ptr noundef nonnull @mygic_x8558pro_max2165_cfg1) #7
  %cmp2055 = icmp eq ptr %call2054, null
  br i1 %cmp2055, label %if.then2056, label %if.then2050.sw.epilog3676_crit_edge

if.then2050.sw.epilog3676_crit_edge:              ; preds = %if.then2050
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then2056:                                      ; preds = %if.then2050
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.232) #7
  br label %sw.epilog3676

do.end2061:                                       ; preds = %cond.end2047
  call void @__sanitizer_cov_trace_pc() #9
  %call2063 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235) #10
  br label %sw.epilog3676

sw.bb2066:                                        ; preds = %sw.bb2002
  %call2071 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.227) #7
  %tobool2072.not = icmp eq ptr %call2071, null
  br i1 %tobool2072.not, label %cond.end2077, label %sw.bb2066.if.then2080_crit_edge

sw.bb2066.if.then2080_crit_edge:                  ; preds = %sw.bb2066
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2080

cond.end2077:                                     ; preds = %sw.bb2066
  %call2075 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.228) #7
  %call2076 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.227) #7
  %tobool2079.not = icmp eq ptr %call2076, null
  br i1 %tobool2079.not, label %do.end2089, label %cond.end2077.if.then2080_crit_edge

cond.end2077.if.then2080_crit_edge:               ; preds = %cond.end2077
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2080

if.then2080:                                      ; preds = %cond.end2077.if.then2080_crit_edge, %sw.bb2066.if.then2080_crit_edge
  %cond20785063 = phi ptr [ %call2076, %cond.end2077.if.then2080_crit_edge ], [ %call2071, %sw.bb2066.if.then2080_crit_edge ]
  %i2c_adap2081 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call2082 = tail call ptr %cond20785063(ptr noundef nonnull @mygica_x8558pro_atbm8830_cfg2, ptr noundef %i2c_adap2081) #7
  %cmp2083 = icmp eq ptr %call2082, null
  br i1 %cmp2083, label %if.then2084, label %if.end2100

if.then2084:                                      ; preds = %if.then2080
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.227) #7
  br label %if.end2092.thread

do.end2089:                                       ; preds = %cond.end2077
  call void @__sanitizer_cov_trace_pc() #9
  %call2091 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230) #10
  br label %if.end2092.thread

if.end2092.thread:                                ; preds = %do.end2089, %if.then2084
  %frontend20955065 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %220 = ptrtoint ptr %frontend20955065 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %frontend20955065, align 4
  br label %sw.epilog3676

if.end2100:                                       ; preds = %if.then2080
  %frontend2095 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %221 = ptrtoint ptr %frontend2095 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call2082, ptr %frontend2095, align 4
  %call2103 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.232) #7
  %tobool2104.not = icmp eq ptr %call2103, null
  br i1 %tobool2104.not, label %cond.end2109, label %if.end2100.if.then2112_crit_edge

if.end2100.if.then2112_crit_edge:                 ; preds = %if.end2100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2112

cond.end2109:                                     ; preds = %if.end2100
  %call2107 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.233) #7
  %call2108 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.232) #7
  %tobool2111.not = icmp eq ptr %call2108, null
  br i1 %tobool2111.not, label %do.end2123, label %cond.end2109.if.then2112_crit_edge

cond.end2109.if.then2112_crit_edge:               ; preds = %cond.end2109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2112

if.then2112:                                      ; preds = %cond.end2109.if.then2112_crit_edge, %if.end2100.if.then2112_crit_edge
  %cond21105069 = phi ptr [ %call2108, %cond.end2109.if.then2112_crit_edge ], [ %call2103, %if.end2100.if.then2112_crit_edge ]
  %222 = ptrtoint ptr %frontend2095 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %frontend2095, align 4
  %call2116 = tail call ptr %cond21105069(ptr noundef %223, ptr noundef %i2c_adap2081, ptr noundef nonnull @mygic_x8558pro_max2165_cfg2) #7
  %cmp2117 = icmp eq ptr %call2116, null
  br i1 %cmp2117, label %if.then2118, label %if.then2112.sw.epilog3676_crit_edge

if.then2112.sw.epilog3676_crit_edge:              ; preds = %if.then2112
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then2118:                                      ; preds = %if.then2112
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.232) #7
  br label %sw.epilog3676

do.end2123:                                       ; preds = %cond.end2109
  call void @__sanitizer_cov_trace_pc() #9
  %call2125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235) #10
  br label %sw.epilog3676

sw.bb2129:                                        ; preds = %if.end
  %nr2130 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %224 = ptrtoint ptr %nr2130 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %nr2130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %225)
  %cmp2131 = icmp ugt i32 %225, 2
  br i1 %cmp2131, label %sw.bb2129.cleanup3779_crit_edge, label %if.end2133

sw.bb2129.cleanup3779_crit_edge:                  ; preds = %sw.bb2129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup3779

if.end2133:                                       ; preds = %sw.bb2129
  %call2140 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.241) #7
  %tobool2141.not = icmp eq ptr %call2140, null
  br i1 %tobool2141.not, label %cond.end2146, label %if.end2133.if.then2149_crit_edge

if.end2133.if.then2149_crit_edge:                 ; preds = %if.end2133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2149

cond.end2146:                                     ; preds = %if.end2133
  %call2144 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.242) #7
  %call2145 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.241) #7
  %tobool2148.not = icmp eq ptr %call2145, null
  br i1 %tobool2148.not, label %do.end2161, label %cond.end2146.if.then2149_crit_edge

cond.end2146.if.then2149_crit_edge:               ; preds = %cond.end2146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2149

if.then2149:                                      ; preds = %cond.end2146.if.then2149_crit_edge, %if.end2133.if.then2149_crit_edge
  %cond21475072 = phi ptr [ %call2145, %cond.end2146.if.then2149_crit_edge ], [ %call2140, %if.end2133.if.then2149_crit_edge ]
  %226 = ptrtoint ptr %nr2130 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %nr2130, align 4
  %sub2151 = add i32 %227, -1
  %arrayidx2152 = getelementptr [2 x %struct.stv0367_config], ptr @netup_stv0367_config, i32 0, i32 %sub2151
  %i2c_adap2153 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call2154 = tail call ptr %cond21475072(ptr noundef %arrayidx2152, ptr noundef %i2c_adap2153) #7
  %cmp2155 = icmp eq ptr %call2154, null
  br i1 %cmp2155, label %if.then2156, label %if.end2172

if.then2156:                                      ; preds = %if.then2149
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.241) #7
  br label %if.end2164.thread

do.end2161:                                       ; preds = %cond.end2146
  call void @__sanitizer_cov_trace_pc() #9
  %call2163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244) #10
  br label %if.end2164.thread

if.end2164.thread:                                ; preds = %do.end2161, %if.then2156
  %frontend21675074 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %228 = ptrtoint ptr %frontend21675074 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr null, ptr %frontend21675074, align 4
  br label %sw.epilog3676

if.end2172:                                       ; preds = %if.then2149
  %frontend2167 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %229 = ptrtoint ptr %frontend2167 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call2154, ptr %frontend2167, align 4
  %call2175 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool2176.not = icmp eq ptr %call2175, null
  br i1 %tobool2176.not, label %cond.end2181, label %if.end2172.if.then2184_crit_edge

if.end2172.if.then2184_crit_edge:                 ; preds = %if.end2172
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2184

cond.end2181:                                     ; preds = %if.end2172
  %call2179 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.74) #7
  %call2180 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool2183.not = icmp eq ptr %call2180, null
  br i1 %tobool2183.not, label %do.end2198, label %cond.end2181.if.then2184_crit_edge

cond.end2181.if.then2184_crit_edge:               ; preds = %cond.end2181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2184

if.then2184:                                      ; preds = %cond.end2181.if.then2184_crit_edge, %if.end2172.if.then2184_crit_edge
  %cond21825078 = phi ptr [ %call2180, %cond.end2181.if.then2184_crit_edge ], [ %call2175, %if.end2172.if.then2184_crit_edge ]
  %230 = ptrtoint ptr %frontend2167 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %frontend2167, align 4
  %232 = ptrtoint ptr %nr2130 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %nr2130, align 4
  %sub2189 = add i32 %233, -1
  %arrayidx2190 = getelementptr [2 x %struct.xc5000_config], ptr @netup_xc5000_config, i32 0, i32 %sub2189
  %call2191 = tail call ptr %cond21825078(ptr noundef %231, ptr noundef %i2c_adap2153, ptr noundef %arrayidx2190) #7
  %cmp2192 = icmp eq ptr %call2191, null
  br i1 %cmp2192, label %if.then2193, label %if.end2205

if.then2193:                                      ; preds = %if.then2184
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.73) #7
  br label %frontend_detach

do.end2198:                                       ; preds = %cond.end2181
  call void @__sanitizer_cov_trace_pc() #9
  %call2200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #10
  br label %frontend_detach

if.end2205:                                       ; preds = %if.then2184
  %234 = ptrtoint ptr %frontend2167 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %frontend2167, align 4
  %init2210 = getelementptr inbounds %struct.dvb_frontend, ptr %235, i32 0, i32 1, i32 32, i32 2
  %236 = ptrtoint ptr %init2210 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %init2210, align 4
  %call2213 = tail call i32 %237(ptr noundef %235) #7
  %call2215 = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 2) #7
  %cmp2216 = icmp eq ptr %call2215, null
  br i1 %cmp2216, label %if.end2205.frontend_detach_crit_edge, label %if.end2218

if.end2205.frontend_detach_crit_edge:             ; preds = %if.end2205
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end2218:                                       ; preds = %if.end2205
  %call2221 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.248) #7
  %tobool2222.not = icmp eq ptr %call2221, null
  br i1 %tobool2222.not, label %cond.end2227, label %if.end2218.if.then2230_crit_edge

if.end2218.if.then2230_crit_edge:                 ; preds = %if.end2218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2230

cond.end2227:                                     ; preds = %if.end2218
  %call2225 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.249) #7
  %call2226 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.248) #7
  %tobool2229.not = icmp eq ptr %call2226, null
  br i1 %tobool2229.not, label %do.end2242, label %cond.end2227.if.then2230_crit_edge

cond.end2227.if.then2230_crit_edge:               ; preds = %cond.end2227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2230

if.then2230:                                      ; preds = %cond.end2227.if.then2230_crit_edge, %if.end2218.if.then2230_crit_edge
  %cond22285083 = phi ptr [ %call2226, %cond.end2227.if.then2230_crit_edge ], [ %call2221, %if.end2218.if.then2230_crit_edge ]
  %238 = ptrtoint ptr %nr2130 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %nr2130, align 4
  %sub2232 = add i32 %239, -1
  %arrayidx2233 = getelementptr [2 x %struct.stv0367_config], ptr @netup_stv0367_config, i32 0, i32 %sub2232
  %call2235 = tail call ptr %cond22285083(ptr noundef %arrayidx2233, ptr noundef %i2c_adap2153) #7
  %cmp2236 = icmp eq ptr %call2235, null
  br i1 %cmp2236, label %if.then2237, label %if.end2253

if.then2237:                                      ; preds = %if.then2230
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.248) #7
  br label %if.end2245.thread

do.end2242:                                       ; preds = %cond.end2227
  call void @__sanitizer_cov_trace_pc() #9
  %call2244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251) #10
  br label %if.end2245.thread

if.end2245.thread:                                ; preds = %do.end2242, %if.then2237
  %frontend22485085 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2215, i32 0, i32 2, i32 1
  %240 = ptrtoint ptr %frontend22485085 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr null, ptr %frontend22485085, align 4
  br label %sw.epilog3676

if.end2253:                                       ; preds = %if.then2230
  %frontend2248 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2215, i32 0, i32 2, i32 1
  %241 = ptrtoint ptr %frontend2248 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call2235, ptr %frontend2248, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %call2235, i32 0, i32 10
  %242 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 1, ptr %id, align 4
  %call2258 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool2259.not = icmp eq ptr %call2258, null
  br i1 %tobool2259.not, label %cond.end2264, label %if.end2253.if.then2267_crit_edge

if.end2253.if.then2267_crit_edge:                 ; preds = %if.end2253
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2267

cond.end2264:                                     ; preds = %if.end2253
  %call2262 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.74) #7
  %call2263 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.73) #7
  %tobool2266.not = icmp eq ptr %call2263, null
  br i1 %tobool2266.not, label %do.end2281, label %cond.end2264.if.then2267_crit_edge

cond.end2264.if.then2267_crit_edge:               ; preds = %cond.end2264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2267

if.then2267:                                      ; preds = %cond.end2264.if.then2267_crit_edge, %if.end2253.if.then2267_crit_edge
  %cond22655089 = phi ptr [ %call2263, %cond.end2264.if.then2267_crit_edge ], [ %call2258, %if.end2253.if.then2267_crit_edge ]
  %243 = ptrtoint ptr %frontend2248 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %frontend2248, align 4
  %245 = ptrtoint ptr %nr2130 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %nr2130, align 4
  %sub2272 = add i32 %246, -1
  %arrayidx2273 = getelementptr [2 x %struct.xc5000_config], ptr @netup_xc5000_config, i32 0, i32 %sub2272
  %call2274 = tail call ptr %cond22655089(ptr noundef %244, ptr noundef %i2c_adap2153, ptr noundef %arrayidx2273) #7
  %cmp2275 = icmp eq ptr %call2274, null
  br i1 %cmp2275, label %if.then2276, label %if.then2267.sw.epilog3676_crit_edge

if.then2267.sw.epilog3676_crit_edge:              ; preds = %if.then2267
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then2276:                                      ; preds = %if.then2267
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.73) #7
  br label %frontend_detach

do.end2281:                                       ; preds = %cond.end2264
  call void @__sanitizer_cov_trace_pc() #9
  %call2283 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #10
  br label %frontend_detach

sw.bb2289:                                        ; preds = %if.end
  %nr2294 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %247 = ptrtoint ptr %nr2294 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %nr2294, align 4
  %249 = zext i32 %248 to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.356)
  switch i32 %248, label %sw.bb2289.sw.epilog3676_crit_edge [
    i32 1, label %sw.bb2295
    i32 2, label %sw.bb2358
  ]

sw.bb2289.sw.epilog3676_crit_edge:                ; preds = %sw.bb2289
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

sw.bb2295:                                        ; preds = %sw.bb2289
  %call2298 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.255) #7
  %tobool2299.not = icmp eq ptr %call2298, null
  br i1 %tobool2299.not, label %cond.end2304, label %sw.bb2295.if.then2307_crit_edge

sw.bb2295.if.then2307_crit_edge:                  ; preds = %sw.bb2295
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2307

cond.end2304:                                     ; preds = %sw.bb2295
  %call2302 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.256) #7
  %call2303 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.255) #7
  %tobool2306.not = icmp eq ptr %call2303, null
  br i1 %tobool2306.not, label %do.end2316, label %cond.end2304.if.then2307_crit_edge

cond.end2304.if.then2307_crit_edge:               ; preds = %cond.end2304
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2307

if.then2307:                                      ; preds = %cond.end2304.if.then2307_crit_edge, %sw.bb2295.if.then2307_crit_edge
  %cond23055094 = phi ptr [ %call2303, %cond.end2304.if.then2307_crit_edge ], [ %call2298, %sw.bb2295.if.then2307_crit_edge ]
  %i2c_adap2308 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call2309 = tail call ptr %cond23055094(ptr noundef nonnull @terratec_drxk_config, ptr noundef %i2c_adap2308) #7
  %cmp2310 = icmp eq ptr %call2309, null
  br i1 %cmp2310, label %if.then2311, label %if.end2327

if.then2311:                                      ; preds = %if.then2307
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.255) #7
  br label %if.end2319.thread

do.end2316:                                       ; preds = %cond.end2304
  call void @__sanitizer_cov_trace_pc() #9
  %call2318 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258) #10
  br label %if.end2319.thread

if.end2319.thread:                                ; preds = %do.end2316, %if.then2311
  %frontend23225096 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %250 = ptrtoint ptr %frontend23225096 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr null, ptr %frontend23225096, align 4
  br label %sw.epilog3676

if.end2327:                                       ; preds = %if.then2307
  %frontend2322 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %251 = ptrtoint ptr %frontend2322 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %call2309, ptr %frontend2322, align 4
  %call2330 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.260) #7
  %tobool2331.not = icmp eq ptr %call2330, null
  br i1 %tobool2331.not, label %cond.end2336, label %if.end2327.if.then2339_crit_edge

if.end2327.if.then2339_crit_edge:                 ; preds = %if.end2327
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2339

cond.end2336:                                     ; preds = %if.end2327
  %call2334 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.261) #7
  %call2335 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.260) #7
  %tobool2338.not = icmp eq ptr %call2335, null
  br i1 %tobool2338.not, label %do.end2350, label %cond.end2336.if.then2339_crit_edge

cond.end2336.if.then2339_crit_edge:               ; preds = %cond.end2336
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2339

if.then2339:                                      ; preds = %cond.end2336.if.then2339_crit_edge, %if.end2327.if.then2339_crit_edge
  %cond23375100 = phi ptr [ %call2335, %cond.end2336.if.then2339_crit_edge ], [ %call2330, %if.end2327.if.then2339_crit_edge ]
  %252 = ptrtoint ptr %frontend2322 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %frontend2322, align 4
  %i2c_adap2342 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call2343 = tail call ptr %cond23375100(ptr noundef %253, ptr noundef nonnull @terratec_mt2063_config, ptr noundef %i2c_adap2342) #7
  %cmp2344 = icmp eq ptr %call2343, null
  br i1 %cmp2344, label %if.then2345, label %if.then2339.sw.epilog3676_crit_edge

if.then2339.sw.epilog3676_crit_edge:              ; preds = %if.then2339
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then2345:                                      ; preds = %if.then2339
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.260) #7
  br label %frontend_detach

do.end2350:                                       ; preds = %cond.end2336
  call void @__sanitizer_cov_trace_pc() #9
  %call2352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263) #10
  br label %frontend_detach

sw.bb2358:                                        ; preds = %sw.bb2289
  %call2361 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.255) #7
  %tobool2362.not = icmp eq ptr %call2361, null
  br i1 %tobool2362.not, label %cond.end2367, label %sw.bb2358.if.then2370_crit_edge

sw.bb2358.if.then2370_crit_edge:                  ; preds = %sw.bb2358
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2370

cond.end2367:                                     ; preds = %sw.bb2358
  %call2365 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.256) #7
  %call2366 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.255) #7
  %tobool2369.not = icmp eq ptr %call2366, null
  br i1 %tobool2369.not, label %do.end2379, label %cond.end2367.if.then2370_crit_edge

cond.end2367.if.then2370_crit_edge:               ; preds = %cond.end2367
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2370

if.then2370:                                      ; preds = %cond.end2367.if.then2370_crit_edge, %sw.bb2358.if.then2370_crit_edge
  %cond23685105 = phi ptr [ %call2366, %cond.end2367.if.then2370_crit_edge ], [ %call2361, %sw.bb2358.if.then2370_crit_edge ]
  %i2c_adap2371 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call2372 = tail call ptr %cond23685105(ptr noundef getelementptr inbounds ([2 x %struct.drxk_config], ptr @terratec_drxk_config, i32 0, i32 1), ptr noundef %i2c_adap2371) #7
  %cmp2373 = icmp eq ptr %call2372, null
  br i1 %cmp2373, label %if.then2374, label %if.end2390

if.then2374:                                      ; preds = %if.then2370
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.255) #7
  br label %if.end2382.thread

do.end2379:                                       ; preds = %cond.end2367
  call void @__sanitizer_cov_trace_pc() #9
  %call2381 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258) #10
  br label %if.end2382.thread

if.end2382.thread:                                ; preds = %do.end2379, %if.then2374
  %frontend23855107 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %254 = ptrtoint ptr %frontend23855107 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr null, ptr %frontend23855107, align 4
  br label %sw.epilog3676

if.end2390:                                       ; preds = %if.then2370
  %frontend2385 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %255 = ptrtoint ptr %frontend2385 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %call2372, ptr %frontend2385, align 4
  %call2393 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.260) #7
  %tobool2394.not = icmp eq ptr %call2393, null
  br i1 %tobool2394.not, label %cond.end2399, label %if.end2390.if.then2402_crit_edge

if.end2390.if.then2402_crit_edge:                 ; preds = %if.end2390
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2402

cond.end2399:                                     ; preds = %if.end2390
  %call2397 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.261) #7
  %call2398 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.260) #7
  %tobool2401.not = icmp eq ptr %call2398, null
  br i1 %tobool2401.not, label %do.end2413, label %cond.end2399.if.then2402_crit_edge

cond.end2399.if.then2402_crit_edge:               ; preds = %cond.end2399
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2402

if.then2402:                                      ; preds = %cond.end2399.if.then2402_crit_edge, %if.end2390.if.then2402_crit_edge
  %cond24005111 = phi ptr [ %call2398, %cond.end2399.if.then2402_crit_edge ], [ %call2393, %if.end2390.if.then2402_crit_edge ]
  %256 = ptrtoint ptr %frontend2385 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %frontend2385, align 4
  %i2c_adap2405 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call2406 = tail call ptr %cond24005111(ptr noundef %257, ptr noundef getelementptr inbounds ([2 x %struct.mt2063_config], ptr @terratec_mt2063_config, i32 0, i32 1), ptr noundef %i2c_adap2405) #7
  %cmp2407 = icmp eq ptr %call2406, null
  br i1 %cmp2407, label %if.then2408, label %if.then2402.sw.epilog3676_crit_edge

if.then2402.sw.epilog3676_crit_edge:              ; preds = %if.then2402
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then2408:                                      ; preds = %if.then2402
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.260) #7
  br label %frontend_detach

do.end2413:                                       ; preds = %cond.end2399
  call void @__sanitizer_cov_trace_pc() #9
  %call2415 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263) #10
  br label %frontend_detach

sw.bb2422:                                        ; preds = %if.end
  %call2427 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.163) #7
  %tobool2428.not = icmp eq ptr %call2427, null
  br i1 %tobool2428.not, label %cond.end2433, label %sw.bb2422.if.then2436_crit_edge

sw.bb2422.if.then2436_crit_edge:                  ; preds = %sw.bb2422
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2436

cond.end2433:                                     ; preds = %sw.bb2422
  %call2431 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.164) #7
  %call2432 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.163) #7
  %tobool2435.not = icmp eq ptr %call2432, null
  br i1 %tobool2435.not, label %do.end2445, label %cond.end2433.if.then2436_crit_edge

cond.end2433.if.then2436_crit_edge:               ; preds = %cond.end2433
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2436

if.then2436:                                      ; preds = %cond.end2433.if.then2436_crit_edge, %sw.bb2422.if.then2436_crit_edge
  %cond24345116 = phi ptr [ %call2432, %cond.end2433.if.then2436_crit_edge ], [ %call2427, %sw.bb2422.if.then2436_crit_edge ]
  %i2c_adap2437 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call2438 = tail call ptr %cond24345116(ptr noundef nonnull @tevii_ds3000_config, ptr noundef %i2c_adap2437) #7
  %cmp2439 = icmp eq ptr %call2438, null
  br i1 %cmp2439, label %if.then2440, label %if.end2456

if.then2440:                                      ; preds = %if.then2436
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.163) #7
  br label %if.end2448.thread

do.end2445:                                       ; preds = %cond.end2433
  call void @__sanitizer_cov_trace_pc() #9
  %call2447 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #10
  br label %if.end2448.thread

if.end2448.thread:                                ; preds = %do.end2445, %if.then2440
  %frontend24515118 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %258 = ptrtoint ptr %frontend24515118 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %frontend24515118, align 4
  br label %sw.epilog3676

if.end2456:                                       ; preds = %if.then2436
  %frontend2451 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %259 = ptrtoint ptr %frontend2451 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %call2438, ptr %frontend2451, align 4
  %call2459 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #7
  %tobool2460.not = icmp eq ptr %call2459, null
  br i1 %tobool2460.not, label %cond.end2465, label %if.end2456.if.then2468_crit_edge

if.end2456.if.then2468_crit_edge:                 ; preds = %if.end2456
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2468

cond.end2465:                                     ; preds = %if.end2456
  %call2463 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.169) #7
  %call2464 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #7
  %tobool2467.not = icmp eq ptr %call2464, null
  br i1 %tobool2467.not, label %do.end2479, label %cond.end2465.if.then2468_crit_edge

cond.end2465.if.then2468_crit_edge:               ; preds = %cond.end2465
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2468

if.then2468:                                      ; preds = %cond.end2465.if.then2468_crit_edge, %if.end2456.if.then2468_crit_edge
  %cond24665122 = phi ptr [ %call2464, %cond.end2465.if.then2468_crit_edge ], [ %call2459, %if.end2456.if.then2468_crit_edge ]
  %260 = ptrtoint ptr %frontend2451 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %frontend2451, align 4
  %call2472 = tail call ptr %cond24665122(ptr noundef %261, ptr noundef nonnull @tevii_ts2020_config, ptr noundef %i2c_adap2437) #7
  %cmp2473 = icmp eq ptr %call2472, null
  br i1 %cmp2473, label %if.then2474, label %if.then2468.sw.epilog3676_crit_edge

if.then2468.sw.epilog3676_crit_edge:              ; preds = %if.then2468
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

if.then2474:                                      ; preds = %if.then2468
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.168) #7
  br label %sw.epilog3676

do.end2479:                                       ; preds = %cond.end2465
  call void @__sanitizer_cov_trace_pc() #9
  %call2481 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #10
  br label %sw.epilog3676

sw.bb2484:                                        ; preds = %if.end
  %call2489 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.273) #7
  %tobool2490.not = icmp eq ptr %call2489, null
  br i1 %tobool2490.not, label %cond.end2495, label %sw.bb2484.if.then2498_crit_edge

sw.bb2484.if.then2498_crit_edge:                  ; preds = %sw.bb2484
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2498

cond.end2495:                                     ; preds = %sw.bb2484
  %call2493 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.274) #7
  %call2494 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.273) #7
  %tobool2497.not = icmp eq ptr %call2494, null
  br i1 %tobool2497.not, label %do.end2507, label %cond.end2495.if.then2498_crit_edge

cond.end2495.if.then2498_crit_edge:               ; preds = %cond.end2495
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2498

if.then2498:                                      ; preds = %cond.end2495.if.then2498_crit_edge, %sw.bb2484.if.then2498_crit_edge
  %cond24965125 = phi ptr [ %call2494, %cond.end2495.if.then2498_crit_edge ], [ %call2489, %sw.bb2484.if.then2498_crit_edge ]
  %i2c_adap2499 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call2500 = tail call ptr %cond24965125(ptr noundef nonnull @prof_8000_stv090x_config, ptr noundef %i2c_adap2499, i32 noundef 1) #7
  %cmp2501 = icmp eq ptr %call2500, null
  br i1 %cmp2501, label %if.then2502, label %if.end2518

if.then2502:                                      ; preds = %if.then2498
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.273) #7
  br label %if.end2510.thread

do.end2507:                                       ; preds = %cond.end2495
  call void @__sanitizer_cov_trace_pc() #9
  %call2509 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276) #10
  br label %if.end2510.thread

if.end2510.thread:                                ; preds = %do.end2507, %if.then2502
  %frontend25135127 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %262 = ptrtoint ptr %frontend25135127 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr null, ptr %frontend25135127, align 4
  br label %sw.epilog3676

if.end2518:                                       ; preds = %if.then2498
  %frontend2513 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %263 = ptrtoint ptr %frontend2513 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call2500, ptr %frontend2513, align 4
  %call2521 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.278) #7
  %tobool2522.not = icmp eq ptr %call2521, null
  br i1 %tobool2522.not, label %cond.end2527, label %if.end2518.if.then2530_crit_edge

if.end2518.if.then2530_crit_edge:                 ; preds = %if.end2518
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2530

cond.end2527:                                     ; preds = %if.end2518
  %call2525 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.279) #7
  %call2526 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.278) #7
  %tobool2529.not = icmp eq ptr %call2526, null
  br i1 %tobool2529.not, label %do.end2541, label %cond.end2527.if.then2530_crit_edge

cond.end2527.if.then2530_crit_edge:               ; preds = %cond.end2527
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2530

if.then2530:                                      ; preds = %cond.end2527.if.then2530_crit_edge, %if.end2518.if.then2530_crit_edge
  %cond25285131 = phi ptr [ %call2526, %cond.end2527.if.then2530_crit_edge ], [ %call2521, %if.end2518.if.then2530_crit_edge ]
  %264 = ptrtoint ptr %frontend2513 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %frontend2513, align 4
  %call2534 = tail call ptr %cond25285131(ptr noundef %265, ptr noundef nonnull @prof_8000_stb6100_config, ptr noundef %i2c_adap2499) #7
  %cmp2535 = icmp eq ptr %call2534, null
  br i1 %cmp2535, label %if.then2536, label %if.end2548

if.then2536:                                      ; preds = %if.then2530
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.278) #7
  br label %frontend_detach

do.end2541:                                       ; preds = %cond.end2527
  call void @__sanitizer_cov_trace_pc() #9
  %call2543 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281) #10
  br label %frontend_detach

if.end2548:                                       ; preds = %if.then2530
  call void @__sanitizer_cov_trace_pc() #9
  %266 = ptrtoint ptr %frontend2513 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %frontend2513, align 4
  %set_voltage2552 = getelementptr inbounds %struct.dvb_frontend, ptr %267, i32 0, i32 1, i32 25
  %268 = ptrtoint ptr %set_voltage2552 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr @p8000_set_voltage, ptr %set_voltage2552, align 4
  br label %sw.epilog3676

sw.bb2553:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tda10071_pdata) #7
  %269 = call ptr @memcpy(ptr %tda10071_pdata, ptr @hauppauge_tda10071_pdata, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a8293_pdata2554) #7
  %270 = ptrtoint ptr %a8293_pdata2554 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %a8293_pdata2554, align 4
  %nr2559 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %271 = ptrtoint ptr %nr2559 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %nr2559, align 4
  %273 = zext i32 %272 to i64
  call void @__sanitizer_cov_trace_switch(i64 %273, ptr @__sancov_gen_cov_switch_values.357)
  switch i32 %272, label %sw.bb2553.cleanup2658_crit_edge [
    i32 1, label %sw.bb2560
    i32 2, label %sw.bb2595
  ]

sw.bb2553.cleanup2658_crit_edge:                  ; preds = %sw.bb2553
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2658

sw.bb2560:                                        ; preds = %sw.bb2553
  %274 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2562 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.283, i32 noundef 20) #7
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %275 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 5, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %276 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %tda10071_pdata, ptr %platform_data, align 4
  %call2563 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.284) #7
  %i2c_adap2564 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call2565 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap2564, ptr noundef nonnull %info) #7
  %tobool.not.i.i = icmp eq ptr %call2565, null
  %cmp.i.i = icmp ugt ptr %call2565, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %sw.bb2560.cleanup2658.thread_crit_edge, label %i2c_client_has_driver.exit

sw.bb2560.cleanup2658.thread_crit_edge:           ; preds = %sw.bb2560
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2658.thread

i2c_client_has_driver.exit:                       ; preds = %sw.bb2560
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call2565, i32 0, i32 4, i32 6
  %277 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %278, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.cleanup2658.thread_crit_edge, label %if.end2568

i2c_client_has_driver.exit.cleanup2658.thread_crit_edge: ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2658.thread

if.end2568:                                       ; preds = %i2c_client_has_driver.exit
  %279 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %owner, align 4
  %call2570 = call zeroext i1 @try_module_get(ptr noundef %282) #7
  br i1 %call2570, label %if.end2572, label %if.then2571

if.then2571:                                      ; preds = %if.end2568
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call2565) #7
  br label %cleanup2658.thread

if.end2572:                                       ; preds = %if.end2568
  %get_dvb_frontend = getelementptr inbounds %struct.tda10071_platform_data, ptr %tda10071_pdata, i32 0, i32 6
  %283 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %get_dvb_frontend, align 4
  %call2573 = call ptr %284(ptr noundef nonnull %call2565) #7
  %frontend2575 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %285 = ptrtoint ptr %frontend2575 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %call2573, ptr %frontend2575, align 4
  %i2c_client_demod = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %286 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %call2565, ptr %i2c_client_demod, align 4
  %287 = load ptr, ptr %frontend2575, align 4
  %288 = ptrtoint ptr %a8293_pdata2554 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %287, ptr %a8293_pdata2554, align 4
  %289 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2580 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.285, i32 noundef 20) #7
  %290 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 11, ptr %addr, align 2
  %291 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %a8293_pdata2554, ptr %platform_data, align 4
  %call2583 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.285) #7
  %call2585 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap2564, ptr noundef nonnull %info) #7
  %tobool.not.i.i4591 = icmp eq ptr %call2585, null
  %cmp.i.i4592 = icmp ugt ptr %call2585, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4593 = or i1 %tobool.not.i.i4591, %cmp.i.i4592
  br i1 %spec.select.i.i4593, label %if.end2572.cleanup2658.thread_crit_edge, label %i2c_client_has_driver.exit4597

if.end2572.cleanup2658.thread_crit_edge:          ; preds = %if.end2572
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2658.thread

i2c_client_has_driver.exit4597:                   ; preds = %if.end2572
  %driver.i4594 = getelementptr inbounds %struct.i2c_client, ptr %call2585, i32 0, i32 4, i32 6
  %292 = ptrtoint ptr %driver.i4594 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %driver.i4594, align 4
  %tobool.i4595.not = icmp eq ptr %293, null
  br i1 %tobool.i4595.not, label %i2c_client_has_driver.exit4597.cleanup2658.thread_crit_edge, label %if.end2588

i2c_client_has_driver.exit4597.cleanup2658.thread_crit_edge: ; preds = %i2c_client_has_driver.exit4597
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2658.thread

if.end2588:                                       ; preds = %i2c_client_has_driver.exit4597
  %294 = ptrtoint ptr %driver.i4594 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %driver.i4594, align 4
  %owner2591 = getelementptr inbounds %struct.device_driver, ptr %295, i32 0, i32 2
  %296 = ptrtoint ptr %owner2591 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %owner2591, align 4
  %call2592 = call zeroext i1 @try_module_get(ptr noundef %297) #7
  br i1 %call2592, label %if.end2594, label %if.then2593

if.then2593:                                      ; preds = %if.end2588
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call2585) #7
  br label %cleanup2658.thread

if.end2594:                                       ; preds = %if.end2588
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client_sec = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 38
  %298 = ptrtoint ptr %i2c_client_sec to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %call2585, ptr %i2c_client_sec, align 4
  br label %cleanup2658

sw.bb2595:                                        ; preds = %sw.bb2553
  %299 = getelementptr inbounds i8, ptr %si2165_pdata, i32 4
  %300 = call ptr @memset(ptr %299, i32 0, i32 12)
  %frontend2597 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %301 = ptrtoint ptr %si2165_pdata to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %frontend2597, ptr %si2165_pdata, align 4
  %chip_mode = getelementptr inbounds %struct.si2165_platform_data, ptr %si2165_pdata, i32 0, i32 1
  %302 = ptrtoint ptr %chip_mode to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 33, ptr %chip_mode, align 4
  %ref_freq_hz = getelementptr inbounds %struct.si2165_platform_data, ptr %si2165_pdata, i32 0, i32 2
  %303 = ptrtoint ptr %ref_freq_hz to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 16000000, ptr %ref_freq_hz, align 4
  %304 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2601 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.286, i32 noundef 20) #7
  %addr2602 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %305 = ptrtoint ptr %addr2602 to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 100, ptr %addr2602, align 2
  %platform_data2603 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %306 = ptrtoint ptr %platform_data2603 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %si2165_pdata, ptr %platform_data2603, align 4
  %call2606 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %i2c_adap2607 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call2608 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap2607, ptr noundef nonnull %info) #7
  %tobool.not.i.i4598 = icmp eq ptr %call2608, null
  %cmp.i.i4599 = icmp ugt ptr %call2608, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4600 = or i1 %tobool.not.i.i4598, %cmp.i.i4599
  br i1 %spec.select.i.i4600, label %sw.bb2595.cleanup2658.thread_crit_edge, label %i2c_client_has_driver.exit4604

sw.bb2595.cleanup2658.thread_crit_edge:           ; preds = %sw.bb2595
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2658.thread

i2c_client_has_driver.exit4604:                   ; preds = %sw.bb2595
  %driver.i4601 = getelementptr inbounds %struct.i2c_client, ptr %call2608, i32 0, i32 4, i32 6
  %307 = ptrtoint ptr %driver.i4601 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %driver.i4601, align 4
  %tobool.i4602.not = icmp eq ptr %308, null
  br i1 %tobool.i4602.not, label %i2c_client_has_driver.exit4604.cleanup2658.thread_crit_edge, label %if.end2611

i2c_client_has_driver.exit4604.cleanup2658.thread_crit_edge: ; preds = %i2c_client_has_driver.exit4604
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2658.thread

if.end2611:                                       ; preds = %i2c_client_has_driver.exit4604
  %309 = ptrtoint ptr %driver.i4601 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %driver.i4601, align 4
  %owner2614 = getelementptr inbounds %struct.device_driver, ptr %310, i32 0, i32 2
  %311 = ptrtoint ptr %owner2614 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %owner2614, align 4
  %call2615 = call zeroext i1 @try_module_get(ptr noundef %312) #7
  br i1 %call2615, label %if.end2617, label %if.then2616

if.then2616:                                      ; preds = %if.end2611
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call2608) #7
  br label %cleanup2658.thread

if.end2617:                                       ; preds = %if.end2611
  %i2c_client_demod2618 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %313 = ptrtoint ptr %i2c_client_demod2618 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call2608, ptr %i2c_client_demod2618, align 4
  %314 = ptrtoint ptr %frontend2597 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %frontend2597, align 4
  %cmp2621 = icmp eq ptr %315, null
  br i1 %cmp2621, label %if.end2617.cleanup2658_crit_edge, label %if.end2623

if.end2617.cleanup2658_crit_edge:                 ; preds = %if.end2617
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2658

if.end2623:                                       ; preds = %if.end2617
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %315, i32 0, i32 1, i32 28
  %316 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr null, ptr %i2c_gate_ctrl, align 4
  %call2629 = call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool2630.not = icmp eq ptr %call2629, null
  br i1 %tobool2630.not, label %cond.end2635, label %if.end2623.if.then2638_crit_edge

if.end2623.if.then2638_crit_edge:                 ; preds = %if.end2623
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2638

cond.end2635:                                     ; preds = %if.end2623
  %call2633 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #7
  %call2634 = call ptr @__symbol_get(ptr noundef nonnull @.str.32) #7
  %tobool2637.not = icmp eq ptr %call2634, null
  br i1 %tobool2637.not, label %do.end2649, label %cond.end2635.if.then2638_crit_edge

cond.end2635.if.then2638_crit_edge:               ; preds = %cond.end2635
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2638

if.then2638:                                      ; preds = %cond.end2635.if.then2638_crit_edge, %if.end2623.if.then2638_crit_edge
  %cond26365136 = phi ptr [ %call2634, %cond.end2635.if.then2638_crit_edge ], [ %call2629, %if.end2623.if.then2638_crit_edge ]
  %317 = ptrtoint ptr %frontend2597 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %frontend2597, align 4
  %i2c_adap2641 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call2642 = call ptr %cond26365136(ptr noundef %318, i8 noundef zeroext 96, ptr noundef %i2c_adap2641, ptr noundef nonnull @hauppauge_hvr4400_tuner_config) #7
  %cmp2643 = icmp eq ptr %call2642, null
  br i1 %cmp2643, label %if.then2644, label %if.then2638.cleanup2658_crit_edge

if.then2638.cleanup2658_crit_edge:                ; preds = %if.then2638
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2658

if.then2644:                                      ; preds = %if.then2638
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.32) #7
  br label %cleanup2658.thread

do.end2649:                                       ; preds = %cond.end2635
  call void @__sanitizer_cov_trace_pc() #9
  %call2651 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %cleanup2658.thread

cleanup2658.thread:                               ; preds = %do.end2649, %if.then2644, %if.then2616, %i2c_client_has_driver.exit4604.cleanup2658.thread_crit_edge, %sw.bb2595.cleanup2658.thread_crit_edge, %if.then2593, %i2c_client_has_driver.exit4597.cleanup2658.thread_crit_edge, %if.end2572.cleanup2658.thread_crit_edge, %if.then2571, %i2c_client_has_driver.exit.cleanup2658.thread_crit_edge, %sw.bb2560.cleanup2658.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a8293_pdata2554) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tda10071_pdata) #7
  br label %frontend_detach

cleanup2658:                                      ; preds = %if.then2638.cleanup2658_crit_edge, %if.end2617.cleanup2658_crit_edge, %if.end2594, %sw.bb2553.cleanup2658_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a8293_pdata2554) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tda10071_pdata) #7
  br label %sw.epilog3676

sw.bb2661:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tda10071_pdata2662) #7
  %319 = call ptr @memcpy(ptr %tda10071_pdata2662, ptr @hauppauge_tda10071_pdata, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a8293_pdata2663) #7
  %320 = ptrtoint ptr %a8293_pdata2663 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 0, ptr %a8293_pdata2663, align 4
  %321 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2668 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.283, i32 noundef 20) #7
  %addr2669 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %322 = ptrtoint ptr %addr2669 to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 5, ptr %addr2669, align 2
  %platform_data2670 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %323 = ptrtoint ptr %platform_data2670 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %tda10071_pdata2662, ptr %platform_data2670, align 4
  %call2671 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.284) #7
  %i2c_adap2672 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call2673 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap2672, ptr noundef nonnull %info) #7
  %tobool.not.i.i4605 = icmp eq ptr %call2673, null
  %cmp.i.i4606 = icmp ugt ptr %call2673, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4607 = or i1 %tobool.not.i.i4605, %cmp.i.i4606
  br i1 %spec.select.i.i4607, label %sw.bb2661.cleanup2709.thread_crit_edge, label %i2c_client_has_driver.exit4611

sw.bb2661.cleanup2709.thread_crit_edge:           ; preds = %sw.bb2661
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2709.thread

i2c_client_has_driver.exit4611:                   ; preds = %sw.bb2661
  %driver.i4608 = getelementptr inbounds %struct.i2c_client, ptr %call2673, i32 0, i32 4, i32 6
  %324 = ptrtoint ptr %driver.i4608 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %driver.i4608, align 4
  %tobool.i4609.not = icmp eq ptr %325, null
  br i1 %tobool.i4609.not, label %i2c_client_has_driver.exit4611.cleanup2709.thread_crit_edge, label %if.end2676

i2c_client_has_driver.exit4611.cleanup2709.thread_crit_edge: ; preds = %i2c_client_has_driver.exit4611
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2709.thread

if.end2676:                                       ; preds = %i2c_client_has_driver.exit4611
  %326 = ptrtoint ptr %driver.i4608 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %driver.i4608, align 4
  %owner2679 = getelementptr inbounds %struct.device_driver, ptr %327, i32 0, i32 2
  %328 = ptrtoint ptr %owner2679 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %owner2679, align 4
  %call2680 = call zeroext i1 @try_module_get(ptr noundef %329) #7
  br i1 %call2680, label %if.end2682, label %if.end2676.cleanup2709.thread.sink.split_crit_edge

if.end2676.cleanup2709.thread.sink.split_crit_edge: ; preds = %if.end2676
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2709.thread.sink.split

if.end2682:                                       ; preds = %if.end2676
  %get_dvb_frontend2683 = getelementptr inbounds %struct.tda10071_platform_data, ptr %tda10071_pdata2662, i32 0, i32 6
  %330 = ptrtoint ptr %get_dvb_frontend2683 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %get_dvb_frontend2683, align 4
  %call2684 = call ptr %331(ptr noundef nonnull %call2673) #7
  %frontend2686 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %332 = ptrtoint ptr %frontend2686 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %call2684, ptr %frontend2686, align 4
  %i2c_client_demod2687 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %333 = ptrtoint ptr %i2c_client_demod2687 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %call2673, ptr %i2c_client_demod2687, align 4
  %334 = load ptr, ptr %frontend2686, align 4
  %335 = ptrtoint ptr %a8293_pdata2663 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %334, ptr %a8293_pdata2663, align 4
  %336 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2693 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.285, i32 noundef 20) #7
  %337 = ptrtoint ptr %addr2669 to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 11, ptr %addr2669, align 2
  %338 = ptrtoint ptr %platform_data2670 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %a8293_pdata2663, ptr %platform_data2670, align 4
  %call2696 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.285) #7
  %call2698 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap2672, ptr noundef nonnull %info) #7
  %tobool.not.i.i4612 = icmp eq ptr %call2698, null
  %cmp.i.i4613 = icmp ugt ptr %call2698, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4614 = or i1 %tobool.not.i.i4612, %cmp.i.i4613
  br i1 %spec.select.i.i4614, label %if.end2682.cleanup2709.thread_crit_edge, label %i2c_client_has_driver.exit4618

if.end2682.cleanup2709.thread_crit_edge:          ; preds = %if.end2682
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2709.thread

i2c_client_has_driver.exit4618:                   ; preds = %if.end2682
  %driver.i4615 = getelementptr inbounds %struct.i2c_client, ptr %call2698, i32 0, i32 4, i32 6
  %339 = ptrtoint ptr %driver.i4615 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %driver.i4615, align 4
  %tobool.i4616.not = icmp eq ptr %340, null
  br i1 %tobool.i4616.not, label %i2c_client_has_driver.exit4618.cleanup2709.thread_crit_edge, label %if.end2701

i2c_client_has_driver.exit4618.cleanup2709.thread_crit_edge: ; preds = %i2c_client_has_driver.exit4618
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2709.thread

if.end2701:                                       ; preds = %i2c_client_has_driver.exit4618
  %341 = ptrtoint ptr %driver.i4615 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %driver.i4615, align 4
  %owner2704 = getelementptr inbounds %struct.device_driver, ptr %342, i32 0, i32 2
  %343 = ptrtoint ptr %owner2704 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %owner2704, align 4
  %call2705 = call zeroext i1 @try_module_get(ptr noundef %344) #7
  br i1 %call2705, label %cleanup2709, label %if.end2701.cleanup2709.thread.sink.split_crit_edge

if.end2701.cleanup2709.thread.sink.split_crit_edge: ; preds = %if.end2701
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup2709.thread.sink.split

cleanup2709.thread.sink.split:                    ; preds = %if.end2701.cleanup2709.thread.sink.split_crit_edge, %if.end2676.cleanup2709.thread.sink.split_crit_edge
  %call2698.sink = phi ptr [ %call2673, %if.end2676.cleanup2709.thread.sink.split_crit_edge ], [ %call2698, %if.end2701.cleanup2709.thread.sink.split_crit_edge ]
  call void @i2c_unregister_device(ptr noundef nonnull %call2698.sink) #7
  br label %cleanup2709.thread

cleanup2709.thread:                               ; preds = %cleanup2709.thread.sink.split, %i2c_client_has_driver.exit4618.cleanup2709.thread_crit_edge, %if.end2682.cleanup2709.thread_crit_edge, %i2c_client_has_driver.exit4611.cleanup2709.thread_crit_edge, %sw.bb2661.cleanup2709.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a8293_pdata2663) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tda10071_pdata2662) #7
  br label %frontend_detach

cleanup2709:                                      ; preds = %if.end2701
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client_sec2708 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 38
  %345 = ptrtoint ptr %i2c_client_sec2708 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %call2698, ptr %i2c_client_sec2708, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a8293_pdata2663) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tda10071_pdata2662) #7
  br label %sw.epilog3676

sw.bb2712:                                        ; preds = %if.end.sw.bb2712_crit_edge, %if.end.sw.bb2712_crit_edge5198
  %nr2717 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %346 = ptrtoint ptr %nr2717 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %nr2717, align 4
  %348 = zext i32 %347 to i64
  call void @__sanitizer_cov_trace_switch(i64 %348, ptr @__sancov_gen_cov_switch_values.358)
  switch i32 %347, label %sw.bb2712.sw.epilog3676_crit_edge [
    i32 1, label %sw.bb2718
    i32 2, label %sw.bb2787
  ]

sw.bb2712.sw.epilog3676_crit_edge:                ; preds = %sw.bb2712
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

sw.bb2718:                                        ; preds = %sw.bb2712
  %call2721 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.290) #7
  %tobool2722.not = icmp eq ptr %call2721, null
  br i1 %tobool2722.not, label %cond.end2727, label %sw.bb2718.if.then2730_crit_edge

sw.bb2718.if.then2730_crit_edge:                  ; preds = %sw.bb2718
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2730

cond.end2727:                                     ; preds = %sw.bb2718
  %call2725 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.291) #7
  %call2726 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.290) #7
  %tobool2729.not = icmp eq ptr %call2726, null
  br i1 %tobool2729.not, label %do.end2739, label %cond.end2727.if.then2730_crit_edge

cond.end2727.if.then2730_crit_edge:               ; preds = %cond.end2727
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2730

if.then2730:                                      ; preds = %cond.end2727.if.then2730_crit_edge, %sw.bb2718.if.then2730_crit_edge
  %cond27285143 = phi ptr [ %call2726, %cond.end2727.if.then2730_crit_edge ], [ %call2721, %sw.bb2718.if.then2730_crit_edge ]
  %i2c_adap2731 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call2732 = call ptr %cond27285143(ptr noundef nonnull @dvbsky_t9580_m88ds3103_config, ptr noundef %i2c_adap2731, ptr noundef nonnull %adapter) #7
  %cmp2733 = icmp eq ptr %call2732, null
  br i1 %cmp2733, label %if.then2734, label %if.end2750

if.then2734:                                      ; preds = %if.then2730
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.290) #7
  br label %if.end2742.thread

do.end2739:                                       ; preds = %cond.end2727
  call void @__sanitizer_cov_trace_pc() #9
  %call2741 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293) #10
  br label %if.end2742.thread

if.end2742.thread:                                ; preds = %do.end2739, %if.then2734
  %frontend27455145 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %349 = ptrtoint ptr %frontend27455145 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr null, ptr %frontend27455145, align 4
  br label %sw.epilog3676

if.end2750:                                       ; preds = %if.then2730
  %frontend2745 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %350 = ptrtoint ptr %frontend2745 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %call2732, ptr %frontend2745, align 4
  %351 = call ptr @memset(ptr %ts2020_config, i32 0, i32 20)
  %fe2753 = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 3
  %352 = ptrtoint ptr %fe2753 to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr %call2732, ptr %fe2753, align 4
  %get_agc_pwm = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 5
  %353 = ptrtoint ptr %get_agc_pwm to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr @m88ds3103_get_agc_pwm, ptr %get_agc_pwm, align 4
  %354 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2756 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.295, i32 noundef 20) #7
  %addr2757 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %355 = ptrtoint ptr %addr2757 to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 96, ptr %addr2757, align 2
  %platform_data2758 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %356 = ptrtoint ptr %platform_data2758 to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %ts2020_config, ptr %platform_data2758, align 4
  %call2761 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %357 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %adapter, align 4
  %call2762 = call ptr @i2c_new_client_device(ptr noundef %358, ptr noundef nonnull %info) #7
  %tobool.not.i.i4619 = icmp eq ptr %call2762, null
  %cmp.i.i4620 = icmp ugt ptr %call2762, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4621 = or i1 %tobool.not.i.i4619, %cmp.i.i4620
  br i1 %spec.select.i.i4621, label %if.end2750.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4625

if.end2750.frontend_detach_crit_edge:             ; preds = %if.end2750
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4625:                   ; preds = %if.end2750
  %driver.i4622 = getelementptr inbounds %struct.i2c_client, ptr %call2762, i32 0, i32 4, i32 6
  %359 = ptrtoint ptr %driver.i4622 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %driver.i4622, align 4
  %tobool.i4623.not = icmp eq ptr %360, null
  br i1 %tobool.i4623.not, label %i2c_client_has_driver.exit4625.frontend_detach_crit_edge, label %if.end2765

i2c_client_has_driver.exit4625.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4625
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end2765:                                       ; preds = %i2c_client_has_driver.exit4625
  %361 = ptrtoint ptr %driver.i4622 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %driver.i4622, align 4
  %owner2768 = getelementptr inbounds %struct.device_driver, ptr %362, i32 0, i32 2
  %363 = ptrtoint ptr %owner2768 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %owner2768, align 4
  %call2769 = call zeroext i1 @try_module_get(ptr noundef %364) #7
  br i1 %call2769, label %if.end2771, label %if.then2770

if.then2770:                                      ; preds = %if.end2765
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call2762) #7
  br label %frontend_detach

if.end2771:                                       ; preds = %if.end2765
  call void @__sanitizer_cov_trace_pc() #9
  %365 = ptrtoint ptr %frontend2745 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %frontend2745, align 4
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %366, i32 0, i32 1, i32 32, i32 13
  %367 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %get_rf_strength, align 4
  %read_signal_strength = getelementptr inbounds %struct.dvb_frontend, ptr %366, i32 0, i32 1, i32 17
  %369 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %368, ptr %read_signal_strength, align 4
  %370 = load ptr, ptr %frontend2745, align 4
  %set_voltage2782 = getelementptr inbounds %struct.dvb_frontend, ptr %370, i32 0, i32 1, i32 25
  %371 = ptrtoint ptr %set_voltage2782 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %set_voltage2782, align 4
  %fe_set_voltage = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 41
  %373 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %372, ptr %fe_set_voltage, align 4
  %374 = load ptr, ptr %frontend2745, align 4
  %set_voltage2786 = getelementptr inbounds %struct.dvb_frontend, ptr %374, i32 0, i32 1, i32 25
  %375 = ptrtoint ptr %set_voltage2786 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr @dvbsky_t9580_set_voltage, ptr %set_voltage2786, align 4
  %i2c_client_tuner = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %376 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %call2762, ptr %i2c_client_tuner, align 4
  br label %sw.epilog3676

sw.bb2787:                                        ; preds = %sw.bb2712
  %377 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 0, ptr %377, align 4
  %i2c_adapter = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %379 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %adapter, ptr %i2c_adapter, align 4
  %frontend2789 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %380 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr %frontend2789, ptr %si2168_config, align 4
  %ts_mode = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %381 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 3, ptr %ts_mode, align 4
  %382 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2793 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.296, i32 noundef 20) #7
  %addr2794 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %383 = ptrtoint ptr %addr2794 to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 100, ptr %addr2794, align 2
  %platform_data2795 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %384 = ptrtoint ptr %platform_data2795 to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr %si2168_config, ptr %platform_data2795, align 4
  %call2798 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %i2c_adap2799 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call2800 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap2799, ptr noundef nonnull %info) #7
  %tobool.not.i.i4626 = icmp eq ptr %call2800, null
  %cmp.i.i4627 = icmp ugt ptr %call2800, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4628 = or i1 %tobool.not.i.i4626, %cmp.i.i4627
  br i1 %spec.select.i.i4628, label %sw.bb2787.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4632

sw.bb2787.frontend_detach_crit_edge:              ; preds = %sw.bb2787
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4632:                   ; preds = %sw.bb2787
  %driver.i4629 = getelementptr inbounds %struct.i2c_client, ptr %call2800, i32 0, i32 4, i32 6
  %385 = ptrtoint ptr %driver.i4629 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %driver.i4629, align 4
  %tobool.i4630.not = icmp eq ptr %386, null
  br i1 %tobool.i4630.not, label %i2c_client_has_driver.exit4632.frontend_detach_crit_edge, label %if.end2803

i2c_client_has_driver.exit4632.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4632
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end2803:                                       ; preds = %i2c_client_has_driver.exit4632
  %387 = ptrtoint ptr %driver.i4629 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %driver.i4629, align 4
  %owner2806 = getelementptr inbounds %struct.device_driver, ptr %388, i32 0, i32 2
  %389 = ptrtoint ptr %owner2806 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %owner2806, align 4
  %call2807 = call zeroext i1 @try_module_get(ptr noundef %390) #7
  br i1 %call2807, label %if.end2809, label %if.then2808

if.then2808:                                      ; preds = %if.end2803
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call2800) #7
  br label %frontend_detach

if.end2809:                                       ; preds = %if.end2803
  %i2c_client_demod2810 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %391 = ptrtoint ptr %i2c_client_demod2810 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr %call2800, ptr %i2c_client_demod2810, align 4
  %392 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_storeN_noabort(i32 %393, i32 8)
  store i64 0, ptr %392, align 4
  %394 = ptrtoint ptr %frontend2789 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %frontend2789, align 4
  %396 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr %395, ptr %si2157_config, align 4
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %397 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 1, ptr %if_port, align 1
  %398 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2816 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.297, i32 noundef 20) #7
  %399 = ptrtoint ptr %addr2794 to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 96, ptr %addr2794, align 2
  %400 = ptrtoint ptr %platform_data2795 to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %si2157_config, ptr %platform_data2795, align 4
  %call2821 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %401 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %adapter, align 4
  %call2822 = call ptr @i2c_new_client_device(ptr noundef %402, ptr noundef nonnull %info) #7
  %tobool.not.i.i4633 = icmp eq ptr %call2822, null
  %cmp.i.i4634 = icmp ugt ptr %call2822, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4635 = or i1 %tobool.not.i.i4633, %cmp.i.i4634
  br i1 %spec.select.i.i4635, label %if.end2809.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4639

if.end2809.frontend_detach_crit_edge:             ; preds = %if.end2809
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4639:                   ; preds = %if.end2809
  %driver.i4636 = getelementptr inbounds %struct.i2c_client, ptr %call2822, i32 0, i32 4, i32 6
  %403 = ptrtoint ptr %driver.i4636 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %driver.i4636, align 4
  %tobool.i4637.not = icmp eq ptr %404, null
  br i1 %tobool.i4637.not, label %i2c_client_has_driver.exit4639.frontend_detach_crit_edge, label %if.end2825

i2c_client_has_driver.exit4639.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4639
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end2825:                                       ; preds = %i2c_client_has_driver.exit4639
  %405 = ptrtoint ptr %driver.i4636 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %driver.i4636, align 4
  %owner2828 = getelementptr inbounds %struct.device_driver, ptr %406, i32 0, i32 2
  %407 = ptrtoint ptr %owner2828 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %owner2828, align 4
  %call2829 = call zeroext i1 @try_module_get(ptr noundef %408) #7
  br i1 %call2829, label %if.end2831, label %if.then2830

if.then2830:                                      ; preds = %if.end2825
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call2822) #7
  br label %frontend_detach

if.end2831:                                       ; preds = %if.end2825
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client_tuner2832 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %409 = ptrtoint ptr %i2c_client_tuner2832 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %call2822, ptr %i2c_client_tuner2832, align 4
  br label %sw.epilog3676

sw.bb2834:                                        ; preds = %if.end.sw.bb2834_crit_edge, %if.end.sw.bb2834_crit_edge5199
  %410 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %411 = ptrtoint ptr %410 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 0, ptr %410, align 4
  %i2c_adapter2839 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %412 = ptrtoint ptr %i2c_adapter2839 to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %adapter, ptr %i2c_adapter2839, align 4
  %frontend2841 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %413 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %frontend2841, ptr %si2168_config, align 4
  %ts_mode2843 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %414 = ptrtoint ptr %ts_mode2843 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 6, ptr %ts_mode2843, align 4
  %415 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2846 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.296, i32 noundef 20) #7
  %addr2847 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %416 = ptrtoint ptr %addr2847 to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 100, ptr %addr2847, align 2
  %platform_data2848 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %417 = ptrtoint ptr %platform_data2848 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %si2168_config, ptr %platform_data2848, align 4
  %call2851 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %i2c_adap2852 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call2853 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap2852, ptr noundef nonnull %info) #7
  %tobool.not.i.i4640 = icmp eq ptr %call2853, null
  %cmp.i.i4641 = icmp ugt ptr %call2853, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4642 = or i1 %tobool.not.i.i4640, %cmp.i.i4641
  br i1 %spec.select.i.i4642, label %sw.bb2834.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4646

sw.bb2834.frontend_detach_crit_edge:              ; preds = %sw.bb2834
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4646:                   ; preds = %sw.bb2834
  %driver.i4643 = getelementptr inbounds %struct.i2c_client, ptr %call2853, i32 0, i32 4, i32 6
  %418 = ptrtoint ptr %driver.i4643 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %driver.i4643, align 4
  %tobool.i4644.not = icmp eq ptr %419, null
  br i1 %tobool.i4644.not, label %i2c_client_has_driver.exit4646.frontend_detach_crit_edge, label %if.end2856

i2c_client_has_driver.exit4646.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4646
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end2856:                                       ; preds = %i2c_client_has_driver.exit4646
  %420 = ptrtoint ptr %driver.i4643 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %driver.i4643, align 4
  %owner2859 = getelementptr inbounds %struct.device_driver, ptr %421, i32 0, i32 2
  %422 = ptrtoint ptr %owner2859 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %owner2859, align 4
  %call2860 = call zeroext i1 @try_module_get(ptr noundef %423) #7
  br i1 %call2860, label %if.end2862, label %if.then2861

if.then2861:                                      ; preds = %if.end2856
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call2853) #7
  br label %frontend_detach

if.end2862:                                       ; preds = %if.end2856
  %i2c_client_demod2863 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %424 = ptrtoint ptr %i2c_client_demod2863 to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %call2853, ptr %i2c_client_demod2863, align 4
  %425 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_storeN_noabort(i32 %426, i32 8)
  store i64 0, ptr %425, align 4
  %427 = ptrtoint ptr %frontend2841 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %frontend2841, align 4
  %429 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %428, ptr %si2157_config, align 4
  %if_port2867 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %430 = ptrtoint ptr %if_port2867 to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 1, ptr %if_port2867, align 1
  %431 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2870 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.297, i32 noundef 20) #7
  %432 = ptrtoint ptr %addr2847 to i32
  call void @__asan_store2_noabort(i32 %432)
  store i16 96, ptr %addr2847, align 2
  %433 = ptrtoint ptr %platform_data2848 to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %si2157_config, ptr %platform_data2848, align 4
  %call2875 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %434 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %adapter, align 4
  %call2876 = call ptr @i2c_new_client_device(ptr noundef %435, ptr noundef nonnull %info) #7
  %tobool.not.i.i4647 = icmp eq ptr %call2876, null
  %cmp.i.i4648 = icmp ugt ptr %call2876, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4649 = or i1 %tobool.not.i.i4647, %cmp.i.i4648
  br i1 %spec.select.i.i4649, label %if.end2862.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4653

if.end2862.frontend_detach_crit_edge:             ; preds = %if.end2862
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4653:                   ; preds = %if.end2862
  %driver.i4650 = getelementptr inbounds %struct.i2c_client, ptr %call2876, i32 0, i32 4, i32 6
  %436 = ptrtoint ptr %driver.i4650 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %driver.i4650, align 4
  %tobool.i4651.not = icmp eq ptr %437, null
  br i1 %tobool.i4651.not, label %i2c_client_has_driver.exit4653.frontend_detach_crit_edge, label %if.end2879

i2c_client_has_driver.exit4653.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4653
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end2879:                                       ; preds = %i2c_client_has_driver.exit4653
  %438 = ptrtoint ptr %driver.i4650 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %driver.i4650, align 4
  %owner2882 = getelementptr inbounds %struct.device_driver, ptr %439, i32 0, i32 2
  %440 = ptrtoint ptr %owner2882 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %owner2882, align 4
  %call2883 = call zeroext i1 @try_module_get(ptr noundef %441) #7
  br i1 %call2883, label %if.end2885, label %if.then2884

if.then2884:                                      ; preds = %if.end2879
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call2876) #7
  br label %frontend_detach

if.end2885:                                       ; preds = %if.end2879
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client_tuner2886 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %442 = ptrtoint ptr %i2c_client_tuner2886 to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %call2876, ptr %i2c_client_tuner2886, align 4
  br label %sw.epilog3676

sw.bb2887:                                        ; preds = %if.end
  %call2894 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.290) #7
  %tobool2895.not = icmp eq ptr %call2894, null
  br i1 %tobool2895.not, label %cond.end2900, label %sw.bb2887.if.then2903_crit_edge

sw.bb2887.if.then2903_crit_edge:                  ; preds = %sw.bb2887
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2903

cond.end2900:                                     ; preds = %sw.bb2887
  %call2898 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.291) #7
  %call2899 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.290) #7
  %tobool2902.not = icmp eq ptr %call2899, null
  br i1 %tobool2902.not, label %do.end2912, label %cond.end2900.if.then2903_crit_edge

cond.end2900.if.then2903_crit_edge:               ; preds = %cond.end2900
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2903

if.then2903:                                      ; preds = %cond.end2900.if.then2903_crit_edge, %sw.bb2887.if.then2903_crit_edge
  %cond29015149 = phi ptr [ %call2899, %cond.end2900.if.then2903_crit_edge ], [ %call2894, %sw.bb2887.if.then2903_crit_edge ]
  %i2c_adap2904 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call2905 = call ptr %cond29015149(ptr noundef nonnull @dvbsky_s950c_m88ds3103_config, ptr noundef %i2c_adap2904, ptr noundef nonnull %adapter) #7
  %cmp2906 = icmp eq ptr %call2905, null
  br i1 %cmp2906, label %if.then2907, label %if.end2923

if.then2907:                                      ; preds = %if.then2903
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.290) #7
  br label %if.end2915.thread

do.end2912:                                       ; preds = %cond.end2900
  call void @__sanitizer_cov_trace_pc() #9
  %call2914 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293) #10
  br label %if.end2915.thread

if.end2915.thread:                                ; preds = %do.end2912, %if.then2907
  %frontend29185151 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %443 = ptrtoint ptr %frontend29185151 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr null, ptr %frontend29185151, align 4
  br label %sw.epilog3676

if.end2923:                                       ; preds = %if.then2903
  %frontend2918 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %444 = ptrtoint ptr %frontend2918 to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %call2905, ptr %frontend2918, align 4
  %445 = call ptr @memset(ptr %ts2020_config, i32 0, i32 20)
  %fe2926 = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 3
  %446 = ptrtoint ptr %fe2926 to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr %call2905, ptr %fe2926, align 4
  %get_agc_pwm2927 = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 5
  %447 = ptrtoint ptr %get_agc_pwm2927 to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr @m88ds3103_get_agc_pwm, ptr %get_agc_pwm2927, align 4
  %448 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2930 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.295, i32 noundef 20) #7
  %addr2931 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %449 = ptrtoint ptr %addr2931 to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 96, ptr %addr2931, align 2
  %platform_data2932 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %450 = ptrtoint ptr %platform_data2932 to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %ts2020_config, ptr %platform_data2932, align 4
  %call2935 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %451 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %adapter, align 4
  %call2936 = call ptr @i2c_new_client_device(ptr noundef %452, ptr noundef nonnull %info) #7
  %tobool.not.i.i4654 = icmp eq ptr %call2936, null
  %cmp.i.i4655 = icmp ugt ptr %call2936, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4656 = or i1 %tobool.not.i.i4654, %cmp.i.i4655
  br i1 %spec.select.i.i4656, label %if.end2923.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4660

if.end2923.frontend_detach_crit_edge:             ; preds = %if.end2923
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4660:                   ; preds = %if.end2923
  %driver.i4657 = getelementptr inbounds %struct.i2c_client, ptr %call2936, i32 0, i32 4, i32 6
  %453 = ptrtoint ptr %driver.i4657 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %driver.i4657, align 4
  %tobool.i4658.not = icmp eq ptr %454, null
  br i1 %tobool.i4658.not, label %i2c_client_has_driver.exit4660.frontend_detach_crit_edge, label %if.end2939

i2c_client_has_driver.exit4660.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4660
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end2939:                                       ; preds = %i2c_client_has_driver.exit4660
  %455 = ptrtoint ptr %driver.i4657 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %driver.i4657, align 4
  %owner2942 = getelementptr inbounds %struct.device_driver, ptr %456, i32 0, i32 2
  %457 = ptrtoint ptr %owner2942 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %owner2942, align 4
  %call2943 = call zeroext i1 @try_module_get(ptr noundef %458) #7
  br i1 %call2943, label %if.end2945, label %if.then2944

if.then2944:                                      ; preds = %if.end2939
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call2936) #7
  br label %frontend_detach

if.end2945:                                       ; preds = %if.end2939
  call void @__sanitizer_cov_trace_pc() #9
  %459 = ptrtoint ptr %frontend2918 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %frontend2918, align 4
  %get_rf_strength2950 = getelementptr inbounds %struct.dvb_frontend, ptr %460, i32 0, i32 1, i32 32, i32 13
  %461 = ptrtoint ptr %get_rf_strength2950 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %get_rf_strength2950, align 4
  %read_signal_strength2954 = getelementptr inbounds %struct.dvb_frontend, ptr %460, i32 0, i32 1, i32 17
  %463 = ptrtoint ptr %read_signal_strength2954 to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %462, ptr %read_signal_strength2954, align 4
  %i2c_client_tuner2955 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %464 = ptrtoint ptr %i2c_client_tuner2955 to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr %call2936, ptr %i2c_client_tuner2955, align 4
  br label %sw.epilog3676

sw.bb2956:                                        ; preds = %if.end
  %465 = getelementptr inbounds i8, ptr %m88ds3103_pdata, i32 4
  %466 = call ptr @memset(ptr %465, i32 0, i32 32)
  %467 = ptrtoint ptr %m88ds3103_pdata to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 27000000, ptr %m88ds3103_pdata, align 4
  %i2c_wr_max = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 1
  %468 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_store2_noabort(i32 %468)
  store i16 33, ptr %i2c_wr_max, align 4
  %agc = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 6
  %469 = ptrtoint ptr %agc to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 -103, ptr %agc, align 1
  %lnb_en_pol = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 7
  %470 = ptrtoint ptr %lnb_en_pol to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 16, ptr %lnb_en_pol, align 2
  %nr2957 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %471 = ptrtoint ptr %nr2957 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %nr2957, align 4
  %473 = zext i32 %472 to i64
  call void @__sanitizer_cov_trace_switch(i64 %473, ptr @__sancov_gen_cov_switch_values.359)
  switch i32 %472, label %sw.bb2956.cleanup3779_crit_edge [
    i32 1, label %sw.bb2958
    i32 2, label %sw.bb2965
  ]

sw.bb2956.cleanup3779_crit_edge:                  ; preds = %sw.bb2956
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup3779

sw.bb2958:                                        ; preds = %sw.bb2956
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2960 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1
  %ts_mode2961 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 2
  %474 = ptrtoint ptr %ts_mode2961 to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 2, ptr %ts_mode2961, align 4
  %ts_clk = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 3
  %475 = ptrtoint ptr %ts_clk to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 16000, ptr %ts_clk, align 4
  %ts_clk_pol = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 5
  %476 = ptrtoint ptr %ts_clk_pol to i32
  call void @__asan_load1_noabort(i32 %476)
  %bf.load2962 = load i8, ptr %ts_clk_pol, align 4
  %bf.set2964 = or i8 %bf.load2962, -128
  store i8 %bf.set2964, ptr %ts_clk_pol, align 4
  br label %sw.epilog2975

sw.bb2965:                                        ; preds = %sw.bb2956
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_bus2966 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14
  %ts_clk2969 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 3
  %477 = ptrtoint ptr %ts_clk2969 to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 96000, ptr %ts_clk2969, align 4
  %ts_clk_pol2970 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 5
  %478 = ptrtoint ptr %ts_clk_pol2970 to i32
  call void @__asan_load1_noabort(i32 %478)
  %bf.load2971 = load i8, ptr %ts_clk_pol2970, align 4
  %bf.clear2972 = and i8 %bf.load2971, 127
  store i8 %bf.clear2972, ptr %ts_clk_pol2970, align 4
  br label %sw.epilog2975

sw.epilog2975:                                    ; preds = %sw.bb2965, %sw.bb2958
  %p_set_voltage.0 = phi ptr [ @dvbsky_s952_portc_set_voltage, %sw.bb2965 ], [ @dvbsky_t9580_set_voltage, %sw.bb2958 ]
  %i2c_bus.0 = phi ptr [ %i2c_bus2966, %sw.bb2965 ], [ %arrayidx2960, %sw.bb2958 ]
  %479 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call2978 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.300, i32 noundef 20) #7
  %addr2979 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %480 = ptrtoint ptr %addr2979 to i32
  call void @__asan_store2_noabort(i32 %480)
  store i16 104, ptr %addr2979, align 2
  %platform_data2980 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %481 = ptrtoint ptr %platform_data2980 to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr %m88ds3103_pdata, ptr %platform_data2980, align 4
  %call2983 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %i2c_adap2984 = getelementptr inbounds %struct.cx23885_i2c, ptr %i2c_bus.0, i32 0, i32 2
  %call2985 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap2984, ptr noundef nonnull %info) #7
  %tobool.not.i.i4661 = icmp eq ptr %call2985, null
  %cmp.i.i4662 = icmp ugt ptr %call2985, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4663 = or i1 %tobool.not.i.i4661, %cmp.i.i4662
  br i1 %spec.select.i.i4663, label %sw.epilog2975.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4667

sw.epilog2975.frontend_detach_crit_edge:          ; preds = %sw.epilog2975
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4667:                   ; preds = %sw.epilog2975
  %driver.i4664 = getelementptr inbounds %struct.i2c_client, ptr %call2985, i32 0, i32 4, i32 6
  %482 = ptrtoint ptr %driver.i4664 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %driver.i4664, align 4
  %tobool.i4665.not = icmp eq ptr %483, null
  br i1 %tobool.i4665.not, label %i2c_client_has_driver.exit4667.frontend_detach_crit_edge, label %if.end2988

i2c_client_has_driver.exit4667.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4667
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end2988:                                       ; preds = %i2c_client_has_driver.exit4667
  %484 = ptrtoint ptr %driver.i4664 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %driver.i4664, align 4
  %owner2991 = getelementptr inbounds %struct.device_driver, ptr %485, i32 0, i32 2
  %486 = ptrtoint ptr %owner2991 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %owner2991, align 4
  %call2992 = call zeroext i1 @try_module_get(ptr noundef %487) #7
  br i1 %call2992, label %if.end2994, label %if.then2993

if.then2993:                                      ; preds = %if.end2988
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call2985) #7
  br label %frontend_detach

if.end2994:                                       ; preds = %if.end2988
  %i2c_client_demod2995 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %488 = ptrtoint ptr %i2c_client_demod2995 to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr %call2985, ptr %i2c_client_demod2995, align 4
  %get_i2c_adapter = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 9
  %489 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %get_i2c_adapter, align 4
  %call2996 = call ptr %490(ptr noundef nonnull %call2985) #7
  %491 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %491)
  store ptr %call2996, ptr %adapter, align 4
  %get_dvb_frontend2997 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 8
  %492 = ptrtoint ptr %get_dvb_frontend2997 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %get_dvb_frontend2997, align 4
  %call2998 = call ptr %493(ptr noundef nonnull %call2985) #7
  %frontend3000 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %494 = ptrtoint ptr %frontend3000 to i32
  call void @__asan_store4_noabort(i32 %494)
  store ptr %call2998, ptr %frontend3000, align 4
  %495 = call ptr @memset(ptr %ts2020_config, i32 0, i32 20)
  %fe3003 = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 3
  %496 = ptrtoint ptr %fe3003 to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr %call2998, ptr %fe3003, align 4
  %get_agc_pwm3004 = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 5
  %497 = ptrtoint ptr %get_agc_pwm3004 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr @m88ds3103_get_agc_pwm, ptr %get_agc_pwm3004, align 4
  %498 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3007 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.295, i32 noundef 20) #7
  %499 = ptrtoint ptr %addr2979 to i32
  call void @__asan_store2_noabort(i32 %499)
  store i16 96, ptr %addr2979, align 2
  %500 = ptrtoint ptr %platform_data2980 to i32
  call void @__asan_store4_noabort(i32 %500)
  store ptr %ts2020_config, ptr %platform_data2980, align 4
  %call3012 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %501 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %adapter, align 4
  %call3013 = call ptr @i2c_new_client_device(ptr noundef %502, ptr noundef nonnull %info) #7
  %tobool.not.i.i4668 = icmp eq ptr %call3013, null
  %cmp.i.i4669 = icmp ugt ptr %call3013, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4670 = or i1 %tobool.not.i.i4668, %cmp.i.i4669
  br i1 %spec.select.i.i4670, label %if.end2994.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4674

if.end2994.frontend_detach_crit_edge:             ; preds = %if.end2994
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4674:                   ; preds = %if.end2994
  %driver.i4671 = getelementptr inbounds %struct.i2c_client, ptr %call3013, i32 0, i32 4, i32 6
  %503 = ptrtoint ptr %driver.i4671 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %driver.i4671, align 4
  %tobool.i4672.not = icmp eq ptr %504, null
  br i1 %tobool.i4672.not, label %i2c_client_has_driver.exit4674.frontend_detach_crit_edge, label %if.end3016

i2c_client_has_driver.exit4674.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4674
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end3016:                                       ; preds = %i2c_client_has_driver.exit4674
  %505 = ptrtoint ptr %driver.i4671 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %driver.i4671, align 4
  %owner3019 = getelementptr inbounds %struct.device_driver, ptr %506, i32 0, i32 2
  %507 = ptrtoint ptr %owner3019 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %owner3019, align 4
  %call3020 = call zeroext i1 @try_module_get(ptr noundef %508) #7
  br i1 %call3020, label %if.end3022, label %if.then3021

if.then3021:                                      ; preds = %if.end3016
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3013) #7
  br label %frontend_detach

if.end3022:                                       ; preds = %if.end3016
  call void @__sanitizer_cov_trace_pc() #9
  %509 = ptrtoint ptr %frontend3000 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %frontend3000, align 4
  %get_rf_strength3027 = getelementptr inbounds %struct.dvb_frontend, ptr %510, i32 0, i32 1, i32 32, i32 13
  %511 = ptrtoint ptr %get_rf_strength3027 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %get_rf_strength3027, align 4
  %read_signal_strength3031 = getelementptr inbounds %struct.dvb_frontend, ptr %510, i32 0, i32 1, i32 17
  %513 = ptrtoint ptr %read_signal_strength3031 to i32
  call void @__asan_store4_noabort(i32 %513)
  store ptr %512, ptr %read_signal_strength3031, align 4
  %514 = load ptr, ptr %frontend3000, align 4
  %set_voltage3035 = getelementptr inbounds %struct.dvb_frontend, ptr %514, i32 0, i32 1, i32 25
  %515 = ptrtoint ptr %set_voltage3035 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %set_voltage3035, align 4
  %fe_set_voltage3036 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 41
  %517 = ptrtoint ptr %fe_set_voltage3036 to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr %516, ptr %fe_set_voltage3036, align 4
  %518 = load ptr, ptr %frontend3000, align 4
  %set_voltage3040 = getelementptr inbounds %struct.dvb_frontend, ptr %518, i32 0, i32 1, i32 25
  %519 = ptrtoint ptr %set_voltage3040 to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr %p_set_voltage.0, ptr %set_voltage3040, align 4
  %i2c_client_tuner3041 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %520 = ptrtoint ptr %i2c_client_tuner3041 to i32
  call void @__asan_store4_noabort(i32 %520)
  store ptr %call3013, ptr %i2c_client_tuner3041, align 4
  br label %sw.epilog3676

sw.bb3042:                                        ; preds = %if.end
  %521 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %522 = ptrtoint ptr %521 to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 0, ptr %521, align 4
  %nr3043 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %523 = ptrtoint ptr %nr3043 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %nr3043, align 4
  %525 = zext i32 %524 to i64
  call void @__sanitizer_cov_trace_switch(i64 %525, ptr @__sancov_gen_cov_switch_values.360)
  switch i32 %524, label %sw.bb3042.sw.epilog3052_crit_edge [
    i32 1, label %sw.bb3044
    i32 2, label %sw.bb3048
  ]

sw.bb3042.sw.epilog3052_crit_edge:                ; preds = %sw.bb3042
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3052

sw.bb3044:                                        ; preds = %sw.bb3042
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3046 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1
  br label %sw.epilog3052.sink.split

sw.bb3048:                                        ; preds = %sw.bb3042
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_bus3049 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14
  br label %sw.epilog3052.sink.split

sw.epilog3052.sink.split:                         ; preds = %sw.bb3048, %sw.bb3044
  %.sink = phi i8 [ 3, %sw.bb3048 ], [ 6, %sw.bb3044 ]
  %i2c_bus.1.ph = phi ptr [ %i2c_bus3049, %sw.bb3048 ], [ %arrayidx3046, %sw.bb3044 ]
  %ts_mode3051 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %526 = ptrtoint ptr %ts_mode3051 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 %.sink, ptr %ts_mode3051, align 4
  br label %sw.epilog3052

sw.epilog3052:                                    ; preds = %sw.epilog3052.sink.split, %sw.bb3042.sw.epilog3052_crit_edge
  %i2c_bus.1 = phi ptr [ null, %sw.bb3042.sw.epilog3052_crit_edge ], [ %i2c_bus.1.ph, %sw.epilog3052.sink.split ]
  %i2c_adapter3053 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %527 = ptrtoint ptr %i2c_adapter3053 to i32
  call void @__asan_store4_noabort(i32 %527)
  store ptr %adapter, ptr %i2c_adapter3053, align 4
  %frontend3055 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %528 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %528)
  store ptr %frontend3055, ptr %si2168_config, align 4
  %529 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3059 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.296, i32 noundef 20) #7
  %addr3060 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %530 = ptrtoint ptr %addr3060 to i32
  call void @__asan_store2_noabort(i32 %530)
  store i16 100, ptr %addr3060, align 2
  %platform_data3061 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %531 = ptrtoint ptr %platform_data3061 to i32
  call void @__asan_store4_noabort(i32 %531)
  store ptr %si2168_config, ptr %platform_data3061, align 4
  %call3064 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %i2c_adap3065 = getelementptr inbounds %struct.cx23885_i2c, ptr %i2c_bus.1, i32 0, i32 2
  %call3066 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3065, ptr noundef nonnull %info) #7
  %tobool.not.i.i4675 = icmp eq ptr %call3066, null
  %cmp.i.i4676 = icmp ugt ptr %call3066, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4677 = or i1 %tobool.not.i.i4675, %cmp.i.i4676
  br i1 %spec.select.i.i4677, label %sw.epilog3052.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4681

sw.epilog3052.frontend_detach_crit_edge:          ; preds = %sw.epilog3052
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4681:                   ; preds = %sw.epilog3052
  %driver.i4678 = getelementptr inbounds %struct.i2c_client, ptr %call3066, i32 0, i32 4, i32 6
  %532 = ptrtoint ptr %driver.i4678 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %driver.i4678, align 4
  %tobool.i4679.not = icmp eq ptr %533, null
  br i1 %tobool.i4679.not, label %i2c_client_has_driver.exit4681.frontend_detach_crit_edge, label %if.end3069

i2c_client_has_driver.exit4681.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4681
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end3069:                                       ; preds = %i2c_client_has_driver.exit4681
  %534 = ptrtoint ptr %driver.i4678 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %driver.i4678, align 4
  %owner3072 = getelementptr inbounds %struct.device_driver, ptr %535, i32 0, i32 2
  %536 = ptrtoint ptr %owner3072 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %owner3072, align 4
  %call3073 = call zeroext i1 @try_module_get(ptr noundef %537) #7
  br i1 %call3073, label %if.end3075, label %if.then3074

if.then3074:                                      ; preds = %if.end3069
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3066) #7
  br label %frontend_detach

if.end3075:                                       ; preds = %if.end3069
  %i2c_client_demod3076 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %538 = ptrtoint ptr %i2c_client_demod3076 to i32
  call void @__asan_store4_noabort(i32 %538)
  store ptr %call3066, ptr %i2c_client_demod3076, align 4
  %539 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_storeN_noabort(i32 %540, i32 8)
  store i64 0, ptr %539, align 4
  %541 = ptrtoint ptr %frontend3055 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %frontend3055, align 4
  %543 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %543)
  store ptr %542, ptr %si2157_config, align 4
  %if_port3080 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %544 = ptrtoint ptr %if_port3080 to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 1, ptr %if_port3080, align 1
  %545 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3083 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.297, i32 noundef 20) #7
  %546 = ptrtoint ptr %addr3060 to i32
  call void @__asan_store2_noabort(i32 %546)
  store i16 96, ptr %addr3060, align 2
  %547 = ptrtoint ptr %platform_data3061 to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %si2157_config, ptr %platform_data3061, align 4
  %call3088 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info) #7
  %548 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %adapter, align 4
  %call3089 = call ptr @i2c_new_client_device(ptr noundef %549, ptr noundef nonnull %info) #7
  %tobool.not.i.i4682 = icmp eq ptr %call3089, null
  %cmp.i.i4683 = icmp ugt ptr %call3089, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4684 = or i1 %tobool.not.i.i4682, %cmp.i.i4683
  br i1 %spec.select.i.i4684, label %if.end3075.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4688

if.end3075.frontend_detach_crit_edge:             ; preds = %if.end3075
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4688:                   ; preds = %if.end3075
  %driver.i4685 = getelementptr inbounds %struct.i2c_client, ptr %call3089, i32 0, i32 4, i32 6
  %550 = ptrtoint ptr %driver.i4685 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %driver.i4685, align 4
  %tobool.i4686.not = icmp eq ptr %551, null
  br i1 %tobool.i4686.not, label %i2c_client_has_driver.exit4688.frontend_detach_crit_edge, label %if.end3092

i2c_client_has_driver.exit4688.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4688
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end3092:                                       ; preds = %i2c_client_has_driver.exit4688
  %552 = ptrtoint ptr %driver.i4685 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %driver.i4685, align 4
  %owner3095 = getelementptr inbounds %struct.device_driver, ptr %553, i32 0, i32 2
  %554 = ptrtoint ptr %owner3095 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %owner3095, align 4
  %call3096 = call zeroext i1 @try_module_get(ptr noundef %555) #7
  br i1 %call3096, label %if.end3098, label %if.then3097

if.then3097:                                      ; preds = %if.end3092
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3089) #7
  br label %frontend_detach

if.end3098:                                       ; preds = %if.end3092
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client_tuner3099 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %556 = ptrtoint ptr %i2c_client_tuner3099 to i32
  call void @__asan_store4_noabort(i32 %556)
  store ptr %call3089, ptr %i2c_client_tuner3099, align 4
  br label %sw.epilog3676

sw.bb3100:                                        ; preds = %if.end.sw.bb3100_crit_edge, %if.end.sw.bb3100_crit_edge5200
  %nr3105 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %557 = ptrtoint ptr %nr3105 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %nr3105, align 4
  %559 = zext i32 %558 to i64
  call void @__sanitizer_cov_trace_switch(i64 %559, ptr @__sancov_gen_cov_switch_values.361)
  switch i32 %558, label %sw.bb3100.sw.epilog3676_crit_edge [
    i32 1, label %sw.bb3106
    i32 2, label %sw.bb3191
  ]

sw.bb3100.sw.epilog3676_crit_edge:                ; preds = %sw.bb3100
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

sw.bb3106:                                        ; preds = %sw.bb3100
  %call3109 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.290) #7
  %tobool3110.not = icmp eq ptr %call3109, null
  br i1 %tobool3110.not, label %cond.end3115, label %sw.bb3106.if.then3118_crit_edge

sw.bb3106.if.then3118_crit_edge:                  ; preds = %sw.bb3106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3118

cond.end3115:                                     ; preds = %sw.bb3106
  %call3113 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.291) #7
  %call3114 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.290) #7
  %tobool3117.not = icmp eq ptr %call3114, null
  br i1 %tobool3117.not, label %do.end3127, label %cond.end3115.if.then3118_crit_edge

cond.end3115.if.then3118_crit_edge:               ; preds = %cond.end3115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3118

if.then3118:                                      ; preds = %cond.end3115.if.then3118_crit_edge, %sw.bb3106.if.then3118_crit_edge
  %cond31165155 = phi ptr [ %call3114, %cond.end3115.if.then3118_crit_edge ], [ %call3109, %sw.bb3106.if.then3118_crit_edge ]
  %i2c_adap3119 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call3120 = call ptr %cond31165155(ptr noundef nonnull @hauppauge_hvr5525_m88ds3103_config, ptr noundef %i2c_adap3119, ptr noundef nonnull %adapter) #7
  %cmp3121 = icmp eq ptr %call3120, null
  br i1 %cmp3121, label %if.then3122, label %if.end3138

if.then3122:                                      ; preds = %if.then3118
  call void @__sanitizer_cov_trace_pc() #9
  call void @__symbol_put(ptr noundef nonnull @.str.290) #7
  br label %if.end3130.thread

do.end3127:                                       ; preds = %cond.end3115
  call void @__sanitizer_cov_trace_pc() #9
  %call3129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293) #10
  br label %if.end3130.thread

if.end3130.thread:                                ; preds = %do.end3127, %if.then3122
  %frontend31335157 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %560 = ptrtoint ptr %frontend31335157 to i32
  call void @__asan_store4_noabort(i32 %560)
  store ptr null, ptr %frontend31335157, align 4
  br label %sw.epilog3676

if.end3138:                                       ; preds = %if.then3118
  %frontend3133 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %561 = ptrtoint ptr %frontend3133 to i32
  call void @__asan_store4_noabort(i32 %561)
  store ptr %call3120, ptr %frontend3133, align 4
  %562 = ptrtoint ptr %a8293_pdata to i32
  call void @__asan_store4_noabort(i32 %562)
  store ptr %call3120, ptr %a8293_pdata, align 4
  %563 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3144 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.285, i32 noundef 20) #7
  %addr3145 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %564 = ptrtoint ptr %addr3145 to i32
  call void @__asan_store2_noabort(i32 %564)
  store i16 11, ptr %addr3145, align 2
  %platform_data3146 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %565 = ptrtoint ptr %platform_data3146 to i32
  call void @__asan_store4_noabort(i32 %565)
  store ptr %a8293_pdata, ptr %platform_data3146, align 4
  %call3147 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.285) #7
  %call3149 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3119, ptr noundef nonnull %info) #7
  %tobool.not.i.i4689 = icmp eq ptr %call3149, null
  %cmp.i.i4690 = icmp ugt ptr %call3149, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4691 = or i1 %tobool.not.i.i4689, %cmp.i.i4690
  br i1 %spec.select.i.i4691, label %if.end3138.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4695

if.end3138.frontend_detach_crit_edge:             ; preds = %if.end3138
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4695:                   ; preds = %if.end3138
  %driver.i4692 = getelementptr inbounds %struct.i2c_client, ptr %call3149, i32 0, i32 4, i32 6
  %566 = ptrtoint ptr %driver.i4692 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %driver.i4692, align 4
  %tobool.i4693.not = icmp eq ptr %567, null
  br i1 %tobool.i4693.not, label %i2c_client_has_driver.exit4695.frontend_detach_crit_edge, label %if.end3152

i2c_client_has_driver.exit4695.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4695
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end3152:                                       ; preds = %i2c_client_has_driver.exit4695
  %568 = ptrtoint ptr %driver.i4692 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %driver.i4692, align 4
  %owner3155 = getelementptr inbounds %struct.device_driver, ptr %569, i32 0, i32 2
  %570 = ptrtoint ptr %owner3155 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %owner3155, align 4
  %call3156 = call zeroext i1 @try_module_get(ptr noundef %571) #7
  br i1 %call3156, label %if.end3158, label %if.then3157

if.then3157:                                      ; preds = %if.end3152
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3149) #7
  br label %frontend_detach

if.end3158:                                       ; preds = %if.end3152
  %i2c_client_sec3159 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 38
  %572 = ptrtoint ptr %i2c_client_sec3159 to i32
  call void @__asan_store4_noabort(i32 %572)
  store ptr %call3149, ptr %i2c_client_sec3159, align 4
  %573 = ptrtoint ptr %frontend3133 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %frontend3133, align 4
  %575 = ptrtoint ptr %m88rs6000t_config to i32
  call void @__asan_store4_noabort(i32 %575)
  store ptr %574, ptr %m88rs6000t_config, align 4
  %576 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3165 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.303, i32 noundef 20) #7
  %577 = ptrtoint ptr %addr3145 to i32
  call void @__asan_store2_noabort(i32 %577)
  store i16 33, ptr %addr3145, align 2
  %578 = ptrtoint ptr %platform_data3146 to i32
  call void @__asan_store4_noabort(i32 %578)
  store ptr %m88rs6000t_config, ptr %platform_data3146, align 4
  %call3170 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.304, ptr noundef nonnull %info) #7
  %579 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %adapter, align 4
  %call3171 = call ptr @i2c_new_client_device(ptr noundef %580, ptr noundef nonnull %info) #7
  %tobool.not.i.i4696 = icmp eq ptr %call3171, null
  %cmp.i.i4697 = icmp ugt ptr %call3171, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4698 = or i1 %tobool.not.i.i4696, %cmp.i.i4697
  br i1 %spec.select.i.i4698, label %if.end3158.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4702

if.end3158.frontend_detach_crit_edge:             ; preds = %if.end3158
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4702:                   ; preds = %if.end3158
  %driver.i4699 = getelementptr inbounds %struct.i2c_client, ptr %call3171, i32 0, i32 4, i32 6
  %581 = ptrtoint ptr %driver.i4699 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %driver.i4699, align 4
  %tobool.i4700.not = icmp eq ptr %582, null
  br i1 %tobool.i4700.not, label %i2c_client_has_driver.exit4702.frontend_detach_crit_edge, label %if.end3174

i2c_client_has_driver.exit4702.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4702
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end3174:                                       ; preds = %i2c_client_has_driver.exit4702
  %583 = ptrtoint ptr %driver.i4699 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %driver.i4699, align 4
  %owner3177 = getelementptr inbounds %struct.device_driver, ptr %584, i32 0, i32 2
  %585 = ptrtoint ptr %owner3177 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %owner3177, align 4
  %call3178 = call zeroext i1 @try_module_get(ptr noundef %586) #7
  br i1 %call3178, label %if.end3180, label %if.then3179

if.then3179:                                      ; preds = %if.end3174
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3171) #7
  br label %frontend_detach

if.end3180:                                       ; preds = %if.end3174
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client_tuner3181 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %587 = ptrtoint ptr %i2c_client_tuner3181 to i32
  call void @__asan_store4_noabort(i32 %587)
  store ptr %call3171, ptr %i2c_client_tuner3181, align 4
  %588 = ptrtoint ptr %frontend3133 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %frontend3133, align 4
  %get_rf_strength3186 = getelementptr inbounds %struct.dvb_frontend, ptr %589, i32 0, i32 1, i32 32, i32 13
  %590 = ptrtoint ptr %get_rf_strength3186 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %get_rf_strength3186, align 4
  %read_signal_strength3190 = getelementptr inbounds %struct.dvb_frontend, ptr %589, i32 0, i32 1, i32 17
  %592 = ptrtoint ptr %read_signal_strength3190 to i32
  call void @__asan_store4_noabort(i32 %592)
  store ptr %591, ptr %read_signal_strength3190, align 4
  br label %sw.epilog3676

sw.bb3191:                                        ; preds = %sw.bb3100
  %593 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %594 = ptrtoint ptr %593 to i32
  call void @__asan_store4_noabort(i32 %594)
  store i32 0, ptr %593, align 4
  %i2c_adapter3192 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %595 = ptrtoint ptr %i2c_adapter3192 to i32
  call void @__asan_store4_noabort(i32 %595)
  store ptr %adapter, ptr %i2c_adapter3192, align 4
  %frontend3194 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %596 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %596)
  store ptr %frontend3194, ptr %si2168_config, align 4
  %ts_mode3196 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %597 = ptrtoint ptr %ts_mode3196 to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 3, ptr %ts_mode3196, align 4
  %598 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3199 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.296, i32 noundef 20) #7
  %addr3200 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %599 = ptrtoint ptr %addr3200 to i32
  call void @__asan_store2_noabort(i32 %599)
  store i16 100, ptr %addr3200, align 2
  %platform_data3201 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %600 = ptrtoint ptr %platform_data3201 to i32
  call void @__asan_store4_noabort(i32 %600)
  store ptr %si2168_config, ptr %platform_data3201, align 4
  %call3204 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.304, ptr noundef nonnull %info) #7
  %i2c_adap3205 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call3206 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3205, ptr noundef nonnull %info) #7
  %tobool.not.i.i4703 = icmp eq ptr %call3206, null
  %cmp.i.i4704 = icmp ugt ptr %call3206, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4705 = or i1 %tobool.not.i.i4703, %cmp.i.i4704
  br i1 %spec.select.i.i4705, label %sw.bb3191.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4709

sw.bb3191.frontend_detach_crit_edge:              ; preds = %sw.bb3191
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4709:                   ; preds = %sw.bb3191
  %driver.i4706 = getelementptr inbounds %struct.i2c_client, ptr %call3206, i32 0, i32 4, i32 6
  %601 = ptrtoint ptr %driver.i4706 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %driver.i4706, align 4
  %tobool.i4707.not = icmp eq ptr %602, null
  br i1 %tobool.i4707.not, label %i2c_client_has_driver.exit4709.frontend_detach_crit_edge, label %if.end3209

i2c_client_has_driver.exit4709.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4709
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end3209:                                       ; preds = %i2c_client_has_driver.exit4709
  %603 = ptrtoint ptr %driver.i4706 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %driver.i4706, align 4
  %owner3212 = getelementptr inbounds %struct.device_driver, ptr %604, i32 0, i32 2
  %605 = ptrtoint ptr %owner3212 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %owner3212, align 4
  %call3213 = call zeroext i1 @try_module_get(ptr noundef %606) #7
  br i1 %call3213, label %if.end3215, label %if.then3214

if.then3214:                                      ; preds = %if.end3209
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3206) #7
  br label %frontend_detach

if.end3215:                                       ; preds = %if.end3209
  %i2c_client_demod3216 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %607 = ptrtoint ptr %i2c_client_demod3216 to i32
  call void @__asan_store4_noabort(i32 %607)
  store ptr %call3206, ptr %i2c_client_demod3216, align 4
  %608 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %609 = ptrtoint ptr %608 to i32
  call void @__asan_storeN_noabort(i32 %609, i32 8)
  store i64 0, ptr %608, align 4
  %610 = ptrtoint ptr %frontend3194 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %frontend3194, align 4
  %612 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %612)
  store ptr %611, ptr %si2157_config, align 4
  %if_port3220 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %613 = ptrtoint ptr %if_port3220 to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 1, ptr %if_port3220, align 1
  %614 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3223 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.297, i32 noundef 20) #7
  %615 = ptrtoint ptr %addr3200 to i32
  call void @__asan_store2_noabort(i32 %615)
  store i16 96, ptr %addr3200, align 2
  %616 = ptrtoint ptr %platform_data3201 to i32
  call void @__asan_store4_noabort(i32 %616)
  store ptr %si2157_config, ptr %platform_data3201, align 4
  %call3228 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.304, ptr noundef nonnull %info) #7
  %i2c_adap3229 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call3230 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3229, ptr noundef nonnull %info) #7
  %tobool.not.i.i4710 = icmp eq ptr %call3230, null
  %cmp.i.i4711 = icmp ugt ptr %call3230, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4712 = or i1 %tobool.not.i.i4710, %cmp.i.i4711
  br i1 %spec.select.i.i4712, label %if.end3215.if.then3232_crit_edge, label %i2c_client_has_driver.exit4716

if.end3215.if.then3232_crit_edge:                 ; preds = %if.end3215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3232

i2c_client_has_driver.exit4716:                   ; preds = %if.end3215
  %driver.i4713 = getelementptr inbounds %struct.i2c_client, ptr %call3230, i32 0, i32 4, i32 6
  %617 = ptrtoint ptr %driver.i4713 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %driver.i4713, align 4
  %tobool.i4714.not = icmp eq ptr %618, null
  br i1 %tobool.i4714.not, label %i2c_client_has_driver.exit4716.if.then3232_crit_edge, label %if.end3237

i2c_client_has_driver.exit4716.if.then3232_crit_edge: ; preds = %i2c_client_has_driver.exit4716
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3232

if.then3232:                                      ; preds = %i2c_client_has_driver.exit4716.if.then3232_crit_edge, %if.end3215.if.then3232_crit_edge
  %619 = ptrtoint ptr %driver.i4706 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %driver.i4706, align 4
  %owner3235 = getelementptr inbounds %struct.device_driver, ptr %620, i32 0, i32 2
  %621 = ptrtoint ptr %owner3235 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %owner3235, align 4
  call void @module_put(ptr noundef %622) #7
  call void @i2c_unregister_device(ptr noundef nonnull %call3206) #7
  %623 = ptrtoint ptr %i2c_client_demod3216 to i32
  call void @__asan_store4_noabort(i32 %623)
  store ptr null, ptr %i2c_client_demod3216, align 4
  br label %frontend_detach

if.end3237:                                       ; preds = %i2c_client_has_driver.exit4716
  %624 = ptrtoint ptr %driver.i4713 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %driver.i4713, align 4
  %owner3240 = getelementptr inbounds %struct.device_driver, ptr %625, i32 0, i32 2
  %626 = ptrtoint ptr %owner3240 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %owner3240, align 4
  %call3241 = call zeroext i1 @try_module_get(ptr noundef %627) #7
  br i1 %call3241, label %if.end3247, label %if.then3242

if.then3242:                                      ; preds = %if.end3237
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3230) #7
  %628 = ptrtoint ptr %driver.i4706 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %driver.i4706, align 4
  %owner3245 = getelementptr inbounds %struct.device_driver, ptr %629, i32 0, i32 2
  %630 = ptrtoint ptr %owner3245 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %owner3245, align 4
  call void @module_put(ptr noundef %631) #7
  call void @i2c_unregister_device(ptr noundef nonnull %call3206) #7
  %632 = ptrtoint ptr %i2c_client_demod3216 to i32
  call void @__asan_store4_noabort(i32 %632)
  store ptr null, ptr %i2c_client_demod3216, align 4
  br label %frontend_detach

if.end3247:                                       ; preds = %if.end3237
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client_tuner3248 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %633 = ptrtoint ptr %i2c_client_tuner3248 to i32
  call void @__asan_store4_noabort(i32 %633)
  store ptr %call3230, ptr %i2c_client_tuner3248, align 4
  %tuner_priv = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 20, i32 35, i32 4
  %634 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %634)
  store ptr %call3230, ptr %tuner_priv, align 4
  %tuner_ops3254 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 20, i32 35, i32 1, i32 32
  %635 = ptrtoint ptr %frontend3194 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %frontend3194, align 4
  %tuner_ops3258 = getelementptr inbounds %struct.dvb_frontend, ptr %636, i32 0, i32 1, i32 32
  %637 = call ptr @memcpy(ptr %tuner_ops3254, ptr %tuner_ops3258, i32 220)
  br label %sw.epilog3676

do.end3263:                                       ; preds = %if.end.do.end3263_crit_edge, %if.end.do.end3263_crit_edge5201
  %nr3266 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %638 = ptrtoint ptr %nr3266 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %nr3266, align 4
  %call3267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.21, i32 noundef %16, i32 noundef %639) #10
  %640 = ptrtoint ptr %nr3266 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %nr3266, align 4
  %642 = zext i32 %641 to i64
  call void @__sanitizer_cov_trace_switch(i64 %642, ptr @__sancov_gen_cov_switch_values.362)
  switch i32 %641, label %do.end3263.sw.epilog3676_crit_edge [
    i32 1, label %sw.bb3269
    i32 2, label %sw.bb3351
  ]

do.end3263.sw.epilog3676_crit_edge:               ; preds = %do.end3263
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

sw.bb3269:                                        ; preds = %do.end3263
  %643 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_store4_noabort(i32 %644)
  store i32 0, ptr %643, align 4
  %i2c_adapter3270 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %645 = ptrtoint ptr %i2c_adapter3270 to i32
  call void @__asan_store4_noabort(i32 %645)
  store ptr %adapter, ptr %i2c_adapter3270, align 4
  %frontend3272 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %646 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %646)
  store ptr %frontend3272, ptr %si2168_config, align 4
  %ts_mode3274 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %647 = ptrtoint ptr %ts_mode3274 to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 3, ptr %ts_mode3274, align 4
  %648 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3277 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.296, i32 noundef 20) #7
  %addr3278 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %649 = ptrtoint ptr %addr3278 to i32
  call void @__asan_store2_noabort(i32 %649)
  store i16 100, ptr %addr3278, align 2
  %platform_data3279 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %650 = ptrtoint ptr %platform_data3279 to i32
  call void @__asan_store4_noabort(i32 %650)
  store ptr %si2168_config, ptr %platform_data3279, align 4
  %call3282 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.304, ptr noundef nonnull %info) #7
  %i2c_adap3285 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call3286 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3285, ptr noundef nonnull %info) #7
  %tobool.not.i.i4717 = icmp eq ptr %call3286, null
  %cmp.i.i4718 = icmp ugt ptr %call3286, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4719 = or i1 %tobool.not.i.i4717, %cmp.i.i4718
  br i1 %spec.select.i.i4719, label %sw.bb3269.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4723

sw.bb3269.frontend_detach_crit_edge:              ; preds = %sw.bb3269
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4723:                   ; preds = %sw.bb3269
  %driver.i4720 = getelementptr inbounds %struct.i2c_client, ptr %call3286, i32 0, i32 4, i32 6
  %651 = ptrtoint ptr %driver.i4720 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %driver.i4720, align 4
  %tobool.i4721.not = icmp eq ptr %652, null
  br i1 %tobool.i4721.not, label %i2c_client_has_driver.exit4723.frontend_detach_crit_edge, label %if.end3289

i2c_client_has_driver.exit4723.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4723
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end3289:                                       ; preds = %i2c_client_has_driver.exit4723
  %653 = ptrtoint ptr %driver.i4720 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %driver.i4720, align 4
  %owner3292 = getelementptr inbounds %struct.device_driver, ptr %654, i32 0, i32 2
  %655 = ptrtoint ptr %owner3292 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %owner3292, align 4
  %call3293 = call zeroext i1 @try_module_get(ptr noundef %656) #7
  br i1 %call3293, label %if.end3295, label %if.then3294

if.then3294:                                      ; preds = %if.end3289
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3286) #7
  br label %frontend_detach

if.end3295:                                       ; preds = %if.end3289
  %i2c_client_demod3296 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %657 = ptrtoint ptr %i2c_client_demod3296 to i32
  call void @__asan_store4_noabort(i32 %657)
  store ptr %call3286, ptr %i2c_client_demod3296, align 4
  %658 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %659 = ptrtoint ptr %658 to i32
  call void @__asan_storeN_noabort(i32 %659, i32 8)
  store i64 0, ptr %658, align 4
  %660 = ptrtoint ptr %frontend3272 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %frontend3272, align 4
  %662 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %662)
  store ptr %661, ptr %si2157_config, align 4
  %if_port3300 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %663 = ptrtoint ptr %if_port3300 to i32
  call void @__asan_store1_noabort(i32 %663)
  store i8 1, ptr %if_port3300, align 1
  %664 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3303 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.297, i32 noundef 20) #7
  %665 = ptrtoint ptr %addr3278 to i32
  call void @__asan_store2_noabort(i32 %665)
  store i16 96, ptr %addr3278, align 2
  %666 = ptrtoint ptr %platform_data3279 to i32
  call void @__asan_store4_noabort(i32 %666)
  store ptr %si2157_config, ptr %platform_data3279, align 4
  %call3308 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.304, ptr noundef nonnull %info) #7
  %i2c_adap3311 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call3312 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3311, ptr noundef nonnull %info) #7
  %tobool.not.i.i4724 = icmp eq ptr %call3312, null
  %cmp.i.i4725 = icmp ugt ptr %call3312, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4726 = or i1 %tobool.not.i.i4724, %cmp.i.i4725
  br i1 %spec.select.i.i4726, label %if.end3295.if.then3314_crit_edge, label %i2c_client_has_driver.exit4730

if.end3295.if.then3314_crit_edge:                 ; preds = %if.end3295
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3314

i2c_client_has_driver.exit4730:                   ; preds = %if.end3295
  %driver.i4727 = getelementptr inbounds %struct.i2c_client, ptr %call3312, i32 0, i32 4, i32 6
  %667 = ptrtoint ptr %driver.i4727 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %driver.i4727, align 4
  %tobool.i4728.not = icmp eq ptr %668, null
  br i1 %tobool.i4728.not, label %i2c_client_has_driver.exit4730.if.then3314_crit_edge, label %if.end3319

i2c_client_has_driver.exit4730.if.then3314_crit_edge: ; preds = %i2c_client_has_driver.exit4730
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3314

if.then3314:                                      ; preds = %i2c_client_has_driver.exit4730.if.then3314_crit_edge, %if.end3295.if.then3314_crit_edge
  %669 = ptrtoint ptr %driver.i4720 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %driver.i4720, align 4
  %owner3317 = getelementptr inbounds %struct.device_driver, ptr %670, i32 0, i32 2
  %671 = ptrtoint ptr %owner3317 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %owner3317, align 4
  call void @module_put(ptr noundef %672) #7
  call void @i2c_unregister_device(ptr noundef nonnull %call3286) #7
  %673 = ptrtoint ptr %i2c_client_demod3296 to i32
  call void @__asan_store4_noabort(i32 %673)
  store ptr null, ptr %i2c_client_demod3296, align 4
  br label %frontend_detach

if.end3319:                                       ; preds = %i2c_client_has_driver.exit4730
  %674 = ptrtoint ptr %driver.i4727 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %driver.i4727, align 4
  %owner3322 = getelementptr inbounds %struct.device_driver, ptr %675, i32 0, i32 2
  %676 = ptrtoint ptr %owner3322 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %owner3322, align 4
  %call3323 = call zeroext i1 @try_module_get(ptr noundef %677) #7
  br i1 %call3323, label %if.end3329, label %if.then3324

if.then3324:                                      ; preds = %if.end3319
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3312) #7
  %678 = ptrtoint ptr %driver.i4720 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %driver.i4720, align 4
  %owner3327 = getelementptr inbounds %struct.device_driver, ptr %679, i32 0, i32 2
  %680 = ptrtoint ptr %owner3327 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %owner3327, align 4
  call void @module_put(ptr noundef %681) #7
  call void @i2c_unregister_device(ptr noundef nonnull %call3286) #7
  %682 = ptrtoint ptr %i2c_client_demod3296 to i32
  call void @__asan_store4_noabort(i32 %682)
  store ptr null, ptr %i2c_client_demod3296, align 4
  br label %frontend_detach

if.end3329:                                       ; preds = %if.end3319
  %i2c_client_tuner3330 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %683 = ptrtoint ptr %i2c_client_tuner3330 to i32
  call void @__asan_store4_noabort(i32 %683)
  store ptr %call3312, ptr %i2c_client_tuner3330, align 4
  %684 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %board, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %685)
  %cmp3332 = icmp eq i32 %685, 56
  br i1 %cmp3332, label %do.end3336, label %if.end3329.sw.epilog3676_crit_edge

if.end3329.sw.epilog3676_crit_edge:               ; preds = %if.end3329
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

do.end3336:                                       ; preds = %if.end3329
  call void @__sanitizer_cov_trace_pc() #9
  %call3338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.21) #10
  %tuner_priv3341 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 20, i32 35, i32 4
  %686 = ptrtoint ptr %tuner_priv3341 to i32
  call void @__asan_store4_noabort(i32 %686)
  store ptr %call3312, ptr %tuner_priv3341, align 4
  %tuner_ops3345 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 20, i32 35, i32 1, i32 32
  %687 = ptrtoint ptr %frontend3272 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %frontend3272, align 4
  %tuner_ops3349 = getelementptr inbounds %struct.dvb_frontend, ptr %688, i32 0, i32 1, i32 32
  %689 = call ptr @memcpy(ptr %tuner_ops3345, ptr %tuner_ops3349, i32 220)
  br label %sw.epilog3676

sw.bb3351:                                        ; preds = %do.end3263
  %690 = getelementptr inbounds i8, ptr %si2168_config, i32 8
  %691 = ptrtoint ptr %690 to i32
  call void @__asan_store4_noabort(i32 %691)
  store i32 0, ptr %690, align 4
  %i2c_adapter3352 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 1
  %692 = ptrtoint ptr %i2c_adapter3352 to i32
  call void @__asan_store4_noabort(i32 %692)
  store ptr %adapter, ptr %i2c_adapter3352, align 4
  %frontend3354 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %693 = ptrtoint ptr %si2168_config to i32
  call void @__asan_store4_noabort(i32 %693)
  store ptr %frontend3354, ptr %si2168_config, align 4
  %ts_mode3356 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config, i32 0, i32 2
  %694 = ptrtoint ptr %ts_mode3356 to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 3, ptr %ts_mode3356, align 4
  %695 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3359 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.296, i32 noundef 20) #7
  %addr3360 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %696 = ptrtoint ptr %addr3360 to i32
  call void @__asan_store2_noabort(i32 %696)
  store i16 102, ptr %addr3360, align 2
  %platform_data3361 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %697 = ptrtoint ptr %platform_data3361 to i32
  call void @__asan_store4_noabort(i32 %697)
  store ptr %si2168_config, ptr %platform_data3361, align 4
  %call3364 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.304, ptr noundef nonnull %info) #7
  %i2c_adap3367 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call3368 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3367, ptr noundef nonnull %info) #7
  %tobool.not.i.i4731 = icmp eq ptr %call3368, null
  %cmp.i.i4732 = icmp ugt ptr %call3368, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4733 = or i1 %tobool.not.i.i4731, %cmp.i.i4732
  br i1 %spec.select.i.i4733, label %sw.bb3351.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4737

sw.bb3351.frontend_detach_crit_edge:              ; preds = %sw.bb3351
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4737:                   ; preds = %sw.bb3351
  %driver.i4734 = getelementptr inbounds %struct.i2c_client, ptr %call3368, i32 0, i32 4, i32 6
  %698 = ptrtoint ptr %driver.i4734 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %driver.i4734, align 4
  %tobool.i4735.not = icmp eq ptr %699, null
  br i1 %tobool.i4735.not, label %i2c_client_has_driver.exit4737.frontend_detach_crit_edge, label %if.end3371

i2c_client_has_driver.exit4737.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4737
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end3371:                                       ; preds = %i2c_client_has_driver.exit4737
  %700 = ptrtoint ptr %driver.i4734 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %driver.i4734, align 4
  %owner3374 = getelementptr inbounds %struct.device_driver, ptr %701, i32 0, i32 2
  %702 = ptrtoint ptr %owner3374 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %owner3374, align 4
  %call3375 = call zeroext i1 @try_module_get(ptr noundef %703) #7
  br i1 %call3375, label %if.end3377, label %if.then3376

if.then3376:                                      ; preds = %if.end3371
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3368) #7
  br label %frontend_detach

if.end3377:                                       ; preds = %if.end3371
  %i2c_client_demod3378 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %704 = ptrtoint ptr %i2c_client_demod3378 to i32
  call void @__asan_store4_noabort(i32 %704)
  store ptr %call3368, ptr %i2c_client_demod3378, align 4
  %705 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %706 = ptrtoint ptr %705 to i32
  call void @__asan_storeN_noabort(i32 %706, i32 8)
  store i64 0, ptr %705, align 4
  %707 = ptrtoint ptr %frontend3354 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %frontend3354, align 4
  %709 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %709)
  store ptr %708, ptr %si2157_config, align 4
  %if_port3382 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %710 = ptrtoint ptr %if_port3382 to i32
  call void @__asan_store1_noabort(i32 %710)
  store i8 1, ptr %if_port3382, align 1
  %711 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3385 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.297, i32 noundef 20) #7
  %712 = ptrtoint ptr %addr3360 to i32
  call void @__asan_store2_noabort(i32 %712)
  store i16 98, ptr %addr3360, align 2
  %713 = ptrtoint ptr %platform_data3361 to i32
  call void @__asan_store4_noabort(i32 %713)
  store ptr %si2157_config, ptr %platform_data3361, align 4
  %call3390 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.304, ptr noundef nonnull %info) #7
  %i2c_adap3393 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call3394 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3393, ptr noundef nonnull %info) #7
  %tobool.not.i.i4738 = icmp eq ptr %call3394, null
  %cmp.i.i4739 = icmp ugt ptr %call3394, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4740 = or i1 %tobool.not.i.i4738, %cmp.i.i4739
  br i1 %spec.select.i.i4740, label %if.end3377.if.then3396_crit_edge, label %i2c_client_has_driver.exit4744

if.end3377.if.then3396_crit_edge:                 ; preds = %if.end3377
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3396

i2c_client_has_driver.exit4744:                   ; preds = %if.end3377
  %driver.i4741 = getelementptr inbounds %struct.i2c_client, ptr %call3394, i32 0, i32 4, i32 6
  %714 = ptrtoint ptr %driver.i4741 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %driver.i4741, align 4
  %tobool.i4742.not = icmp eq ptr %715, null
  br i1 %tobool.i4742.not, label %i2c_client_has_driver.exit4744.if.then3396_crit_edge, label %if.end3401

i2c_client_has_driver.exit4744.if.then3396_crit_edge: ; preds = %i2c_client_has_driver.exit4744
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3396

if.then3396:                                      ; preds = %i2c_client_has_driver.exit4744.if.then3396_crit_edge, %if.end3377.if.then3396_crit_edge
  %716 = ptrtoint ptr %driver.i4734 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %driver.i4734, align 4
  %owner3399 = getelementptr inbounds %struct.device_driver, ptr %717, i32 0, i32 2
  %718 = ptrtoint ptr %owner3399 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %owner3399, align 4
  call void @module_put(ptr noundef %719) #7
  call void @i2c_unregister_device(ptr noundef nonnull %call3368) #7
  %720 = ptrtoint ptr %i2c_client_demod3378 to i32
  call void @__asan_store4_noabort(i32 %720)
  store ptr null, ptr %i2c_client_demod3378, align 4
  br label %frontend_detach

if.end3401:                                       ; preds = %i2c_client_has_driver.exit4744
  %721 = ptrtoint ptr %driver.i4741 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %driver.i4741, align 4
  %owner3404 = getelementptr inbounds %struct.device_driver, ptr %722, i32 0, i32 2
  %723 = ptrtoint ptr %owner3404 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %owner3404, align 4
  %call3405 = call zeroext i1 @try_module_get(ptr noundef %724) #7
  br i1 %call3405, label %if.end3411, label %if.then3406

if.then3406:                                      ; preds = %if.end3401
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3394) #7
  %725 = ptrtoint ptr %driver.i4734 to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %driver.i4734, align 4
  %owner3409 = getelementptr inbounds %struct.device_driver, ptr %726, i32 0, i32 2
  %727 = ptrtoint ptr %owner3409 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %owner3409, align 4
  call void @module_put(ptr noundef %728) #7
  call void @i2c_unregister_device(ptr noundef nonnull %call3368) #7
  %729 = ptrtoint ptr %i2c_client_demod3378 to i32
  call void @__asan_store4_noabort(i32 %729)
  store ptr null, ptr %i2c_client_demod3378, align 4
  br label %frontend_detach

if.end3411:                                       ; preds = %if.end3401
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client_tuner3412 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %730 = ptrtoint ptr %i2c_client_tuner3412 to i32
  call void @__asan_store4_noabort(i32 %730)
  store ptr %call3394, ptr %i2c_client_tuner3412, align 4
  br label %sw.epilog3676

do.end3417:                                       ; preds = %if.end.do.end3417_crit_edge, %if.end.do.end3417_crit_edge5202
  %nr3420 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %731 = ptrtoint ptr %nr3420 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load i32, ptr %nr3420, align 4
  %call3421 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.21, i32 noundef %16, i32 noundef %732) #10
  %733 = ptrtoint ptr %nr3420 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %nr3420, align 4
  %735 = zext i32 %734 to i64
  call void @__sanitizer_cov_trace_switch(i64 %735, ptr @__sancov_gen_cov_switch_values.363)
  switch i32 %734, label %do.end3417.sw.epilog3676_crit_edge [
    i32 1, label %sw.bb3423
    i32 2, label %sw.bb3515
  ]

do.end3417.sw.epilog3676_crit_edge:               ; preds = %do.end3417
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

sw.bb3423:                                        ; preds = %do.end3417
  %call3428 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.313) #7
  %tobool3429.not = icmp eq ptr %call3428, null
  br i1 %tobool3429.not, label %cond.end3434, label %sw.bb3423.if.then3437_crit_edge

sw.bb3423.if.then3437_crit_edge:                  ; preds = %sw.bb3423
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3437

cond.end3434:                                     ; preds = %sw.bb3423
  %call3432 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.314) #7
  %call3433 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.313) #7
  %tobool3436.not = icmp eq ptr %call3433, null
  br i1 %tobool3436.not, label %do.end3446, label %cond.end3434.if.then3437_crit_edge

cond.end3434.if.then3437_crit_edge:               ; preds = %cond.end3434
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3437

if.then3437:                                      ; preds = %cond.end3434.if.then3437_crit_edge, %sw.bb3423.if.then3437_crit_edge
  %cond34355161 = phi ptr [ %call3433, %cond.end3434.if.then3437_crit_edge ], [ %call3428, %sw.bb3423.if.then3437_crit_edge ]
  %i2c_adap3438 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call3439 = tail call ptr %cond34355161(ptr noundef nonnull @hauppauge_quadHD_ATSC_a_config, ptr noundef %i2c_adap3438) #7
  %cmp3440 = icmp eq ptr %call3439, null
  br i1 %cmp3440, label %if.then3441, label %if.end3457

if.then3441:                                      ; preds = %if.then3437
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.313) #7
  br label %if.end3449.thread

do.end3446:                                       ; preds = %cond.end3434
  call void @__sanitizer_cov_trace_pc() #9
  %call3448 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.316) #10
  br label %if.end3449.thread

if.end3449.thread:                                ; preds = %do.end3446, %if.then3441
  %frontend34525163 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %736 = ptrtoint ptr %frontend34525163 to i32
  call void @__asan_store4_noabort(i32 %736)
  store ptr null, ptr %frontend34525163, align 4
  br label %sw.epilog3676

if.end3457:                                       ; preds = %if.then3437
  %frontend3452 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %737 = ptrtoint ptr %frontend3452 to i32
  call void @__asan_store4_noabort(i32 %737)
  store ptr %call3439, ptr %frontend3452, align 4
  %738 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %739 = ptrtoint ptr %738 to i32
  call void @__asan_storeN_noabort(i32 %739, i32 8)
  store i64 0, ptr %738, align 4
  %740 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %740)
  store ptr %call3439, ptr %si2157_config, align 4
  %if_port3461 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %741 = ptrtoint ptr %if_port3461 to i32
  call void @__asan_store1_noabort(i32 %741)
  store i8 1, ptr %if_port3461, align 1
  %inversion = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 2
  %742 = ptrtoint ptr %inversion to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 -128, ptr %inversion, align 4
  %743 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3467 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.297, i32 noundef 20) #7
  %addr3468 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %744 = ptrtoint ptr %addr3468 to i32
  call void @__asan_store2_noabort(i32 %744)
  store i16 96, ptr %addr3468, align 2
  %platform_data3469 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %745 = ptrtoint ptr %platform_data3469 to i32
  call void @__asan_store4_noabort(i32 %745)
  store ptr %si2157_config, ptr %platform_data3469, align 4
  %call3472 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.304, ptr noundef nonnull %info) #7
  %i2c_adap3475 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call3476 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3475, ptr noundef nonnull %info) #7
  %tobool.not.i.i4745 = icmp eq ptr %call3476, null
  %cmp.i.i4746 = icmp ugt ptr %call3476, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4747 = or i1 %tobool.not.i.i4745, %cmp.i.i4746
  br i1 %spec.select.i.i4747, label %if.end3457.if.then3478_crit_edge, label %i2c_client_has_driver.exit4751

if.end3457.if.then3478_crit_edge:                 ; preds = %if.end3457
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3478

i2c_client_has_driver.exit4751:                   ; preds = %if.end3457
  %driver.i4748 = getelementptr inbounds %struct.i2c_client, ptr %call3476, i32 0, i32 4, i32 6
  %746 = ptrtoint ptr %driver.i4748 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %driver.i4748, align 4
  %tobool.i4749.not = icmp eq ptr %747, null
  br i1 %tobool.i4749.not, label %i2c_client_has_driver.exit4751.if.then3478_crit_edge, label %if.end3483

i2c_client_has_driver.exit4751.if.then3478_crit_edge: ; preds = %i2c_client_has_driver.exit4751
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3478

if.then3478:                                      ; preds = %i2c_client_has_driver.exit4751.if.then3478_crit_edge, %if.end3457.if.then3478_crit_edge
  call void @__asan_load4_noabort(i32 188)
  %748 = load ptr, ptr inttoptr (i32 188 to ptr), align 4
  %owner3481 = getelementptr inbounds %struct.device_driver, ptr %748, i32 0, i32 2
  %749 = ptrtoint ptr %owner3481 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %owner3481, align 4
  call void @module_put(ptr noundef %750) #7
  call void @i2c_unregister_device(ptr noundef null) #7
  %i2c_client_demod3482 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %751 = ptrtoint ptr %i2c_client_demod3482 to i32
  call void @__asan_store4_noabort(i32 %751)
  store ptr null, ptr %i2c_client_demod3482, align 4
  br label %frontend_detach

if.end3483:                                       ; preds = %i2c_client_has_driver.exit4751
  %752 = ptrtoint ptr %driver.i4748 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %driver.i4748, align 4
  %owner3486 = getelementptr inbounds %struct.device_driver, ptr %753, i32 0, i32 2
  %754 = ptrtoint ptr %owner3486 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %owner3486, align 4
  %call3487 = call zeroext i1 @try_module_get(ptr noundef %755) #7
  br i1 %call3487, label %if.end3493, label %if.then3488

if.then3488:                                      ; preds = %if.end3483
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3476) #7
  call void @__asan_load4_noabort(i32 188)
  %756 = load ptr, ptr inttoptr (i32 188 to ptr), align 4
  %owner3491 = getelementptr inbounds %struct.device_driver, ptr %756, i32 0, i32 2
  %757 = ptrtoint ptr %owner3491 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %owner3491, align 4
  call void @module_put(ptr noundef %758) #7
  call void @i2c_unregister_device(ptr noundef null) #7
  %i2c_client_demod3492 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %759 = ptrtoint ptr %i2c_client_demod3492 to i32
  call void @__asan_store4_noabort(i32 %759)
  store ptr null, ptr %i2c_client_demod3492, align 4
  br label %frontend_detach

if.end3493:                                       ; preds = %if.end3483
  %i2c_client_tuner3494 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %760 = ptrtoint ptr %i2c_client_tuner3494 to i32
  call void @__asan_store4_noabort(i32 %760)
  store ptr %call3476, ptr %i2c_client_tuner3494, align 4
  %761 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load i32, ptr %board, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %762)
  %cmp3496 = icmp eq i32 %762, 57
  br i1 %cmp3496, label %do.end3500, label %if.end3493.sw.epilog3676_crit_edge

if.end3493.sw.epilog3676_crit_edge:               ; preds = %if.end3493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

do.end3500:                                       ; preds = %if.end3493
  call void @__sanitizer_cov_trace_pc() #9
  %call3502 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.21) #10
  %tuner_priv3505 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 20, i32 35, i32 4
  %763 = ptrtoint ptr %tuner_priv3505 to i32
  call void @__asan_store4_noabort(i32 %763)
  store ptr %call3476, ptr %tuner_priv3505, align 4
  %tuner_ops3509 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 20, i32 35, i32 1, i32 32
  %764 = ptrtoint ptr %frontend3452 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %frontend3452, align 4
  %tuner_ops3513 = getelementptr inbounds %struct.dvb_frontend, ptr %765, i32 0, i32 1, i32 32
  %766 = call ptr @memcpy(ptr %tuner_ops3509, ptr %tuner_ops3513, i32 220)
  br label %sw.epilog3676

sw.bb3515:                                        ; preds = %do.end3417
  %call3520 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.313) #7
  %tobool3521.not = icmp eq ptr %call3520, null
  br i1 %tobool3521.not, label %cond.end3526, label %sw.bb3515.if.then3529_crit_edge

sw.bb3515.if.then3529_crit_edge:                  ; preds = %sw.bb3515
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3529

cond.end3526:                                     ; preds = %sw.bb3515
  %call3524 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.314) #7
  %call3525 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.313) #7
  %tobool3528.not = icmp eq ptr %call3525, null
  br i1 %tobool3528.not, label %do.end3538, label %cond.end3526.if.then3529_crit_edge

cond.end3526.if.then3529_crit_edge:               ; preds = %cond.end3526
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3529

if.then3529:                                      ; preds = %cond.end3526.if.then3529_crit_edge, %sw.bb3515.if.then3529_crit_edge
  %cond35275167 = phi ptr [ %call3525, %cond.end3526.if.then3529_crit_edge ], [ %call3520, %sw.bb3515.if.then3529_crit_edge ]
  %i2c_adap3530 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call3531 = tail call ptr %cond35275167(ptr noundef nonnull @hauppauge_quadHD_ATSC_b_config, ptr noundef %i2c_adap3530) #7
  %cmp3532 = icmp eq ptr %call3531, null
  br i1 %cmp3532, label %if.then3533, label %if.end3549

if.then3533:                                      ; preds = %if.then3529
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.313) #7
  br label %if.end3541.thread

do.end3538:                                       ; preds = %cond.end3526
  call void @__sanitizer_cov_trace_pc() #9
  %call3540 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.316) #10
  br label %if.end3541.thread

if.end3541.thread:                                ; preds = %do.end3538, %if.then3533
  %frontend35445169 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %767 = ptrtoint ptr %frontend35445169 to i32
  call void @__asan_store4_noabort(i32 %767)
  store ptr null, ptr %frontend35445169, align 4
  br label %sw.epilog3676

if.end3549:                                       ; preds = %if.then3529
  %frontend3544 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %768 = ptrtoint ptr %frontend3544 to i32
  call void @__asan_store4_noabort(i32 %768)
  store ptr %call3531, ptr %frontend3544, align 4
  %769 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %770 = ptrtoint ptr %769 to i32
  call void @__asan_storeN_noabort(i32 %770, i32 8)
  store i64 0, ptr %769, align 4
  %771 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %771)
  store ptr %call3531, ptr %si2157_config, align 4
  %if_port3553 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %772 = ptrtoint ptr %if_port3553 to i32
  call void @__asan_store1_noabort(i32 %772)
  store i8 1, ptr %if_port3553, align 1
  %inversion3554 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 2
  %773 = ptrtoint ptr %inversion3554 to i32
  call void @__asan_store1_noabort(i32 %773)
  store i8 -128, ptr %inversion3554, align 4
  %774 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3560 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.297, i32 noundef 20) #7
  %addr3561 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %775 = ptrtoint ptr %addr3561 to i32
  call void @__asan_store2_noabort(i32 %775)
  store i16 98, ptr %addr3561, align 2
  %platform_data3562 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %776 = ptrtoint ptr %platform_data3562 to i32
  call void @__asan_store4_noabort(i32 %776)
  store ptr %si2157_config, ptr %platform_data3562, align 4
  %call3565 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.304, ptr noundef nonnull %info) #7
  %i2c_adap3568 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call3569 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3568, ptr noundef nonnull %info) #7
  %tobool.not.i.i4752 = icmp eq ptr %call3569, null
  %cmp.i.i4753 = icmp ugt ptr %call3569, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4754 = or i1 %tobool.not.i.i4752, %cmp.i.i4753
  br i1 %spec.select.i.i4754, label %if.end3549.if.then3571_crit_edge, label %i2c_client_has_driver.exit4758

if.end3549.if.then3571_crit_edge:                 ; preds = %if.end3549
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3571

i2c_client_has_driver.exit4758:                   ; preds = %if.end3549
  %driver.i4755 = getelementptr inbounds %struct.i2c_client, ptr %call3569, i32 0, i32 4, i32 6
  %777 = ptrtoint ptr %driver.i4755 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %driver.i4755, align 4
  %tobool.i4756.not = icmp eq ptr %778, null
  br i1 %tobool.i4756.not, label %i2c_client_has_driver.exit4758.if.then3571_crit_edge, label %if.end3576

i2c_client_has_driver.exit4758.if.then3571_crit_edge: ; preds = %i2c_client_has_driver.exit4758
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3571

if.then3571:                                      ; preds = %i2c_client_has_driver.exit4758.if.then3571_crit_edge, %if.end3549.if.then3571_crit_edge
  call void @__asan_load4_noabort(i32 188)
  %779 = load ptr, ptr inttoptr (i32 188 to ptr), align 4
  %owner3574 = getelementptr inbounds %struct.device_driver, ptr %779, i32 0, i32 2
  %780 = ptrtoint ptr %owner3574 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %owner3574, align 4
  call void @module_put(ptr noundef %781) #7
  call void @i2c_unregister_device(ptr noundef null) #7
  %i2c_client_demod3575 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %782 = ptrtoint ptr %i2c_client_demod3575 to i32
  call void @__asan_store4_noabort(i32 %782)
  store ptr null, ptr %i2c_client_demod3575, align 4
  br label %frontend_detach

if.end3576:                                       ; preds = %i2c_client_has_driver.exit4758
  %783 = ptrtoint ptr %driver.i4755 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %driver.i4755, align 4
  %owner3579 = getelementptr inbounds %struct.device_driver, ptr %784, i32 0, i32 2
  %785 = ptrtoint ptr %owner3579 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %owner3579, align 4
  %call3580 = call zeroext i1 @try_module_get(ptr noundef %786) #7
  br i1 %call3580, label %if.end3586, label %if.then3581

if.then3581:                                      ; preds = %if.end3576
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3569) #7
  call void @__asan_load4_noabort(i32 188)
  %787 = load ptr, ptr inttoptr (i32 188 to ptr), align 4
  %owner3584 = getelementptr inbounds %struct.device_driver, ptr %787, i32 0, i32 2
  %788 = ptrtoint ptr %owner3584 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %owner3584, align 4
  call void @module_put(ptr noundef %789) #7
  call void @i2c_unregister_device(ptr noundef null) #7
  %i2c_client_demod3585 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %790 = ptrtoint ptr %i2c_client_demod3585 to i32
  call void @__asan_store4_noabort(i32 %790)
  store ptr null, ptr %i2c_client_demod3585, align 4
  br label %frontend_detach

if.end3586:                                       ; preds = %if.end3576
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client_tuner3587 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %791 = ptrtoint ptr %i2c_client_tuner3587 to i32
  call void @__asan_store4_noabort(i32 %791)
  store ptr %call3569, ptr %i2c_client_tuner3587, align 4
  br label %sw.epilog3676

sw.bb3589:                                        ; preds = %if.end
  %nr3590 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %792 = ptrtoint ptr %nr3590 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load i32, ptr %nr3590, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %793)
  %cond3800 = icmp eq i32 %793, 2
  br i1 %cond3800, label %sw.bb3591, label %sw.bb3589.sw.epilog3676_crit_edge

sw.bb3589.sw.epilog3676_crit_edge:                ; preds = %sw.bb3589
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3676

sw.bb3591:                                        ; preds = %sw.bb3589
  %call3596 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.313) #7
  %tobool3597.not = icmp eq ptr %call3596, null
  br i1 %tobool3597.not, label %cond.end3602, label %sw.bb3591.if.then3605_crit_edge

sw.bb3591.if.then3605_crit_edge:                  ; preds = %sw.bb3591
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3605

cond.end3602:                                     ; preds = %sw.bb3591
  %call3600 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.314) #7
  %call3601 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.313) #7
  %tobool3604.not = icmp eq ptr %call3601, null
  br i1 %tobool3604.not, label %do.end3614, label %cond.end3602.if.then3605_crit_edge

cond.end3602.if.then3605_crit_edge:               ; preds = %cond.end3602
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3605

if.then3605:                                      ; preds = %cond.end3602.if.then3605_crit_edge, %sw.bb3591.if.then3605_crit_edge
  %cond36035173 = phi ptr [ %call3601, %cond.end3602.if.then3605_crit_edge ], [ %call3596, %sw.bb3591.if.then3605_crit_edge ]
  %i2c_adap3606 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 0, i32 2
  %call3607 = tail call ptr %cond36035173(ptr noundef nonnull @hauppauge_hvr1265k4_config, ptr noundef %i2c_adap3606) #7
  %cmp3608 = icmp eq ptr %call3607, null
  br i1 %cmp3608, label %if.then3609, label %if.end3625

if.then3609:                                      ; preds = %if.then3605
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.313) #7
  br label %if.end3617.thread

do.end3614:                                       ; preds = %cond.end3602
  call void @__sanitizer_cov_trace_pc() #9
  %call3616 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.316) #10
  br label %if.end3617.thread

if.end3617.thread:                                ; preds = %do.end3614, %if.then3609
  %frontend36205175 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %794 = ptrtoint ptr %frontend36205175 to i32
  call void @__asan_store4_noabort(i32 %794)
  store ptr null, ptr %frontend36205175, align 4
  br label %sw.epilog3676

if.end3625:                                       ; preds = %if.then3605
  %frontend3620 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %795 = ptrtoint ptr %frontend3620 to i32
  call void @__asan_store4_noabort(i32 %795)
  store ptr %call3607, ptr %frontend3620, align 4
  %796 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %797 = ptrtoint ptr %796 to i32
  call void @__asan_storeN_noabort(i32 %797, i32 8)
  store i64 0, ptr %796, align 4
  %798 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %798)
  store ptr %call3607, ptr %si2157_config, align 4
  %if_port3629 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 3
  %799 = ptrtoint ptr %if_port3629 to i32
  call void @__asan_store1_noabort(i32 %799)
  store i8 1, ptr %if_port3629, align 1
  %inversion3630 = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 2
  %800 = ptrtoint ptr %inversion3630 to i32
  call void @__asan_store1_noabort(i32 %800)
  store i8 -128, ptr %inversion3630, align 4
  %801 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call3636 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.297, i32 noundef 20) #7
  %addr3637 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %802 = ptrtoint ptr %addr3637 to i32
  call void @__asan_store2_noabort(i32 %802)
  store i16 96, ptr %addr3637, align 2
  %platform_data3638 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 4
  %803 = ptrtoint ptr %platform_data3638 to i32
  call void @__asan_store4_noabort(i32 %803)
  store ptr %si2157_config, ptr %platform_data3638, align 4
  %call3641 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.304, ptr noundef nonnull %info) #7
  %i2c_adap3644 = getelementptr %struct.cx23885_dev, ptr %2, i32 0, i32 14, i32 1, i32 2
  %call3645 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap3644, ptr noundef nonnull %info) #7
  %tobool.not.i.i4759 = icmp eq ptr %call3645, null
  %cmp.i.i4760 = icmp ugt ptr %call3645, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i4761 = or i1 %tobool.not.i.i4759, %cmp.i.i4760
  br i1 %spec.select.i.i4761, label %if.end3625.frontend_detach_crit_edge, label %i2c_client_has_driver.exit4765

if.end3625.frontend_detach_crit_edge:             ; preds = %if.end3625
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

i2c_client_has_driver.exit4765:                   ; preds = %if.end3625
  %driver.i4762 = getelementptr inbounds %struct.i2c_client, ptr %call3645, i32 0, i32 4, i32 6
  %804 = ptrtoint ptr %driver.i4762 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %driver.i4762, align 4
  %tobool.i4763.not = icmp eq ptr %805, null
  br i1 %tobool.i4763.not, label %i2c_client_has_driver.exit4765.frontend_detach_crit_edge, label %if.end3648

i2c_client_has_driver.exit4765.frontend_detach_crit_edge: ; preds = %i2c_client_has_driver.exit4765
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end3648:                                       ; preds = %i2c_client_has_driver.exit4765
  %806 = ptrtoint ptr %driver.i4762 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %driver.i4762, align 4
  %owner3651 = getelementptr inbounds %struct.device_driver, ptr %807, i32 0, i32 2
  %808 = ptrtoint ptr %owner3651 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %owner3651, align 4
  %call3652 = call zeroext i1 @try_module_get(ptr noundef %809) #7
  br i1 %call3652, label %if.end3654, label %if.then3653

if.then3653:                                      ; preds = %if.end3648
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call3645) #7
  br label %frontend_detach

if.end3654:                                       ; preds = %if.end3648
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client_tuner3655 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %810 = ptrtoint ptr %i2c_client_tuner3655 to i32
  call void @__asan_store4_noabort(i32 %810)
  store ptr %call3645, ptr %i2c_client_tuner3655, align 4
  %tuner_priv3658 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 20, i32 35, i32 4
  %811 = ptrtoint ptr %tuner_priv3658 to i32
  call void @__asan_store4_noabort(i32 %811)
  store ptr %call3645, ptr %tuner_priv3658, align 4
  %tuner_ops3662 = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 20, i32 35, i32 1, i32 32
  %812 = ptrtoint ptr %frontend3620 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %frontend3620, align 4
  %tuner_ops3666 = getelementptr inbounds %struct.dvb_frontend, ptr %813, i32 0, i32 1, i32 32
  %814 = call ptr @memcpy(ptr %tuner_ops3662, ptr %tuner_ops3666, i32 220)
  br label %sw.epilog3676

do.end3671:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3675 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326, ptr noundef %name) #10
  br label %sw.epilog3676

sw.epilog3676:                                    ; preds = %do.end3671, %if.end3654, %if.end3617.thread, %sw.bb3589.sw.epilog3676_crit_edge, %if.end3586, %if.end3541.thread, %do.end3500, %if.end3493.sw.epilog3676_crit_edge, %if.end3449.thread, %do.end3417.sw.epilog3676_crit_edge, %if.end3411, %do.end3336, %if.end3329.sw.epilog3676_crit_edge, %do.end3263.sw.epilog3676_crit_edge, %if.end3247, %if.end3180, %if.end3130.thread, %sw.bb3100.sw.epilog3676_crit_edge, %if.end3098, %if.end3022, %if.end2945, %if.end2915.thread, %if.end2885, %if.end2831, %if.end2771, %if.end2742.thread, %sw.bb2712.sw.epilog3676_crit_edge, %cleanup2709, %cleanup2658, %if.end2548, %if.end2510.thread, %do.end2479, %if.then2474, %if.then2468.sw.epilog3676_crit_edge, %if.end2448.thread, %if.then2402.sw.epilog3676_crit_edge, %if.end2382.thread, %if.then2339.sw.epilog3676_crit_edge, %if.end2319.thread, %sw.bb2289.sw.epilog3676_crit_edge, %if.then2267.sw.epilog3676_crit_edge, %if.end2245.thread, %if.end2164.thread, %do.end2123, %if.then2118, %if.then2112.sw.epilog3676_crit_edge, %if.end2092.thread, %do.end2061, %if.then2056, %if.then2050.sw.epilog3676_crit_edge, %if.end2030.thread, %sw.bb2002.sw.epilog3676_crit_edge, %do.end1997, %if.then1992, %if.then1984.sw.epilog3676_crit_edge, %if.end1964.thread, %if.end1930, %if.end1894.thread, %if.end1864, %if.end1830.thread, %if.end1798, %if.end1764.thread, %if.end1732, %if.end1698.thread, %do.end1663, %if.then1643.sw.epilog3676_crit_edge, %do.end1625, %if.then1620, %if.end1595.thread, %do.end1565, %if.then1545.sw.epilog3676_crit_edge, %do.end1527, %if.then1522, %if.end1497.thread, %sw.bb1469.sw.epilog3676_crit_edge, %if.end1465, %if.end1432, %if.end1399.thread, %if.end1368, %if.end1340, %sw.bb1312.sw.epilog3676_crit_edge, %if.then1307, %if.end1300.thread, %cleanup1269.thread, %if.end1220.thread, %if.end1192, %if.end1139.thread, %if.then1094.sw.epilog3676_crit_edge, %if.end1061.sw.epilog3676_crit_edge, %if.end1018, %if.end967.thread, %do.end933, %if.then928, %if.then922.sw.epilog3676_crit_edge, %if.end906.thread4897, %if.end843, %if.end789.sw.epilog3676_crit_edge, %do.end754, %if.then749, %if.then741.sw.epilog3676_crit_edge, %if.end722.thread, %do.end691, %if.then686, %if.then678.sw.epilog3676_crit_edge, %if.end629.thread, %if.end601, %if.end558.thread, %do.end525, %if.then520, %if.then514.sw.epilog3676_crit_edge, %if.end494.thread, %do.end461, %if.then456, %if.then450.sw.epilog3676_crit_edge, %if.end430.thread, %do.end399, %if.then394, %if.then388.sw.epilog3676_crit_edge, %if.end368.thread, %do.end337, %if.then332, %if.then326.sw.epilog3676_crit_edge, %if.end306.thread, %do.end277, %if.then272, %if.then264.sw.epilog3676_crit_edge, %if.end215.thread, %if.end182, %if.end146.thread, %if.then116, %if.end112.sw.epilog3676_crit_edge, %if.end76.thread, %do.end45, %if.then40, %if.then34.sw.epilog3676_crit_edge, %if.end15.thread
  %mfe_shared.0 = phi i32 [ 0, %do.end3671 ], [ 0, %if.end3654 ], [ 0, %sw.bb3589.sw.epilog3676_crit_edge ], [ 0, %do.end3417.sw.epilog3676_crit_edge ], [ 0, %if.end3586 ], [ 0, %do.end3500 ], [ 0, %if.end3493.sw.epilog3676_crit_edge ], [ 0, %do.end3263.sw.epilog3676_crit_edge ], [ 0, %if.end3411 ], [ 0, %do.end3336 ], [ 0, %if.end3329.sw.epilog3676_crit_edge ], [ 0, %sw.bb3100.sw.epilog3676_crit_edge ], [ 0, %if.end3247 ], [ 0, %if.end3180 ], [ 0, %if.end3098 ], [ 0, %if.end3022 ], [ 0, %if.end2945 ], [ 0, %if.end2885 ], [ 0, %sw.bb2712.sw.epilog3676_crit_edge ], [ 0, %if.end2831 ], [ 0, %if.end2771 ], [ 0, %cleanup2709 ], [ 0, %cleanup2658 ], [ 0, %if.end2548 ], [ 0, %sw.bb2289.sw.epilog3676_crit_edge ], [ 0, %sw.bb2002.sw.epilog3676_crit_edge ], [ 0, %if.end1930 ], [ 0, %if.end1864 ], [ 0, %if.end1798 ], [ 0, %if.end1732 ], [ 0, %sw.bb1469.sw.epilog3676_crit_edge ], [ 0, %do.end1663 ], [ 0, %do.end1565 ], [ 0, %if.end1465 ], [ 0, %if.end1432 ], [ 0, %sw.bb1312.sw.epilog3676_crit_edge ], [ 0, %if.end1368 ], [ 0, %if.end1340 ], [ 0, %if.then1307 ], [ 0, %if.end1192 ], [ 0, %if.end1061.sw.epilog3676_crit_edge ], [ 0, %if.end1018 ], [ 0, %if.end843 ], [ 0, %if.end789.sw.epilog3676_crit_edge ], [ 0, %if.end601 ], [ 0, %if.end182 ], [ 0, %if.then116 ], [ 0, %if.end112.sw.epilog3676_crit_edge ], [ 0, %if.then34.sw.epilog3676_crit_edge ], [ 0, %if.then40 ], [ 0, %do.end45 ], [ 0, %if.then264.sw.epilog3676_crit_edge ], [ 0, %if.then272 ], [ 0, %do.end277 ], [ 0, %if.then326.sw.epilog3676_crit_edge ], [ 0, %if.then332 ], [ 0, %do.end337 ], [ 0, %if.then388.sw.epilog3676_crit_edge ], [ 0, %if.then394 ], [ 0, %do.end399 ], [ 0, %if.then450.sw.epilog3676_crit_edge ], [ 0, %if.then456 ], [ 0, %do.end461 ], [ 0, %if.then514.sw.epilog3676_crit_edge ], [ 0, %if.then520 ], [ 0, %do.end525 ], [ 0, %if.then678.sw.epilog3676_crit_edge ], [ 0, %if.then686 ], [ 0, %do.end691 ], [ 0, %if.then741.sw.epilog3676_crit_edge ], [ 0, %if.then749 ], [ 0, %do.end754 ], [ 0, %if.then922.sw.epilog3676_crit_edge ], [ 0, %if.then928 ], [ 0, %do.end933 ], [ 0, %if.then1984.sw.epilog3676_crit_edge ], [ 0, %if.then1992 ], [ 0, %do.end1997 ], [ 0, %if.then2050.sw.epilog3676_crit_edge ], [ 0, %if.then2056 ], [ 0, %do.end2061 ], [ 0, %if.then2112.sw.epilog3676_crit_edge ], [ 0, %if.then2118 ], [ 0, %do.end2123 ], [ 0, %if.then2468.sw.epilog3676_crit_edge ], [ 0, %if.then2474 ], [ 0, %do.end2479 ], [ 0, %if.end15.thread ], [ 0, %if.end76.thread ], [ 0, %if.end146.thread ], [ 0, %if.end215.thread ], [ 0, %if.end306.thread ], [ 0, %if.end368.thread ], [ 0, %if.end430.thread ], [ 0, %if.end494.thread ], [ 0, %if.end558.thread ], [ 0, %if.end629.thread ], [ 0, %if.end722.thread ], [ 0, %if.end906.thread4897 ], [ 0, %if.end967.thread ], [ 0, %if.end1139.thread ], [ 0, %if.end1220.thread ], [ 0, %cleanup1269.thread ], [ 0, %if.end1300.thread ], [ 0, %if.end1399.thread ], [ 0, %if.end1497.thread ], [ 0, %if.then1545.sw.epilog3676_crit_edge ], [ 0, %if.end1595.thread ], [ 0, %if.then1643.sw.epilog3676_crit_edge ], [ 0, %if.end1698.thread ], [ 0, %if.end1764.thread ], [ 0, %if.end1830.thread ], [ 0, %if.end1894.thread ], [ 0, %if.end1964.thread ], [ 0, %if.end2030.thread ], [ 0, %if.end2092.thread ], [ 1, %if.end2164.thread ], [ 1, %if.end2245.thread ], [ 1, %if.then2267.sw.epilog3676_crit_edge ], [ 0, %if.end2319.thread ], [ 0, %if.then2339.sw.epilog3676_crit_edge ], [ 0, %if.end2382.thread ], [ 0, %if.then2402.sw.epilog3676_crit_edge ], [ 0, %if.end2448.thread ], [ 0, %if.end2510.thread ], [ 0, %if.end2742.thread ], [ 0, %if.end2915.thread ], [ 0, %if.end3130.thread ], [ 0, %if.end3449.thread ], [ 0, %if.end3541.thread ], [ 0, %if.end3617.thread ], [ 0, %if.then1522 ], [ 0, %do.end1527 ], [ 0, %if.then1620 ], [ 0, %do.end1625 ], [ 0, %if.then1094.sw.epilog3676_crit_edge ]
  %fe1.0 = phi ptr [ null, %do.end3671 ], [ null, %if.end3654 ], [ null, %sw.bb3589.sw.epilog3676_crit_edge ], [ null, %do.end3417.sw.epilog3676_crit_edge ], [ null, %if.end3586 ], [ null, %do.end3500 ], [ null, %if.end3493.sw.epilog3676_crit_edge ], [ null, %do.end3263.sw.epilog3676_crit_edge ], [ null, %if.end3411 ], [ null, %do.end3336 ], [ null, %if.end3329.sw.epilog3676_crit_edge ], [ null, %sw.bb3100.sw.epilog3676_crit_edge ], [ null, %if.end3247 ], [ null, %if.end3180 ], [ null, %if.end3098 ], [ null, %if.end3022 ], [ null, %if.end2945 ], [ null, %if.end2885 ], [ null, %sw.bb2712.sw.epilog3676_crit_edge ], [ null, %if.end2831 ], [ null, %if.end2771 ], [ null, %cleanup2709 ], [ null, %cleanup2658 ], [ null, %if.end2548 ], [ null, %sw.bb2289.sw.epilog3676_crit_edge ], [ null, %sw.bb2002.sw.epilog3676_crit_edge ], [ null, %if.end1930 ], [ null, %if.end1864 ], [ null, %if.end1798 ], [ null, %if.end1732 ], [ null, %sw.bb1469.sw.epilog3676_crit_edge ], [ null, %do.end1663 ], [ null, %do.end1565 ], [ null, %if.end1465 ], [ null, %if.end1432 ], [ null, %sw.bb1312.sw.epilog3676_crit_edge ], [ null, %if.end1368 ], [ null, %if.end1340 ], [ null, %if.then1307 ], [ null, %if.end1192 ], [ null, %if.end1061.sw.epilog3676_crit_edge ], [ null, %if.end1018 ], [ null, %if.end843 ], [ null, %if.end789.sw.epilog3676_crit_edge ], [ null, %if.end601 ], [ null, %if.end182 ], [ null, %if.then116 ], [ null, %if.end112.sw.epilog3676_crit_edge ], [ null, %if.then34.sw.epilog3676_crit_edge ], [ null, %if.then40 ], [ null, %do.end45 ], [ null, %if.then264.sw.epilog3676_crit_edge ], [ null, %if.then272 ], [ null, %do.end277 ], [ null, %if.then326.sw.epilog3676_crit_edge ], [ null, %if.then332 ], [ null, %do.end337 ], [ null, %if.then388.sw.epilog3676_crit_edge ], [ null, %if.then394 ], [ null, %do.end399 ], [ null, %if.then450.sw.epilog3676_crit_edge ], [ null, %if.then456 ], [ null, %do.end461 ], [ null, %if.then514.sw.epilog3676_crit_edge ], [ null, %if.then520 ], [ null, %do.end525 ], [ null, %if.then678.sw.epilog3676_crit_edge ], [ null, %if.then686 ], [ null, %do.end691 ], [ null, %if.then741.sw.epilog3676_crit_edge ], [ null, %if.then749 ], [ null, %do.end754 ], [ null, %if.then922.sw.epilog3676_crit_edge ], [ null, %if.then928 ], [ null, %do.end933 ], [ null, %if.then1984.sw.epilog3676_crit_edge ], [ null, %if.then1992 ], [ null, %do.end1997 ], [ null, %if.then2050.sw.epilog3676_crit_edge ], [ null, %if.then2056 ], [ null, %do.end2061 ], [ null, %if.then2112.sw.epilog3676_crit_edge ], [ null, %if.then2118 ], [ null, %do.end2123 ], [ null, %if.then2468.sw.epilog3676_crit_edge ], [ null, %if.then2474 ], [ null, %do.end2479 ], [ null, %if.end15.thread ], [ null, %if.end76.thread ], [ null, %if.end146.thread ], [ null, %if.end215.thread ], [ null, %if.end306.thread ], [ null, %if.end368.thread ], [ null, %if.end430.thread ], [ null, %if.end494.thread ], [ null, %if.end558.thread ], [ null, %if.end629.thread ], [ null, %if.end722.thread ], [ null, %if.end906.thread4897 ], [ null, %if.end967.thread ], [ null, %if.end1139.thread ], [ null, %if.end1220.thread ], [ null, %cleanup1269.thread ], [ null, %if.end1300.thread ], [ null, %if.end1399.thread ], [ null, %if.end1497.thread ], [ null, %if.then1545.sw.epilog3676_crit_edge ], [ null, %if.end1595.thread ], [ null, %if.then1643.sw.epilog3676_crit_edge ], [ null, %if.end1698.thread ], [ null, %if.end1764.thread ], [ null, %if.end1830.thread ], [ null, %if.end1894.thread ], [ null, %if.end1964.thread ], [ null, %if.end2030.thread ], [ null, %if.end2092.thread ], [ null, %if.end2164.thread ], [ %call2215, %if.end2245.thread ], [ %call2215, %if.then2267.sw.epilog3676_crit_edge ], [ null, %if.end2319.thread ], [ null, %if.then2339.sw.epilog3676_crit_edge ], [ null, %if.end2382.thread ], [ null, %if.then2402.sw.epilog3676_crit_edge ], [ null, %if.end2448.thread ], [ null, %if.end2510.thread ], [ null, %if.end2742.thread ], [ null, %if.end2915.thread ], [ null, %if.end3130.thread ], [ null, %if.end3449.thread ], [ null, %if.end3541.thread ], [ null, %if.end3617.thread ], [ null, %if.then1522 ], [ null, %do.end1527 ], [ null, %if.then1620 ], [ null, %do.end1625 ], [ null, %if.then1094.sw.epilog3676_crit_edge ]
  %frontend3678 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %815 = ptrtoint ptr %frontend3678 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %frontend3678, align 4
  %cmp3679 = icmp eq ptr %816, null
  br i1 %cmp3679, label %sw.epilog3676.do.end3688_crit_edge, label %lor.lhs.false

sw.epilog3676.do.end3688_crit_edge:               ; preds = %sw.epilog3676
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3688

lor.lhs.false:                                    ; preds = %sw.epilog3676
  %tobool3680.not = icmp eq ptr %fe1.0, null
  br i1 %tobool3680.not, label %lor.lhs.false.do.body3702_crit_edge, label %land.lhs.true3681

lor.lhs.false.do.body3702_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3702

land.lhs.true3681:                                ; preds = %lor.lhs.false
  %frontend3683 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %fe1.0, i32 0, i32 2, i32 1
  %817 = ptrtoint ptr %frontend3683 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %frontend3683, align 4
  %cmp3684 = icmp eq ptr %818, null
  br i1 %cmp3684, label %land.lhs.true3681.do.end3688_crit_edge, label %if.then3697.critedge

land.lhs.true3681.do.end3688_crit_edge:           ; preds = %land.lhs.true3681
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3688

do.end3688:                                       ; preds = %land.lhs.true3681.do.end3688_crit_edge, %sw.epilog3676.do.end3688_crit_edge
  %call3692 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329, ptr noundef %name) #10
  br label %frontend_detach

if.then3697.critedge:                             ; preds = %land.lhs.true3681
  call void @__sanitizer_cov_trace_pc() #9
  %callback.c = getelementptr inbounds %struct.dvb_frontend, ptr %816, i32 0, i32 9
  %819 = ptrtoint ptr %callback.c to i32
  call void @__asan_store4_noabort(i32 %819)
  store ptr @cx23885_tuner_callback, ptr %callback.c, align 4
  %820 = ptrtoint ptr %frontend3683 to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %frontend3683, align 4
  br label %do.body3702

do.body3702:                                      ; preds = %if.then3697.critedge, %lor.lhs.false.do.body3702_crit_edge
  %.sink5191 = phi ptr [ %821, %if.then3697.critedge ], [ %816, %lor.lhs.false.do.body3702_crit_edge ]
  %callback.c4584 = getelementptr inbounds %struct.dvb_frontend, ptr %.sink5191, i32 0, i32 9
  %822 = ptrtoint ptr %callback.c4584 to i32
  call void @__asan_store4_noabort(i32 %822)
  store ptr @cx23885_tuner_callback, ptr %callback.c4584, align 4
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 1, i32 2
  %823 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %823)
  %.pn5186 = load ptr, ptr %subdevs, align 4
  %cmp3707.not5188 = icmp eq ptr %.pn5186, %subdevs
  br i1 %cmp3707.not5188, label %do.body3702.do.end3726_crit_edge, label %do.body3702.for.body_crit_edge

do.body3702.for.body_crit_edge:                   ; preds = %do.body3702
  br label %for.body

do.body3702.do.end3726_crit_edge:                 ; preds = %do.body3702
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3726

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body3702.for.body_crit_edge
  %.pn5189 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn5186, %do.body3702.for.body_crit_edge ]
  %__sd.05190 = getelementptr i8, ptr %.pn5189, i32 -80
  %ops3708 = getelementptr i8, ptr %.pn5189, i32 24
  %824 = ptrtoint ptr %ops3708 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %ops3708, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %825, i32 0, i32 1
  %826 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %tuner, align 4
  %tobool3709.not = icmp eq ptr %827, null
  br i1 %tobool3709.not, label %for.body.for.inc_crit_edge, label %land.lhs.true3710

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true3710:                                ; preds = %for.body
  %828 = ptrtoint ptr %827 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %827, align 4
  %tobool3713.not = icmp eq ptr %829, null
  br i1 %tobool3713.not, label %land.lhs.true3710.for.inc_crit_edge, label %if.then3714

land.lhs.true3710.for.inc_crit_edge:              ; preds = %land.lhs.true3710
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3714:                                      ; preds = %land.lhs.true3710
  call void @__sanitizer_cov_trace_pc() #9
  %call3718 = call i32 %829(ptr noundef %__sd.05190) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then3714, %land.lhs.true3710.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %830 = ptrtoint ptr %.pn5189 to i32
  call void @__asan_load4_noabort(i32 %830)
  %.pn = load ptr, ptr %.pn5189, align 4
  %cmp3707.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp3707.not, label %for.inc.do.end3726_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end3726_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3726

do.end3726:                                       ; preds = %for.inc.do.end3726_crit_edge, %do.body3702.do.end3726_crit_edge
  %831 = ptrtoint ptr %frontend3678 to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %frontend3678, align 4
  %standby3732 = getelementptr inbounds %struct.dvb_frontend, ptr %832, i32 0, i32 1, i32 33, i32 5
  %833 = ptrtoint ptr %standby3732 to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %standby3732, align 4
  %tobool3733.not = icmp eq ptr %834, null
  br i1 %tobool3733.not, label %do.end3726.if.end3742_crit_edge, label %if.then3734

do.end3726.if.end3742_crit_edge:                  ; preds = %do.end3726
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3742

if.then3734:                                      ; preds = %do.end3726
  call void @__sanitizer_cov_trace_pc() #9
  call void %834(ptr noundef %832) #7
  br label %if.end3742

if.end3742:                                       ; preds = %if.then3734, %do.end3726.if.end3742_crit_edge
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %2, i32 0, i32 3
  %835 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %pci, align 4
  %dev3744 = getelementptr inbounds %struct.pci_dev, ptr %836, i32 0, i32 44
  %call3745 = call i32 @vb2_dvb_register_bus(ptr noundef %frontends, ptr noundef null, ptr noundef %port, ptr noundef %dev3744, ptr noundef null, ptr noundef nonnull @adapter_nr, i32 noundef %mfe_shared.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3745)
  %tobool3746.not = icmp eq i32 %call3745, 0
  br i1 %tobool3746.not, label %if.end3748, label %if.end3742.frontend_detach_crit_edge

if.end3742.frontend_detach_crit_edge:             ; preds = %if.end3742
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end3748:                                       ; preds = %if.end3742
  %837 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %port, align 4
  %call.i = call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 1) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3748.frontend_detach_crit_edge, label %if.end.i

if.end3748.frontend_detach_crit_edge:             ; preds = %if.end3748
  call void @__sanitizer_cov_trace_pc() #9
  br label %frontend_detach

if.end.i:                                         ; preds = %if.end3748
  %board.i = getelementptr inbounds %struct.cx23885_dev, ptr %838, i32 0, i32 18
  %839 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load i32, ptr %board.i, align 4
  %841 = zext i32 %840 to i64
  call void @__sanitizer_cov_trace_switch(i64 %841, ptr @__sancov_gen_cov_switch_values.364)
  switch i32 %840, label %if.end.i.cleanup3779_crit_edge [
    i32 17, label %sw.bb.i
    i32 30, label %sw.bb12.i
    i32 15, label %sw.bb20.i
    i32 45, label %if.end.i.sw.bb43.i_crit_edge
    i32 49, label %if.end.i.sw.bb43.i_crit_edge5203
    i32 50, label %if.end.i.sw.bb43.i_crit_edge5204
    i32 51, label %if.end.i.sw.bb43.i_crit_edge5205
    i32 47, label %if.end.i.sw.bb82.i_crit_edge
    i32 46, label %if.end.i.sw.bb82.i_crit_edge5206
    i32 48, label %if.end.i.sw.bb82.i_crit_edge5207
  ]

if.end.i.sw.bb82.i_crit_edge5207:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb82.i

if.end.i.sw.bb82.i_crit_edge5206:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb82.i

if.end.i.sw.bb82.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb82.i

if.end.i.sw.bb43.i_crit_edge5205:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43.i

if.end.i.sw.bb43.i_crit_edge5204:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43.i

if.end.i.sw.bb43.i_crit_edge5203:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43.i

if.end.i.sw.bb43.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43.i

if.end.i.cleanup3779_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup3779

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap.i = getelementptr inbounds %struct.cx23885_dev, ptr %838, i32 0, i32 14, i32 0, i32 2
  call void @netup_get_card_info(ptr noundef %i2c_adap.i, ptr noundef nonnull @dvb_register_ci_mac.cinfo) #7
  %proposed_mac.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 2, i32 4
  %nr.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %842 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load i32, ptr %nr.i, align 4
  %sub.i = add i32 %843, -1
  %arrayidx3.i = getelementptr [2 x %struct.netup_port_info], ptr @dvb_register_ci_mac.cinfo, i32 0, i32 %sub.i
  %844 = call ptr @memcpy(ptr %proposed_mac.i, ptr %arrayidx3.i, i32 6)
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.341, i32 noundef %843, ptr noundef %proposed_mac.i) #10
  %call11.i = call i32 @netup_ci_init(ptr noundef %port) #7
  br label %cleanup3779

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %netup_ci_cfg.i) #7
  %845 = getelementptr inbounds %struct.altera_ci_config, ptr %netup_ci_cfg.i, i32 0, i32 1
  %846 = getelementptr inbounds %struct.altera_ci_config, ptr %netup_ci_cfg.i, i32 0, i32 2
  %847 = getelementptr inbounds %struct.altera_ci_config, ptr %netup_ci_cfg.i, i32 0, i32 3
  %848 = ptrtoint ptr %netup_ci_cfg.i to i32
  call void @__asan_store4_noabort(i32 %848)
  store ptr %838, ptr %netup_ci_cfg.i, align 4
  %adapter16.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 2
  %849 = ptrtoint ptr %845 to i32
  call void @__asan_store4_noabort(i32 %849)
  store ptr %adapter16.i, ptr %845, align 4
  %demux17.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call.i, i32 0, i32 2, i32 5
  %850 = ptrtoint ptr %846 to i32
  call void @__asan_store4_noabort(i32 %850)
  store ptr %demux17.i, ptr %846, align 4
  %851 = ptrtoint ptr %847 to i32
  call void @__asan_store4_noabort(i32 %851)
  store ptr @netup_altera_fpga_rw, ptr %847, align 4
  %nr18.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %852 = ptrtoint ptr %nr18.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load i32, ptr %nr18.i, align 4
  %call19.i = call i32 @altera_ci_init(ptr noundef nonnull %netup_ci_cfg.i, i32 noundef %853) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %netup_ci_cfg.i) #7
  br label %cleanup3779

sw.bb20.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %eeprom.i) #7
  %854 = call ptr @memset(ptr %eeprom.i, i32 255, i32 256)
  %nr21.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %855 = ptrtoint ptr %nr21.i to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load i32, ptr %nr21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %856)
  %cmp.not.i = icmp eq i32 %856, 1
  br i1 %cmp.not.i, label %if.end23.i, label %sw.bb20.i.cleanup.i_crit_edge

sw.bb20.i.cleanup.i_crit_edge:                    ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end23.i:                                       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client.i = getelementptr inbounds %struct.cx23885_dev, ptr %838, i32 0, i32 14, i32 0, i32 3
  %addr.i = getelementptr inbounds %struct.cx23885_dev, ptr %838, i32 0, i32 14, i32 0, i32 3, i32 1
  %857 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %857)
  store i16 80, ptr %addr.i, align 2
  %call30.i = call i32 @tveeprom_read(ptr noundef %i2c_client.i, ptr noundef nonnull %eeprom.i, i32 noundef 256) #7
  %add.ptr.i = getelementptr inbounds i8, ptr %eeprom.i, i32 160
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.344, ptr noundef %add.ptr.i) #10
  %proposed_mac39.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 2, i32 4
  %858 = call ptr @memcpy(ptr %proposed_mac39.i, ptr %add.ptr.i, i32 6)
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end23.i, %sw.bb20.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %eeprom.i) #7
  br label %cleanup3779

sw.bb43.i:                                        ; preds = %if.end.i.sw.bb43.i_crit_edge, %if.end.i.sw.bb43.i_crit_edge5203, %if.end.i.sw.bb43.i_crit_edge5204, %if.end.i.sw.bb43.i_crit_edge5205
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %eeprom44.i) #7
  %859 = call ptr @memset(ptr %eeprom44.i, i32 255, i32 256)
  %nr45.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %860 = ptrtoint ptr %nr45.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load i32, ptr %nr45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %861)
  %cmp46.i = icmp ugt i32 %861, 2
  br i1 %cmp46.i, label %sw.bb43.i.cleanup81.i_crit_edge, label %if.end48.i

sw.bb43.i.cleanup81.i_crit_edge:                  ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81.i

if.end48.i:                                       ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client51.i = getelementptr inbounds %struct.cx23885_dev, ptr %838, i32 0, i32 14, i32 0, i32 3
  %addr52.i = getelementptr inbounds %struct.cx23885_dev, ptr %838, i32 0, i32 14, i32 0, i32 3, i32 1
  %862 = ptrtoint ptr %addr52.i to i32
  call void @__asan_store2_noabort(i32 %862)
  store i16 80, ptr %addr52.i, align 2
  %call57.i = call i32 @tveeprom_read(ptr noundef %i2c_client51.i, ptr noundef nonnull %eeprom44.i, i32 noundef 256) #7
  %863 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load i32, ptr %board.i, align 4
  %arrayidx63.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %864
  %865 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %arrayidx63.i, align 4
  %867 = ptrtoint ptr %nr45.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load i32, ptr %nr45.i, align 4
  %add.ptr66.i = getelementptr inbounds i8, ptr %eeprom44.i, i32 192
  %sub68.i = shl i32 %868, 3
  %mul.i = add i32 %sub68.i, -8
  %add.ptr69.i = getelementptr i8, ptr %add.ptr66.i, i32 %mul.i
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, ptr noundef %866, i32 noundef %868, ptr noundef %add.ptr69.i) #10
  %proposed_mac73.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 2, i32 4
  %869 = ptrtoint ptr %nr45.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load i32, ptr %nr45.i, align 4
  %sub78.i = shl i32 %870, 3
  %mul79.i = add i32 %sub78.i, -8
  %add.ptr80.i = getelementptr i8, ptr %add.ptr66.i, i32 %mul79.i
  %871 = call ptr @memcpy(ptr %proposed_mac73.i, ptr %add.ptr80.i, i32 6)
  br label %cleanup81.i

cleanup81.i:                                      ; preds = %if.end48.i, %sw.bb43.i.cleanup81.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %eeprom44.i) #7
  br label %cleanup3779

sw.bb82.i:                                        ; preds = %if.end.i.sw.bb82.i_crit_edge, %if.end.i.sw.bb82.i_crit_edge5206, %if.end.i.sw.bb82.i_crit_edge5207
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %eeprom83.i) #7
  %872 = call ptr @memset(ptr %eeprom83.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sp2_config.i) #7
  %873 = getelementptr inbounds %struct.sp2_config, ptr %sp2_config.i, i32 0, i32 1
  %874 = getelementptr inbounds %struct.sp2_config, ptr %sp2_config.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #7
  %adapter88.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 2
  %875 = ptrtoint ptr %sp2_config.i to i32
  call void @__asan_store4_noabort(i32 %875)
  store ptr %adapter88.i, ptr %sp2_config.i, align 4
  %876 = ptrtoint ptr %874 to i32
  call void @__asan_store4_noabort(i32 %876)
  store ptr %port, ptr %874, align 4
  %877 = ptrtoint ptr %873 to i32
  call void @__asan_store4_noabort(i32 %877)
  store ptr @cx23885_sp2_ci_ctrl, ptr %873, align 4
  %878 = call ptr @memset(ptr %info.i, i32 0, i32 56)
  %call90.i = call i32 @strscpy(ptr noundef nonnull %info.i, ptr noundef nonnull @.str.349, i32 noundef 20) #7
  %addr91.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 2
  %879 = ptrtoint ptr %addr91.i to i32
  call void @__asan_store2_noabort(i32 %879)
  store i16 64, ptr %addr91.i, align 2
  %platform_data.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 4
  %880 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %880)
  store ptr %sp2_config.i, ptr %platform_data.i, align 4
  %call94.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %info.i) #7
  %i2c_adap95.i = getelementptr inbounds %struct.cx23885_dev, ptr %838, i32 0, i32 14, i32 0, i32 2
  %call96.i = call ptr @i2c_new_client_device(ptr noundef %i2c_adap95.i, ptr noundef nonnull %info.i) #7
  %tobool.not.i.i.i = icmp eq ptr %call96.i, null
  %cmp.i.i.i = icmp ugt ptr %call96.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %sw.bb82.i.dvb_register_ci_mac.exit.thread5183_crit_edge, label %i2c_client_has_driver.exit.i

sw.bb82.i.dvb_register_ci_mac.exit.thread5183_crit_edge: ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dvb_register_ci_mac.exit.thread5183

i2c_client_has_driver.exit.i:                     ; preds = %sw.bb82.i
  %driver.i.i = getelementptr inbounds %struct.i2c_client, ptr %call96.i, i32 0, i32 4, i32 6
  %881 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %driver.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %882, null
  br i1 %tobool.i.not.i, label %i2c_client_has_driver.exit.i.dvb_register_ci_mac.exit.thread5183_crit_edge, label %if.end99.i

i2c_client_has_driver.exit.i.dvb_register_ci_mac.exit.thread5183_crit_edge: ; preds = %i2c_client_has_driver.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dvb_register_ci_mac.exit.thread5183

if.end99.i:                                       ; preds = %i2c_client_has_driver.exit.i
  %owner.i = getelementptr inbounds %struct.device_driver, ptr %882, i32 0, i32 2
  %883 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %owner.i, align 4
  %call101.i = call zeroext i1 @try_module_get(ptr noundef %884) #7
  br i1 %call101.i, label %if.end103.i, label %if.then102.i

if.then102.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %call96.i) #7
  br label %dvb_register_ci_mac.exit.thread5183

if.end103.i:                                      ; preds = %if.end99.i
  %i2c_client_ci.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 39
  %885 = ptrtoint ptr %i2c_client_ci.i to i32
  call void @__asan_store4_noabort(i32 %885)
  store ptr %call96.i, ptr %i2c_client_ci.i, align 4
  %nr104.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %886 = ptrtoint ptr %nr104.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load i32, ptr %nr104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %887)
  %cmp105.not.i = icmp eq i32 %887, 1
  br i1 %cmp105.not.i, label %if.end107.i, label %if.end103.i.dvb_register_ci_mac.exit_crit_edge

if.end103.i.dvb_register_ci_mac.exit_crit_edge:   ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dvb_register_ci_mac.exit

if.end107.i:                                      ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_client110.i = getelementptr inbounds %struct.cx23885_dev, ptr %838, i32 0, i32 14, i32 0, i32 3
  %addr111.i = getelementptr inbounds %struct.cx23885_dev, ptr %838, i32 0, i32 14, i32 0, i32 3, i32 1
  %888 = ptrtoint ptr %addr111.i to i32
  call void @__asan_store2_noabort(i32 %888)
  store i16 80, ptr %addr111.i, align 2
  %call116.i = call i32 @tveeprom_read(ptr noundef %i2c_client110.i, ptr noundef nonnull %eeprom83.i, i32 noundef 256) #7
  %889 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load i32, ptr %board.i, align 4
  %arrayidx122.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %890
  %891 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %arrayidx122.i, align 4
  %add.ptr125.i = getelementptr inbounds i8, ptr %eeprom83.i, i32 192
  %call126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.351, ptr noundef %892, ptr noundef %add.ptr125.i) #10
  %proposed_mac129.i = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 2, i32 4
  %893 = call ptr @memcpy(ptr %proposed_mac129.i, ptr %add.ptr125.i, i32 6)
  br label %dvb_register_ci_mac.exit

dvb_register_ci_mac.exit.thread5183:              ; preds = %if.then102.i, %i2c_client_has_driver.exit.i.dvb_register_ci_mac.exit.thread5183_crit_edge, %sw.bb82.i.dvb_register_ci_mac.exit.thread5183_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sp2_config.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %eeprom83.i) #7
  br label %frontend_detach

dvb_register_ci_mac.exit:                         ; preds = %if.end107.i, %if.end103.i.dvb_register_ci_mac.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sp2_config.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %eeprom83.i) #7
  br label %cleanup3779

frontend_detach:                                  ; preds = %dvb_register_ci_mac.exit.thread5183, %if.end3748.frontend_detach_crit_edge, %if.end3742.frontend_detach_crit_edge, %do.end3688, %if.then3653, %i2c_client_has_driver.exit4765.frontend_detach_crit_edge, %if.end3625.frontend_detach_crit_edge, %if.then3581, %if.then3571, %if.then3488, %if.then3478, %if.then3406, %if.then3396, %if.then3376, %i2c_client_has_driver.exit4737.frontend_detach_crit_edge, %sw.bb3351.frontend_detach_crit_edge, %if.then3324, %if.then3314, %if.then3294, %i2c_client_has_driver.exit4723.frontend_detach_crit_edge, %sw.bb3269.frontend_detach_crit_edge, %if.then3242, %if.then3232, %if.then3214, %i2c_client_has_driver.exit4709.frontend_detach_crit_edge, %sw.bb3191.frontend_detach_crit_edge, %if.then3179, %i2c_client_has_driver.exit4702.frontend_detach_crit_edge, %if.end3158.frontend_detach_crit_edge, %if.then3157, %i2c_client_has_driver.exit4695.frontend_detach_crit_edge, %if.end3138.frontend_detach_crit_edge, %if.then3097, %i2c_client_has_driver.exit4688.frontend_detach_crit_edge, %if.end3075.frontend_detach_crit_edge, %if.then3074, %i2c_client_has_driver.exit4681.frontend_detach_crit_edge, %sw.epilog3052.frontend_detach_crit_edge, %if.then3021, %i2c_client_has_driver.exit4674.frontend_detach_crit_edge, %if.end2994.frontend_detach_crit_edge, %if.then2993, %i2c_client_has_driver.exit4667.frontend_detach_crit_edge, %sw.epilog2975.frontend_detach_crit_edge, %if.then2944, %i2c_client_has_driver.exit4660.frontend_detach_crit_edge, %if.end2923.frontend_detach_crit_edge, %if.then2884, %i2c_client_has_driver.exit4653.frontend_detach_crit_edge, %if.end2862.frontend_detach_crit_edge, %if.then2861, %i2c_client_has_driver.exit4646.frontend_detach_crit_edge, %sw.bb2834.frontend_detach_crit_edge, %if.then2830, %i2c_client_has_driver.exit4639.frontend_detach_crit_edge, %if.end2809.frontend_detach_crit_edge, %if.then2808, %i2c_client_has_driver.exit4632.frontend_detach_crit_edge, %sw.bb2787.frontend_detach_crit_edge, %if.then2770, %i2c_client_has_driver.exit4625.frontend_detach_crit_edge, %if.end2750.frontend_detach_crit_edge, %cleanup2709.thread, %cleanup2658.thread, %do.end2541, %if.then2536, %do.end2413, %if.then2408, %do.end2350, %if.then2345, %do.end2281, %if.then2276, %if.end2205.frontend_detach_crit_edge, %do.end2198, %if.then2193, %cleanup1269
  %i2c_client_sec3753 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 38
  %894 = ptrtoint ptr %i2c_client_sec3753 to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %i2c_client_sec3753, align 4
  %tobool3754.not = icmp eq ptr %895, null
  br i1 %tobool3754.not, label %frontend_detach.if.end3760_crit_edge, label %if.then3755

frontend_detach.if.end3760_crit_edge:             ; preds = %frontend_detach
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3760

if.then3755:                                      ; preds = %frontend_detach
  call void @__sanitizer_cov_trace_pc() #9
  %driver3757 = getelementptr inbounds %struct.i2c_client, ptr %895, i32 0, i32 4, i32 6
  %896 = ptrtoint ptr %driver3757 to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %driver3757, align 4
  %owner3758 = getelementptr inbounds %struct.device_driver, ptr %897, i32 0, i32 2
  %898 = ptrtoint ptr %owner3758 to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %owner3758, align 4
  call void @module_put(ptr noundef %899) #7
  call void @i2c_unregister_device(ptr noundef nonnull %895) #7
  %900 = ptrtoint ptr %i2c_client_sec3753 to i32
  call void @__asan_store4_noabort(i32 %900)
  store ptr null, ptr %i2c_client_sec3753, align 4
  br label %if.end3760

if.end3760:                                       ; preds = %if.then3755, %frontend_detach.if.end3760_crit_edge
  %i2c_client_tuner3761 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %901 = ptrtoint ptr %i2c_client_tuner3761 to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %i2c_client_tuner3761, align 4
  %tobool3762.not = icmp eq ptr %902, null
  br i1 %tobool3762.not, label %if.end3760.if.end3768_crit_edge, label %if.then3763

if.end3760.if.end3768_crit_edge:                  ; preds = %if.end3760
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3768

if.then3763:                                      ; preds = %if.end3760
  call void @__sanitizer_cov_trace_pc() #9
  %driver3765 = getelementptr inbounds %struct.i2c_client, ptr %902, i32 0, i32 4, i32 6
  %903 = ptrtoint ptr %driver3765 to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %driver3765, align 4
  %owner3766 = getelementptr inbounds %struct.device_driver, ptr %904, i32 0, i32 2
  %905 = ptrtoint ptr %owner3766 to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %owner3766, align 4
  call void @module_put(ptr noundef %906) #7
  call void @i2c_unregister_device(ptr noundef nonnull %902) #7
  %907 = ptrtoint ptr %i2c_client_tuner3761 to i32
  call void @__asan_store4_noabort(i32 %907)
  store ptr null, ptr %i2c_client_tuner3761, align 4
  br label %if.end3768

if.end3768:                                       ; preds = %if.then3763, %if.end3760.if.end3768_crit_edge
  %i2c_client_demod3769 = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %908 = ptrtoint ptr %i2c_client_demod3769 to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %i2c_client_demod3769, align 4
  %tobool3770.not = icmp eq ptr %909, null
  br i1 %tobool3770.not, label %if.end3768.if.end3776_crit_edge, label %if.then3771

if.end3768.if.end3776_crit_edge:                  ; preds = %if.end3768
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3776

if.then3771:                                      ; preds = %if.end3768
  call void @__sanitizer_cov_trace_pc() #9
  %driver3773 = getelementptr inbounds %struct.i2c_client, ptr %909, i32 0, i32 4, i32 6
  %910 = ptrtoint ptr %driver3773 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %driver3773, align 4
  %owner3774 = getelementptr inbounds %struct.device_driver, ptr %911, i32 0, i32 2
  %912 = ptrtoint ptr %owner3774 to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %owner3774, align 4
  call void @module_put(ptr noundef %913) #7
  call void @i2c_unregister_device(ptr noundef nonnull %909) #7
  %914 = ptrtoint ptr %i2c_client_demod3769 to i32
  call void @__asan_store4_noabort(i32 %914)
  store ptr null, ptr %i2c_client_demod3769, align 4
  br label %if.end3776

if.end3776:                                       ; preds = %if.then3771, %if.end3768.if.end3776_crit_edge
  %915 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %915)
  store ptr null, ptr %gate_ctrl, align 4
  call void @vb2_dvb_dealloc_frontends(ptr noundef %frontends) #7
  br label %cleanup3779

cleanup3779:                                      ; preds = %if.end3776, %dvb_register_ci_mac.exit, %cleanup81.i, %cleanup.i, %sw.bb12.i, %sw.bb.i, %if.end.i.cleanup3779_crit_edge, %sw.bb2956.cleanup3779_crit_edge, %sw.bb2129.cleanup3779_crit_edge, %do.end1104, %if.then1099, %if.then1070.cleanup3779_crit_edge, %do.end1058, %do.end1044, %if.then1039, %do.end782, %if.then777, %entry.cleanup3779_crit_edge
  %retval.1 = phi i32 [ -22, %if.end3776 ], [ -19, %do.end1058 ], [ -22, %entry.cleanup3779_crit_edge ], [ 0, %sw.bb2129.cleanup3779_crit_edge ], [ 0, %sw.bb2956.cleanup3779_crit_edge ], [ 0, %dvb_register_ci_mac.exit ], [ -19, %if.then777 ], [ -19, %do.end782 ], [ -19, %if.then1039 ], [ -19, %do.end1044 ], [ -12, %if.then1070.cleanup3779_crit_edge ], [ -19, %if.then1099 ], [ -19, %do.end1104 ], [ 0, %cleanup81.i ], [ 0, %cleanup.i ], [ 0, %sw.bb12.i ], [ 0, %sw.bb.i ], [ 0, %if.end.i.cleanup3779_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a8293_pdata) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m88rs6000t_config) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %m88ds3103_pdata) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ts2020_config) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %si2165_pdata) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dib7000p_ops) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_dvb_unregister(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frontends = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3
  %call = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frontend, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vb2_dvb_unregister_bus(ptr noundef %frontends) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i2c_client_ci = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 39
  %2 = ptrtoint ptr %i2c_client_ci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client_ci, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %7) #7
  tail call void @i2c_unregister_device(ptr noundef nonnull %3) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %i2c_client_sec = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 38
  %8 = ptrtoint ptr %i2c_client_sec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client_sec, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %if.then7

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %driver9 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %driver9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver9, align 4
  %owner10 = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %owner10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner10, align 4
  tail call void @module_put(ptr noundef %13) #7
  tail call void @i2c_unregister_device(ptr noundef nonnull %9) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge
  %i2c_client_tuner = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 37
  %14 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_client_tuner, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end11.if.end17_crit_edge, label %if.then13

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %driver15 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %driver15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver15, align 4
  %owner16 = getelementptr inbounds %struct.device_driver, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %owner16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %owner16, align 4
  tail call void @module_put(ptr noundef %19) #7
  tail call void @i2c_unregister_device(ptr noundef nonnull %15) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11.if.end17_crit_edge
  %i2c_client_demod = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 36
  %20 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_client_demod, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %if.end17.if.end23_crit_edge, label %if.then19

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %driver21 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %driver21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver21, align 4
  %owner22 = getelementptr inbounds %struct.device_driver, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %owner22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %owner22, align 4
  tail call void @module_put(ptr noundef %25) #7
  tail call void @i2c_unregister_device(ptr noundef nonnull %21) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17.if.end23_crit_edge
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %board, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.365)
  switch i32 %29, label %if.end23.sw.epilog_crit_edge [
    i32 17, label %sw.bb
    i32 30, label %sw.bb25
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netup_ci_exit(ptr noundef %port) #7
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 1
  %31 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr, align 4
  tail call void @altera_ci_release(ptr noundef %27, i32 noundef %32) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb, %if.end23.sw.epilog_crit_edge
  %gate_ctrl = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 33
  %33 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %gate_ctrl, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_dvb_unregister_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netup_ci_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @altera_ci_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %ts_packet_size = getelementptr inbounds %struct.cx23885_tsport, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 752, ptr %ts_packet_size, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx23885_tsport, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %ts_packet_count, align 4
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_planes, align 4
  %5 = load i32, ptr %ts_packet_size, align 4
  %6 = load i32, ptr %ts_packet_count, align 4
  %mul = mul i32 %6, %5
  %7 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %sizes, align 4
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %num_buffers, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %call = tail call i32 @cx23885_buf_prepare(ptr noundef %vb, ptr noundef %3) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_finish(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @cx23885_free_buffer(ptr noundef %5, ptr noundef %vb) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %mpegq = getelementptr inbounds %struct.cx23885_tsport, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mpegq, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  %call = tail call i32 @cx23885_start_dma(ptr noundef %1, ptr noundef %mpegq, ptr noundef %add.ptr) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx23885_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  tail call void @cx23885_cancel_buffers(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  tail call void @cx23885_buf_queue(ptr noundef %3, ptr noundef %vb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_buf_prepare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_start_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_cancel_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx23885_dvb_gate_ctrl(ptr noundef %port, i32 noundef %open) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frontends = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3
  %gate = getelementptr inbounds %struct.cx23885_tsport, ptr %port, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gate, align 4
  %2 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %call2 = tail call ptr @vb2_dvb_get_frontend(ptr noundef %frontends, i32 noundef %2) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call2, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %frontend, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true4

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true4:                                   ; preds = %land.lhs.true
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 1, i32 28
  %5 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %land.lhs.true4.if.end16_crit_edge, label %if.then8

land.lhs.true4.if.end16_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 %6(ptr noundef nonnull %4, i32 noundef %open) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %land.lhs.true4.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tda18271_attach(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f300_set_voltage(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p8000_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.366)
  switch i32 %voltage, label %do.body10 [
    i32 1, label %do.body
    i32 0, label %do.body4
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !641
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %8, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1966080) #7, !srcloc !642
  br label %if.end15

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !643
  tail call void @arm_heavy_mb() #7
  %lmmio7 = getelementptr inbounds %struct.cx23885_dev, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %lmmio7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio7, align 4
  %add.ptr8 = getelementptr i32, ptr %10, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 1703936) #7, !srcloc !642
  br label %if.end15

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !644
  tail call void @arm_heavy_mb() #7
  %lmmio13 = getelementptr inbounds %struct.cx23885_dev, ptr %5, i32 0, i32 8
  %11 = ptrtoint ptr %lmmio13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio13, align 4
  %add.ptr14 = getelementptr i32, ptr %12, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 1572864) #7, !srcloc !642
  br label %if.end15

if.end15:                                         ; preds = %do.body10, %do.body4, %do.body
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m88ds3103_get_agc_pwm(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_t9580_set_voltage(ptr noundef %fe, i32 noundef %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @cx23885_gpio_enable(ptr noundef %5, i32 noundef 3, i32 noundef 1) #7
  %6 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.367)
  switch i32 %voltage, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx23885_gpio_set(ptr noundef %5, i32 noundef 2) #7
  tail call void @cx23885_gpio_clear(ptr noundef %5, i32 noundef 1) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx23885_gpio_set(ptr noundef %5, i32 noundef 2) #7
  tail call void @cx23885_gpio_set(ptr noundef %5, i32 noundef 1) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx23885_gpio_clear(ptr noundef %5, i32 noundef 2) #7
  tail call void @cx23885_gpio_clear(ptr noundef %5, i32 noundef 1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %fe_set_voltage = getelementptr inbounds %struct.cx23885_tsport, ptr %3, i32 0, i32 41
  %7 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe_set_voltage, align 4
  %call = tail call i32 %8(ptr noundef %fe, i32 noundef %voltage) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvbsky_s952_portc_set_voltage(ptr noundef %fe, i32 noundef %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @cx23885_gpio_enable(ptr noundef %5, i32 noundef 12288, i32 noundef 1) #7
  %6 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.368)
  switch i32 %voltage, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx23885_gpio_set(ptr noundef %5, i32 noundef 8192) #7
  tail call void @cx23885_gpio_clear(ptr noundef %5, i32 noundef 4096) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx23885_gpio_set(ptr noundef %5, i32 noundef 8192) #7
  tail call void @cx23885_gpio_set(ptr noundef %5, i32 noundef 4096) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx23885_gpio_clear(ptr noundef %5, i32 noundef 8192) #7
  tail call void @cx23885_gpio_clear(ptr noundef %5, i32 noundef 4096) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %fe_set_voltage = getelementptr inbounds %struct.cx23885_tsport, ptr %3, i32 0, i32 41
  %7 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe_set_voltage, align 4
  %call = tail call i32 %8(ptr noundef %fe, i32 noundef %voltage) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_tuner_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dvb_register_bus(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_dvb_dealloc_frontends(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_dvb_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %board, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.369)
  switch i32 %7, label %entry.sw.epilog5_crit_edge [
    i32 19, label %sw.bb
    i32 22, label %entry.sw.bb4_crit_edge
    i32 33, label %entry.sw.bb4_crit_edge16
    i32 23, label %entry.sw.bb4_crit_edge17
  ]

entry.sw.bb4_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.epilog5_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog5

sw.bb:                                            ; preds = %entry
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cond = icmp eq i32 %10, 7
  br i1 %cond, label %sw.bb2, label %sw.default

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx23885_gpio_clear(ptr noundef %5, i32 noundef 32) #7
  br label %sw.epilog5

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cx23885_gpio_set(ptr noundef %5, i32 noundef 32) #7
  br label %sw.epilog5

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge16, %entry.sw.bb4_crit_edge17
  tail call void @cx23885_gpio_set(ptr noundef %5, i32 noundef 1) #7
  br label %sw.epilog5

sw.epilog5:                                       ; preds = %sw.bb4, %sw.default, %sw.bb2, %entry.sw.epilog5_crit_edge
  %set_frontend = getelementptr inbounds %struct.cx23885_tsport, ptr %3, i32 0, i32 40
  %11 = ptrtoint ptr %set_frontend to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_frontend, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %sw.epilog5.cleanup_crit_edge, label %if.then

sw.epilog5.cleanup_crit_edge:                     ; preds = %sw.epilog5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.epilog5
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %12(ptr noundef %fe) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %sw.epilog5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7070_tuner_reset(ptr noundef %fe, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %set_gpio = getelementptr inbounds %struct.dib7000p_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %conv = zext i1 %tobool.not to i8
  %call = tail call i32 %3(ptr noundef %fe, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dib7070_tuner_sleep(ptr nocapture noundef readnone %fe, i32 noundef %onoff) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_frequency(ptr noundef %fe, i32 noundef %frequency) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #7
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.336) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_frequency(ptr noundef %fe, ptr noundef %frequency) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %0 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_frequency, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %frequency) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.338) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_bandwidth(ptr noundef %fe, i32 noundef %bandwidth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #7
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.339) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_bandwidth(ptr noundef %fe, ptr noundef %bandwidth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 10
  %0 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_bandwidth, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %bandwidth) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.340) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_gpio_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netup_get_card_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netup_ci_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_altera_fpga_rw(ptr nocapture noundef readonly %device, i32 noundef %flag, i32 noundef %data, i32 noundef %read) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %device, i32 0, i32 8
  %1 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %2, i32 278536
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !645
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !646
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read)
  %tobool.not = icmp eq i32 %read, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %6, i32 278537
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool.not, label %do.body12, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = or i32 %7, -16777216
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %10, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %8) #7, !srcloc !642
  br label %if.end

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = and i32 %7, 16777215
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr25 = getelementptr i32, ptr %13, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %11) #7, !srcloc !642
  %and26 = and i32 %4, -256
  %and27 = and i32 %data, 255
  %or28 = or i32 %and26, %and27
  br label %if.end

if.end:                                           ; preds = %do.body12, %do.body
  %mem.2.v = phi i32 [ 2048, %do.body12 ], [ 1024, %do.body ]
  %mem.0 = phi i32 [ %or28, %do.body12 ], [ %4, %do.body ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %tobool29.not = icmp eq i32 %flag, 0
  %and33 = and i32 %mem.0, -3841
  %masksel = select i1 %tobool29.not, i32 0, i32 512
  %mem.1 = or i32 %mem.2.v, %masksel
  %mem.2 = or i32 %mem.1, %and33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !647
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %mem.2)
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr48 = getelementptr i32, ptr %16, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %14) #7, !srcloc !642
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr52101 = getelementptr i32, ptr %18, i32 278536
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52101) #7, !srcloc !645
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !648
  %and56102 = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56102)
  %cmp103 = icmp eq i32 %and56102, 0
  br i1 %cmp103, label %if.end.do.body62_crit_edge, label %if.end58.preheader

if.end.do.body62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62

if.end58.preheader:                               ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub105 = sub i32 %add, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub105)
  %cmp59106 = icmp slt i32 %sub105, 0
  br i1 %cmp59106, label %if.end58.preheader.do.body62_crit_edge, label %if.end58.preheader.if.end61_crit_edge

if.end58.preheader.if.end61_crit_edge:            ; preds = %if.end58.preheader
  br label %if.end61

if.end58.preheader.do.body62_crit_edge:           ; preds = %if.end58.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62

if.end58:                                         ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %22
  %cmp59 = icmp slt i32 %sub, 0
  br i1 %cmp59, label %if.end58.do.body62_crit_edge, label %if.end58.if.end61_crit_edge

if.end58.if.end61_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end58.do.body62_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62

if.end61:                                         ; preds = %if.end58.if.end61_crit_edge, %if.end58.preheader.if.end61_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #7
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr52 = getelementptr i32, ptr %25, i32 278536
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #7, !srcloc !645
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !648
  %and56 = and i32 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %cmp = icmp eq i32 %and56, 0
  br i1 %cmp, label %if.end61.do.body62_crit_edge, label %if.end58

if.end61.do.body62_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62

do.body62:                                        ; preds = %if.end61.do.body62_crit_edge, %if.end58.do.body62_crit_edge, %if.end58.preheader.do.body62_crit_edge, %if.end.do.body62_crit_edge
  %.lcssa = phi i32 [ %20, %if.end.do.body62_crit_edge ], [ %20, %if.end58.preheader.do.body62_crit_edge ], [ %27, %if.end58.do.body62_crit_edge ], [ %27, %if.end61.do.body62_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !649
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr68 = getelementptr i32, ptr %29, i32 278536
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #7, !srcloc !645
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !650
  %31 = or i32 %30, 851968
  %32 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio, align 4
  %add.ptr75 = getelementptr i32, ptr %33, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %31) #7, !srcloc !642
  %and78 = and i32 %.lcssa, 255
  %retval.0 = select i1 %tobool.not, i32 0, i32 %and78
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_ci_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tveeprom_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_sp2_ci_ctrl(ptr nocapture noundef readonly %priv, i8 noundef zeroext %read, i32 noundef %addr, i8 noundef zeroext %data, ptr nocapture noundef %mem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %gpio_lock = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !651
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1048576) #7, !srcloc !642
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !652
  tail call void @arm_heavy_mb() #7
  %and = and i32 %addr, 255
  %or = or i32 %and, 50944
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr6 = getelementptr i32, ptr %6, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #7, !srcloc !642
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !653
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %8, i32 278536
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !645
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !654
  %10 = and i32 %9, -262145
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr17 = getelementptr i32, ptr %12, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %10) #7, !srcloc !642
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !655
  tail call void @arm_heavy_mb() #7
  %13 = lshr i32 %addr, 8
  %and21 = and i32 %13, 255
  %or22 = or i32 %and21, 51968
  %14 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr24 = getelementptr i32, ptr %16, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %14) #7, !srcloc !642
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !656
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr31 = getelementptr i32, ptr %18, i32 278536
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !645
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !657
  %20 = and i32 %19, -524289
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %add.ptr38 = getelementptr i32, ptr %22, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %20) #7, !srcloc !642
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read)
  %tobool.not = icmp eq i8 %read, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not, label %do.body44, label %do.body39

do.body39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr43 = getelementptr i32, ptr %24, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 -15728640) #7, !srcloc !642
  br label %do.body50

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %data to i32
  %or47 = or i32 %conv, 49920
  %25 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %26 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio, align 4
  %add.ptr49 = getelementptr i32, ptr %27, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %25) #7, !srcloc !642
  br label %do.body50

do.body50:                                        ; preds = %do.body44, %do.body39
  %neg = phi i32 [ -16385, %do.body39 ], [ -32769, %do.body44 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !658
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr56 = getelementptr i32, ptr %29, i32 278536
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #7, !srcloc !645
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !659
  %31 = and i32 %30, -65537
  %32 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio, align 4
  %add.ptr63 = getelementptr i32, ptr %33, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %31) #7, !srcloc !642
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !660
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio, align 4
  %add.ptr70 = getelementptr i32, ptr %35, i32 278536
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #7, !srcloc !645
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !661
  %and76 = and i32 %37, %neg
  %38 = tail call i32 @llvm.bswap.i32(i32 %and76)
  %39 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio, align 4
  %add.ptr83 = getelementptr i32, ptr %40, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %38) #7, !srcloc !642
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %41, 1
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub149 = sub i32 %add, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub149)
  %cmp150 = icmp sgt i32 %sub149, -1
  br i1 %cmp150, label %do.body50.while.body_crit_edge, label %do.body50.do.body98_crit_edge

do.body50.do.body98_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98

do.body50.while.body_crit_edge:                   ; preds = %do.body50
  br label %while.body

while.body:                                       ; preds = %if.end97.while.body_crit_edge, %do.body50.while.body_crit_edge
  %43 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lmmio, align 4
  %add.ptr89 = getelementptr i32, ptr %44, i32 278536
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #7, !srcloc !645
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !662
  %and93 = and i32 %46, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %cmp94 = icmp eq i32 %and93, 0
  br i1 %cmp94, label %while.body.do.body98.loopexit_crit_edge, label %if.end97

while.body.do.body98.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98.loopexit

if.end97:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %47
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.end97.while.body_crit_edge, label %if.end97.do.body98.loopexit_crit_edge

if.end97.do.body98.loopexit_crit_edge:            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98.loopexit

if.end97.while.body_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body98.loopexit:                               ; preds = %if.end97.do.body98.loopexit_crit_edge, %while.body.do.body98.loopexit_crit_edge
  %phi.bo = and i32 %46, 255
  br label %do.body98

do.body98:                                        ; preds = %do.body98.loopexit, %do.body50.do.body98_crit_edge
  %tmp.1 = phi i32 [ 0, %do.body50.do.body98_crit_edge ], [ %phi.bo, %do.body98.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !663
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lmmio, align 4
  %add.ptr104 = getelementptr i32, ptr %49, i32 278536
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #7, !srcloc !645
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !664
  %51 = or i32 %50, 12779520
  %52 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lmmio, align 4
  %add.ptr111 = getelementptr i32, ptr %53, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %51) #7, !srcloc !642
  %54 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %tmp.1, ptr %mem, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #7
  br i1 %tobool.not, label %if.then115, label %do.body98.if.end120_crit_edge

do.body98.if.end120_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then115:                                       ; preds = %do.body98
  %55 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp116 = icmp slt i32 %56, 0
  br i1 %cmp116, label %if.then115.cleanup_crit_edge, label %if.then115.if.end120_crit_edge

if.then115.if.end120_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then115.cleanup_crit_edge:                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end120:                                        ; preds = %if.then115.if.end120_crit_edge, %do.body98.if.end120_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.then115.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end120 ], [ -121, %if.then115.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 321)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 321)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !43, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !81, !82, !84, !85, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !120, !121, !122, !123, !124, !126, !127, !129, !131, !133, !134, !135, !136, !137, !139, !140, !141, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !159, !160, !161, !163, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !181, !182, !183, !185, !187, !188, !190, !191, !193, !194, !195, !197, !198, !199, !200, !201, !203, !204, !206, !208, !209, !211, !212, !214, !215, !216, !217, !218, !220, !221, !222, !224, !225, !226, !227, !228, !230, !231, !232, !233, !234, !236, !237, !239, !240, !241, !242, !243, !245, !246, !247, !248, !249, !251, !252, !254, !255, !256, !257, !258, !260, !261, !262, !263, !264, !266, !267, !268, !269, !270, !272, !273, !274, !276, !277, !279, !280, !282, !283, !285, !286, !288, !289, !290, !291, !292, !294, !295, !297, !298, !299, !300, !301, !303, !304, !306, !307, !309, !310, !312, !313, !315, !316, !318, !319, !321, !322, !324, !325, !326, !327, !328, !330, !331, !332, !333, !334, !336, !337, !339, !340, !342, !343, !344, !345, !346, !348, !349, !351, !352, !353, !354, !355, !357, !358, !360, !361, !362, !363, !364, !366, !367, !368, !369, !370, !372, !373, !375, !376, !378, !379, !381, !382, !384, !385, !386, !387, !388, !390, !391, !392, !393, !394, !396, !398, !400, !402, !404, !405, !407, !408, !409, !410, !411, !413, !415, !417, !419, !420, !422, !424, !425, !427, !429, !431, !432, !433, !435, !436, !437, !439, !440, !442, !443, !444, !445, !446, !448, !449, !450, !452, !453, !455, !456, !458, !459, !460, !462, !463, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !577, !578, !579, !580, !582, !583, !584, !586, !587, !588, !590, !591, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !615, !616, !617, !619, !620, !621, !623, !624, !625, !627, !629, !630}
!llvm.module.flags = !{!631, !632, !633, !634, !635, !636, !637, !638}
!llvm.ident = !{!639}

!0 = !{ptr @__param_alt_tuner, !1, !"__param_alt_tuner", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 81, i32 1}
!2 = !{ptr @__UNIQUE_ID_alt_tunertype385, !1, !"__UNIQUE_ID_alt_tunertype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alt_tuner386, !4, !"__UNIQUE_ID_alt_tuner386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 82, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 84, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype387, !6, !"__UNIQUE_ID_adapter_nrtype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr388, !6, !"__UNIQUE_ID_adapter_nr388", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2652, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cx23885_dvb_register._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @cx23885_dvb_register._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2660, i32 4}
!17 = !{ptr @cx23885_dvb_register._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @cx23885_dvb_register._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2668, i32 3}
!21 = !{ptr @cx23885_dvb_register._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cx23885_dvb_register._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2669, i32 3}
!25 = !{ptr @cx23885_dvb_register._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cx23885_dvb_register._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2677, i32 3}
!29 = !{ptr @cx23885_dvb_register._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cx23885_dvb_register._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2697, i32 3}
!33 = !{ptr @cx23885_dvb_register._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cx23885_dvb_register._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"debug", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 70, i32 21}
!37 = !{ptr @alt_tuner, !38, !"alt_tuner", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 80, i32 21}
!39 = !{ptr @__param_str_alt_tuner, !1, !"__param_str_alt_tuner", i1 false, i1 false}
!40 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!41 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!42 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!43 = !{ptr @dvb_qops, !44, !"dvb_qops", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 168, i32 29}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1227, i32 23}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dvb_register._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @dvb_register._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1232, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dvb_register._entry.24, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @dvb_register._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1239, i32 23}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dvb_register._entry.29, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @dvb_register._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1244, i32 3}
!66 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @dvb_register._entry.34, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @dvb_register._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1253, i32 23}
!72 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @dvb_register._entry.39, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @dvb_register._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @dvb_register._entry.42, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1259, i32 3}
!78 = !{ptr @dvb_register._entry_ptr.43, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @dvb_register._entry.44, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1273, i32 5}
!81 = !{ptr @dvb_register._entry_ptr.45, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1279, i32 4}
!84 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @dvb_register._entry.48, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @dvb_register._entry_ptr.50, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @dvb_register._entry.51, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1282, i32 4}
!90 = !{ptr @dvb_register._entry_ptr.52, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @dvb_register._entry.53, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1289, i32 5}
!93 = !{ptr @dvb_register._entry_ptr.54, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @dvb_register._entry.55, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1294, i32 4}
!96 = !{ptr @dvb_register._entry_ptr.56, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @dvb_register._entry.57, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1301, i32 23}
!99 = !{ptr @dvb_register._entry_ptr.58, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @dvb_register._entry.59, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1306, i32 3}
!102 = !{ptr @dvb_register._entry_ptr.60, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1312, i32 23}
!105 = !{ptr @.str.62, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.64, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @dvb_register._entry.63, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @dvb_register._entry_ptr.65, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.66, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1318, i32 3}
!111 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.69, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @dvb_register._entry.68, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @dvb_register._entry_ptr.70, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @dvb_register._entry.71, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1324, i32 23}
!117 = !{ptr @dvb_register._entry_ptr.72, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.73, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1329, i32 3}
!120 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.76, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @dvb_register._entry.75, !119, !"_entry", i1 false, i1 false}
!123 = !{ptr @dvb_register._entry_ptr.77, !119, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @dvb_register._entry.78, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1335, i32 23}
!126 = !{ptr @dvb_register._entry_ptr.79, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1345, i32 20}
!129 = !{ptr @dvb_register.ctl, !130, !"ctl", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1344, i32 30}
!131 = !{ptr @.str.81, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1350, i32 9}
!133 = !{ptr @.str.82, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.84, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @dvb_register._entry.83, !132, !"_entry", i1 false, i1 false}
!136 = !{ptr @dvb_register._entry_ptr.85, !132, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.86, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1359, i32 23}
!139 = !{ptr @.str.87, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.89, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @dvb_register._entry.88, !138, !"_entry", i1 false, i1 false}
!142 = !{ptr @dvb_register._entry_ptr.90, !138, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @dvb_register._entry.91, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1364, i32 3}
!145 = !{ptr @dvb_register._entry_ptr.92, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @dvb_register._entry.93, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1367, i32 3}
!148 = !{ptr @dvb_register._entry_ptr.94, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @dvb_register._entry.95, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1373, i32 23}
!151 = !{ptr @dvb_register._entry_ptr.96, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @dvb_register._entry.97, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1377, i32 4}
!154 = !{ptr @dvb_register._entry_ptr.98, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.99, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1385, i32 8}
!157 = !{ptr @.str.100, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.102, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @dvb_register._entry.101, !156, !"_entry", i1 false, i1 false}
!160 = !{ptr @dvb_register._entry_ptr.103, !156, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.106, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1397, i32 16}
!163 = !{ptr @dvb_register.ctl.105, !164, !"ctl", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1396, i32 30}
!165 = !{ptr @dvb_register._entry.107, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1405, i32 9}
!167 = !{ptr @dvb_register._entry_ptr.108, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @dvb_register._entry.109, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1414, i32 23}
!170 = !{ptr @dvb_register._entry_ptr.110, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @dvb_register._entry.111, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1418, i32 24}
!173 = !{ptr @dvb_register._entry_ptr.112, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @dvb_register._entry.113, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1422, i32 4}
!176 = !{ptr @dvb_register._entry_ptr.114, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.115, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1429, i32 23}
!179 = !{ptr @.str.116, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.118, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @dvb_register._entry.117, !178, !"_entry", i1 false, i1 false}
!182 = !{ptr @dvb_register._entry_ptr.119, !178, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @dvb_register.ctl.121, !184, !"ctl", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1438, i32 30}
!185 = !{ptr @dvb_register._entry.122, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1444, i32 9}
!187 = !{ptr @dvb_register._entry_ptr.123, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @dvb_register._entry.124, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1456, i32 8}
!190 = !{ptr @dvb_register._entry_ptr.125, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.127, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1460, i32 4}
!193 = !{ptr @dvb_register._entry.126, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @dvb_register._entry_ptr.128, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.129, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1471, i32 9}
!197 = !{ptr @.str.130, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.132, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @dvb_register._entry.131, !196, !"_entry", i1 false, i1 false}
!200 = !{ptr @dvb_register._entry_ptr.133, !196, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @dvb_register._entry.134, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1481, i32 23}
!203 = !{ptr @dvb_register._entry_ptr.135, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @dvb_register.ctl.137, !205, !"ctl", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1490, i32 30}
!206 = !{ptr @dvb_register._entry.138, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1496, i32 9}
!208 = !{ptr @dvb_register._entry_ptr.139, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @dvb_register._entry.140, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1505, i32 23}
!211 = !{ptr @dvb_register._entry_ptr.141, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.143, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1518, i32 9}
!214 = !{ptr @.str.144, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.146, !213, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @dvb_register._entry.145, !213, !"_entry", i1 false, i1 false}
!217 = !{ptr @dvb_register._entry_ptr.147, !213, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.149, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1521, i32 5}
!220 = !{ptr @dvb_register._entry.148, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @dvb_register._entry_ptr.150, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.151, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1530, i32 23}
!224 = !{ptr @.str.152, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.154, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @dvb_register._entry.153, !223, !"_entry", i1 false, i1 false}
!227 = !{ptr @dvb_register._entry_ptr.155, !223, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.156, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1544, i32 24}
!230 = !{ptr @.str.157, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.159, !229, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @dvb_register._entry.158, !229, !"_entry", i1 false, i1 false}
!233 = !{ptr @dvb_register._entry_ptr.160, !229, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @dvb_register._entry.161, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1550, i32 24}
!236 = !{ptr @dvb_register._entry_ptr.162, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.163, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1559, i32 23}
!239 = !{ptr @.str.164, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.166, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @dvb_register._entry.165, !238, !"_entry", i1 false, i1 false}
!242 = !{ptr @dvb_register._entry_ptr.167, !238, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.168, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1563, i32 4}
!245 = !{ptr @.str.169, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.171, !244, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @dvb_register._entry.170, !244, !"_entry", i1 false, i1 false}
!248 = !{ptr @dvb_register._entry_ptr.172, !244, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @dvb_register._entry.173, !250, !"_entry", i1 false, i1 false}
!250 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1572, i32 23}
!251 = !{ptr @dvb_register._entry_ptr.174, !250, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.175, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1581, i32 24}
!254 = !{ptr @.str.176, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.178, !253, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @dvb_register._entry.177, !253, !"_entry", i1 false, i1 false}
!257 = !{ptr @dvb_register._entry_ptr.179, !253, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.180, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1585, i32 9}
!260 = !{ptr @.str.181, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.183, !259, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @dvb_register._entry.182, !259, !"_entry", i1 false, i1 false}
!263 = !{ptr @dvb_register._entry_ptr.184, !259, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.185, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1589, i32 11}
!266 = !{ptr @.str.186, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.188, !265, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @dvb_register._entry.187, !265, !"_entry", i1 false, i1 false}
!269 = !{ptr @dvb_register._entry_ptr.189, !265, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.191, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1594, i32 7}
!272 = !{ptr @dvb_register._entry.190, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @dvb_register._entry_ptr.192, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @dvb_register._entry.193, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1601, i32 24}
!276 = !{ptr @dvb_register._entry_ptr.194, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @dvb_register._entry.195, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1605, i32 9}
!279 = !{ptr @dvb_register._entry_ptr.196, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @dvb_register._entry.197, !281, !"_entry", i1 false, i1 false}
!281 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1609, i32 11}
!282 = !{ptr @dvb_register._entry_ptr.198, !281, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @dvb_register._entry.199, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1614, i32 7}
!285 = !{ptr @dvb_register._entry_ptr.200, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.201, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1624, i32 23}
!288 = !{ptr @.str.202, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.204, !287, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @dvb_register._entry.203, !287, !"_entry", i1 false, i1 false}
!291 = !{ptr @dvb_register._entry_ptr.205, !287, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @dvb_register._entry.206, !293, !"_entry", i1 false, i1 false}
!293 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1629, i32 3}
!294 = !{ptr @dvb_register._entry_ptr.207, !293, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.208, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1636, i32 23}
!297 = !{ptr @.str.209, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.211, !296, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @dvb_register._entry.210, !296, !"_entry", i1 false, i1 false}
!300 = !{ptr @dvb_register._entry_ptr.212, !296, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @dvb_register._entry.213, !302, !"_entry", i1 false, i1 false}
!302 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1642, i32 3}
!303 = !{ptr @dvb_register._entry_ptr.214, !302, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @dvb_register._entry.215, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1650, i32 23}
!306 = !{ptr @dvb_register._entry_ptr.216, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @dvb_register._entry.217, !308, !"_entry", i1 false, i1 false}
!308 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1655, i32 3}
!309 = !{ptr @dvb_register._entry_ptr.218, !308, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @dvb_register._entry.219, !311, !"_entry", i1 false, i1 false}
!311 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1662, i32 23}
!312 = !{ptr @dvb_register._entry_ptr.220, !311, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @dvb_register._entry.221, !314, !"_entry", i1 false, i1 false}
!314 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1667, i32 3}
!315 = !{ptr @dvb_register._entry_ptr.222, !314, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @dvb_register._entry.223, !317, !"_entry", i1 false, i1 false}
!317 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1678, i32 23}
!318 = !{ptr @dvb_register._entry_ptr.224, !317, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @dvb_register._entry.225, !320, !"_entry", i1 false, i1 false}
!320 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1683, i32 3}
!321 = !{ptr @dvb_register._entry_ptr.226, !320, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.227, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1692, i32 24}
!324 = !{ptr @.str.228, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.230, !323, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @dvb_register._entry.229, !323, !"_entry", i1 false, i1 false}
!327 = !{ptr @dvb_register._entry_ptr.231, !323, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.232, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1697, i32 4}
!330 = !{ptr @.str.233, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.235, !329, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @dvb_register._entry.234, !329, !"_entry", i1 false, i1 false}
!333 = !{ptr @dvb_register._entry_ptr.236, !329, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @dvb_register._entry.237, !335, !"_entry", i1 false, i1 false}
!335 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1704, i32 24}
!336 = !{ptr @dvb_register._entry_ptr.238, !335, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @dvb_register._entry.239, !338, !"_entry", i1 false, i1 false}
!338 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1709, i32 4}
!339 = !{ptr @dvb_register._entry_ptr.240, !338, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.241, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1723, i32 23}
!342 = !{ptr @.str.242, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.244, !341, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @dvb_register._entry.243, !341, !"_entry", i1 false, i1 false}
!345 = !{ptr @dvb_register._entry_ptr.245, !341, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @dvb_register._entry.246, !347, !"_entry", i1 false, i1 false}
!347 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1728, i32 15}
!348 = !{ptr @dvb_register._entry_ptr.247, !347, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.248, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1740, i32 23}
!351 = !{ptr @.str.249, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.251, !350, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @dvb_register._entry.250, !350, !"_entry", i1 false, i1 false}
!354 = !{ptr @dvb_register._entry_ptr.252, !350, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @dvb_register._entry.253, !356, !"_entry", i1 false, i1 false}
!356 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1747, i32 15}
!357 = !{ptr @dvb_register._entry_ptr.254, !356, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.255, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1760, i32 24}
!360 = !{ptr @.str.256, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.258, !359, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @dvb_register._entry.257, !359, !"_entry", i1 false, i1 false}
!363 = !{ptr @dvb_register._entry_ptr.259, !359, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.260, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1765, i32 9}
!366 = !{ptr @.str.261, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.263, !365, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @dvb_register._entry.262, !365, !"_entry", i1 false, i1 false}
!369 = !{ptr @dvb_register._entry_ptr.264, !365, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @dvb_register._entry.265, !371, !"_entry", i1 false, i1 false}
!371 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1773, i32 24}
!372 = !{ptr @dvb_register._entry_ptr.266, !371, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @dvb_register._entry.267, !374, !"_entry", i1 false, i1 false}
!374 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1778, i32 9}
!375 = !{ptr @dvb_register._entry_ptr.268, !374, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @dvb_register._entry.269, !377, !"_entry", i1 false, i1 false}
!377 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1789, i32 23}
!378 = !{ptr @dvb_register._entry_ptr.270, !377, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @dvb_register._entry.271, !380, !"_entry", i1 false, i1 false}
!380 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1794, i32 3}
!381 = !{ptr @dvb_register._entry_ptr.272, !380, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.273, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1800, i32 23}
!384 = !{ptr @.str.274, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.276, !383, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @dvb_register._entry.275, !383, !"_entry", i1 false, i1 false}
!387 = !{ptr @dvb_register._entry_ptr.277, !383, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.278, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1806, i32 8}
!390 = !{ptr @.str.279, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.281, !389, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @dvb_register._entry.280, !389, !"_entry", i1 false, i1 false}
!393 = !{ptr @dvb_register._entry_ptr.282, !389, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.283, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1825, i32 23}
!396 = !{ptr @.str.284, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1828, i32 4}
!398 = !{ptr @.str.285, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1842, i32 23}
!400 = !{ptr @.str.286, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1863, i32 23}
!402 = !{ptr @dvb_register._entry.287, !403, !"_entry", i1 false, i1 false}
!403 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1879, i32 9}
!404 = !{ptr @dvb_register._entry_ptr.288, !403, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.290, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1935, i32 24}
!407 = !{ptr @.str.291, !406, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @.str.293, !406, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @dvb_register._entry.292, !406, !"_entry", i1 false, i1 false}
!410 = !{ptr @dvb_register._entry_ptr.294, !406, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.295, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1946, i32 23}
!413 = !{ptr @.str.296, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1982, i32 23}
!415 = !{ptr @.str.297, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2000, i32 23}
!417 = !{ptr @dvb_register._entry.298, !418, !"_entry", i1 false, i1 false}
!418 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2063, i32 23}
!419 = !{ptr @dvb_register._entry_ptr.299, !418, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.300, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2123, i32 22}
!422 = !{ptr @dvb_register._entry.301, !423, !"_entry", i1 false, i1 false}
!423 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2229, i32 24}
!424 = !{ptr @dvb_register._entry_ptr.302, !423, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.303, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2255, i32 23}
!427 = !{ptr @.str.304, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2258, i32 4}
!429 = !{ptr @.str.306, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2328, i32 3}
!431 = !{ptr @dvb_register._entry.305, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @dvb_register._entry_ptr.307, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.309, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2379, i32 5}
!435 = !{ptr @dvb_register._entry.308, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @dvb_register._entry_ptr.310, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @dvb_register._entry.311, !438, !"_entry", i1 false, i1 false}
!438 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2438, i32 3}
!439 = !{ptr @dvb_register._entry_ptr.312, !438, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.313, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2445, i32 24}
!442 = !{ptr @.str.314, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @.str.316, !441, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @dvb_register._entry.315, !441, !"_entry", i1 false, i1 false}
!445 = !{ptr @dvb_register._entry_ptr.317, !441, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.319, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2478, i32 5}
!448 = !{ptr @dvb_register._entry.318, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @dvb_register._entry_ptr.320, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @dvb_register._entry.321, !451, !"_entry", i1 false, i1 false}
!451 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2491, i32 24}
!452 = !{ptr @dvb_register._entry_ptr.322, !451, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @dvb_register._entry.323, !454, !"_entry", i1 false, i1 false}
!454 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2530, i32 24}
!455 = !{ptr @dvb_register._entry_ptr.324, !454, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.326, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2565, i32 3}
!458 = !{ptr @dvb_register._entry.325, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @dvb_register._entry_ptr.327, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.329, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 2571, i32 3}
!462 = !{ptr @dvb_register._entry.328, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @dvb_register._entry_ptr.330, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @hauppauge_generic_config, !465, !"hauppauge_generic_config", i1 false, i1 false}
!465 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 179, i32 30}
!466 = !{ptr @hauppauge_generic_tunerconfig, !467, !"hauppauge_generic_tunerconfig", i1 false, i1 false}
!467 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 240, i32 29}
!468 = !{ptr @hauppauge_lgdt3305_config, !469, !"hauppauge_lgdt3305_config", i1 false, i1 false}
!469 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 353, i32 31}
!470 = !{ptr @hauppauge_hvr127x_config, !471, !"hauppauge_hvr127x_config", i1 false, i1 false}
!471 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 348, i32 31}
!472 = !{ptr @hauppauge_hvr127x_std_map, !473, !"hauppauge_hvr127x_std_map", i1 false, i1 false}
!473 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 341, i32 32}
!474 = !{ptr @hcw_s5h1411_config, !475, !"hcw_s5h1411_config", i1 false, i1 false}
!475 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 279, i32 30}
!476 = !{ptr @hauppauge_tda18271_config, !477, !"hauppauge_tda18271_config", i1 false, i1 false}
!477 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 319, i32 31}
!478 = !{ptr @hauppauge_tda18271_std_map, !479, !"hauppauge_tda18271_std_map", i1 false, i1 false}
!479 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 303, i32 32}
!480 = !{ptr @hauppauge_ezqam_config, !481, !"hauppauge_ezqam_config", i1 false, i1 false}
!481 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 211, i32 30}
!482 = !{ptr @tda829x_no_probe, !483, !"tda829x_no_probe", i1 false, i1 false}
!483 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 299, i32 30}
!484 = !{ptr @hauppauge_hvr1800lp_config, !485, !"hauppauge_hvr1800lp_config", i1 false, i1 false}
!485 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 221, i32 30}
!486 = !{ptr @fusionhdtv_5_express, !487, !"fusionhdtv_5_express", i1 false, i1 false}
!487 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 244, i32 31}
!488 = !{ptr @hauppauge_hvr1500q_config, !489, !"hauppauge_hvr1500q_config", i1 false, i1 false}
!489 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 249, i32 30}
!490 = !{ptr @hauppauge_hvr1500q_tunerconfig, !491, !"hauppauge_hvr1500q_tunerconfig", i1 false, i1 false}
!491 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 289, i32 29}
!492 = !{ptr @hauppauge_hvr1500_config, !493, !"hauppauge_hvr1500_config", i1 false, i1 false}
!493 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 231, i32 30}
!494 = !{ptr @hauppauge_hvr1200_config, !495, !"hauppauge_hvr1200_config", i1 false, i1 false}
!495 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 189, i32 31}
!496 = !{ptr @hauppauge_hvr1200_tuner_config, !497, !"hauppauge_hvr1200_tuner_config", i1 false, i1 false}
!497 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 325, i32 31}
!498 = !{ptr @hauppauge_hvr1200_tda18271_std_map, !499, !"hauppauge_hvr1200_tda18271_std_map", i1 false, i1 false}
!499 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 310, i32 32}
!500 = !{ptr @hauppauge_hvr1210_config, !501, !"hauppauge_hvr1210_config", i1 false, i1 false}
!501 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 200, i32 31}
!502 = !{ptr @hauppauge_hvr1210_tuner_config, !503, !"hauppauge_hvr1210_tuner_config", i1 false, i1 false}
!503 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 331, i32 31}
!504 = !{ptr @hauppauge_hvr1400_dib7000_config, !505, !"hauppauge_hvr1400_dib7000_config", i1 false, i1 false}
!505 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 429, i32 31}
!506 = !{ptr @xc3028_agc_config, !507, !"xc3028_agc_config", i1 false, i1 false}
!507 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 364, i32 34}
!508 = !{ptr @xc3028_bw_config, !509, !"xc3028_bw_config", i1 false, i1 false}
!509 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 410, i32 40}
!510 = !{ptr @dvico_s5h1409_config, !511, !"dvico_s5h1409_config", i1 false, i1 false}
!511 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 259, i32 30}
!512 = !{ptr @dvico_s5h1411_config, !513, !"dvico_s5h1411_config", i1 false, i1 false}
!513 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 269, i32 30}
!514 = !{ptr @dvico_xc5000_tunerconfig, !515, !"dvico_xc5000_tunerconfig", i1 false, i1 false}
!515 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 294, i32 29}
!516 = !{ptr @dvico_fusionhdtv_xc3028, !517, !"dvico_fusionhdtv_xc3028", i1 false, i1 false}
!517 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 450, i32 30}
!518 = !{ptr @dib7070p_dib7000p_config, !519, !"dib7070p_dib7000p_config", i1 false, i1 false}
!519 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1058, i32 31}
!520 = !{ptr @dib7070_agc_config, !521, !"dib7070_agc_config", i1 false, i1 false}
!521 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1000, i32 34}
!522 = !{ptr @dib7070_bw_config_12_mhz, !523, !"dib7070_bw_config_12_mhz", i1 false, i1 false}
!523 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1038, i32 40}
!524 = !{ptr @dib7070p_dib0070_config, !525, !"dib7070p_dib0070_config", i1 false, i1 false}
!525 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 990, i32 30}
!526 = !{ptr @tbs_cx24116_config, !527, !"tbs_cx24116_config", i1 false, i1 false}
!527 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 497, i32 30}
!528 = !{ptr @tbs_cx24117_config, !529, !"tbs_cx24117_config", i1 false, i1 false}
!529 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 501, i32 30}
!530 = !{ptr @tevii_ds3000_config, !531, !"tevii_ds3000_config", i1 false, i1 false}
!531 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 505, i32 29}
!532 = !{ptr @tevii_ts2020_config, !533, !"tevii_ts2020_config", i1 false, i1 false}
!533 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 509, i32 29}
!534 = !{ptr @dvbworld_cx24116_config, !535, !"dvbworld_cx24116_config", i1 false, i1 false}
!535 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 515, i32 30}
!536 = !{ptr @netup_stv0900_config, !537, !"netup_stv0900_config", i1 false, i1 false}
!537 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 470, i32 30}
!538 = !{ptr @stv0900_ts_regs, !539, !"stv0900_ts_regs", i1 false, i1 false}
!539 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 457, i32 27}
!540 = !{ptr @netup_stv6110_tunerconfig_a, !541, !"netup_stv6110_tunerconfig_a", i1 false, i1 false}
!541 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 483, i32 30}
!542 = !{ptr @netup_stv6110_tunerconfig_b, !543, !"netup_stv6110_tunerconfig_b", i1 false, i1 false}
!543 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 490, i32 30}
!544 = !{ptr @mygica_x8506_lgs8gl5_config, !545, !"mygica_x8506_lgs8gl5_config", i1 false, i1 false}
!545 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 519, i32 30}
!546 = !{ptr @mygica_x8506_xc5000_config, !547, !"mygica_x8506_xc5000_config", i1 false, i1 false}
!547 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 533, i32 29}
!548 = !{ptr @mygica_x8507_mb86a20s_config, !549, !"mygica_x8507_mb86a20s_config", i1 false, i1 false}
!549 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 538, i32 31}
!550 = !{ptr @mygica_x8507_xc5000_config, !551, !"mygica_x8507_xc5000_config", i1 false, i1 false}
!551 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 542, i32 29}
!552 = !{ptr @magicpro_prohdtve2_lgs8g75_config, !553, !"magicpro_prohdtve2_lgs8g75_config", i1 false, i1 false}
!553 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 775, i32 30}
!554 = !{ptr @magicpro_prohdtve2_xc5000_config, !555, !"magicpro_prohdtve2_xc5000_config", i1 false, i1 false}
!555 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 790, i32 29}
!556 = !{ptr @mygica_x8558pro_atbm8830_cfg1, !557, !"mygica_x8558pro_atbm8830_cfg1", i1 false, i1 false}
!557 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 795, i32 31}
!558 = !{ptr @mygic_x8558pro_max2165_cfg1, !559, !"mygic_x8558pro_max2165_cfg1", i1 false, i1 false}
!559 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 809, i32 30}
!560 = !{ptr @mygica_x8558pro_atbm8830_cfg2, !561, !"mygica_x8558pro_atbm8830_cfg2", i1 false, i1 false}
!561 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 814, i32 31}
!562 = !{ptr @mygic_x8558pro_max2165_cfg2, !563, !"mygic_x8558pro_max2165_cfg2", i1 false, i1 false}
!563 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 828, i32 30}
!564 = !{ptr @netup_stv0367_config, !565, !"netup_stv0367_config", i1 false, i1 false}
!565 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 832, i32 30}
!566 = !{ptr @netup_xc5000_config, !567, !"netup_xc5000_config", i1 false, i1 false}
!567 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 850, i32 29}
!568 = !{ptr @terratec_drxk_config, !569, !"terratec_drxk_config", i1 false, i1 false}
!569 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 860, i32 27}
!570 = !{ptr @terratec_mt2063_config, !571, !"terratec_mt2063_config", i1 false, i1 false}
!571 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 870, i32 29}
!572 = !{ptr @prof_8000_stv090x_config, !573, !"prof_8000_stv090x_config", i1 false, i1 false}
!573 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 547, i32 30}
!574 = !{ptr @.str.335, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 44, i32 4}
!576 = !{ptr @.str.336, !575, !"<string literal>", i1 false, i1 false}
!577 = !{ptr @.str.337, !575, !"<string literal>", i1 false, i1 false}
!578 = !{ptr @stb6100_set_frequency._entry, !575, !"_entry", i1 false, i1 false}
!579 = !{ptr @stb6100_set_frequency._entry_ptr, !575, !"_entry_ptr", i1 false, i1 false}
!580 = !{ptr @.str.338, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 22, i32 4}
!582 = !{ptr @stb6100_get_frequency._entry, !581, !"_entry", i1 false, i1 false}
!583 = !{ptr @stb6100_get_frequency._entry_ptr, !581, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @.str.339, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 82, i32 4}
!586 = !{ptr @stb6100_set_bandwidth._entry, !585, !"_entry", i1 false, i1 false}
!587 = !{ptr @stb6100_set_bandwidth._entry_ptr, !585, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @.str.340, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 60, i32 4}
!590 = !{ptr @stb6100_get_bandwidth._entry, !589, !"_entry", i1 false, i1 false}
!591 = !{ptr @stb6100_get_bandwidth._entry_ptr, !589, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @prof_8000_stb6100_config, !593, !"prof_8000_stb6100_config", i1 false, i1 false}
!593 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 564, i32 30}
!594 = !{ptr @hauppauge_tda10071_pdata, !595, !"hauppauge_tda10071_pdata", i1 false, i1 false}
!595 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 878, i32 44}
!596 = !{ptr @hauppauge_hvr4400_tuner_config, !597, !"hauppauge_hvr4400_tuner_config", i1 false, i1 false}
!597 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 336, i32 31}
!598 = !{ptr @dvbsky_t9580_m88ds3103_config, !599, !"dvbsky_t9580_m88ds3103_config", i1 false, i1 false}
!599 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 886, i32 38}
!600 = !{ptr @dvbsky_s950c_m88ds3103_config, !601, !"dvbsky_s950c_m88ds3103_config", i1 false, i1 false}
!601 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 899, i32 38}
!602 = !{ptr @hauppauge_hvr5525_m88ds3103_config, !603, !"hauppauge_hvr5525_m88ds3103_config", i1 false, i1 false}
!603 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 912, i32 38}
!604 = !{ptr @hauppauge_quadHD_ATSC_a_config, !605, !"hauppauge_quadHD_ATSC_a_config", i1 false, i1 false}
!605 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 569, i32 32}
!606 = !{ptr @hauppauge_quadHD_ATSC_b_config, !607, !"hauppauge_quadHD_ATSC_b_config", i1 false, i1 false}
!607 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 581, i32 32}
!608 = !{ptr @hauppauge_hvr1265k4_config, !609, !"hauppauge_hvr1265k4_config", i1 false, i1 false}
!609 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 922, i32 32}
!610 = !{ptr @dvb_register_ci_mac.cinfo, !611, !"cinfo", i1 false, i1 false}
!611 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1089, i32 33}
!612 = !{ptr @.str.341, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1094, i32 3}
!614 = !{ptr @.str.342, !613, !"<string literal>", i1 false, i1 false}
!615 = !{ptr @dvb_register_ci_mac._entry, !613, !"_entry", i1 false, i1 false}
!616 = !{ptr @dvb_register_ci_mac._entry_ptr, !613, !"_entry_ptr", i1 false, i1 false}
!617 = !{ptr @.str.344, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1120, i32 3}
!619 = !{ptr @dvb_register_ci_mac._entry.343, !618, !"_entry", i1 false, i1 false}
!620 = !{ptr @dvb_register_ci_mac._entry_ptr.345, !618, !"_entry_ptr", i1 false, i1 false}
!621 = !{ptr @.str.347, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1137, i32 3}
!623 = !{ptr @dvb_register_ci_mac._entry.346, !622, !"_entry", i1 false, i1 false}
!624 = !{ptr @dvb_register_ci_mac._entry_ptr.348, !622, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @.str.349, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1158, i32 22}
!627 = !{ptr @.str.351, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/media/pci/cx23885/cx23885-dvb.c", i32 1178, i32 3}
!629 = !{ptr @dvb_register_ci_mac._entry.350, !628, !"_entry", i1 false, i1 false}
!630 = !{ptr @dvb_register_ci_mac._entry_ptr.352, !628, !"_entry_ptr", i1 false, i1 false}
!631 = !{i32 1, !"wchar_size", i32 2}
!632 = !{i32 1, !"min_enum_size", i32 4}
!633 = !{i32 8, !"branch-target-enforcement", i32 0}
!634 = !{i32 8, !"sign-return-address", i32 0}
!635 = !{i32 8, !"sign-return-address-all", i32 0}
!636 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!637 = !{i32 7, !"uwtable", i32 1}
!638 = !{i32 7, !"frame-pointer", i32 2}
!639 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!640 = !{!"auto-init"}
!641 = !{i64 2158898749}
!642 = !{i64 5077826}
!643 = !{i64 2158899286}
!644 = !{i64 2158899823}
!645 = !{i64 5078244}
!646 = !{i64 2158919493}
!647 = !{i64 2158924942}
!648 = !{i64 2158925743}
!649 = !{i64 2158928240}
!650 = !{i64 2158929505}
!651 = !{i64 2158900590}
!652 = !{i64 2158901364}
!653 = !{i64 2158903136}
!654 = !{i64 2158904219}
!655 = !{i64 2158904853}
!656 = !{i64 2158906646}
!657 = !{i64 2158907729}
!658 = !{i64 2158910624}
!659 = !{i64 2158911707}
!660 = !{i64 2158913230}
!661 = !{i64 2158914401}
!662 = !{i64 2158915459}
!663 = !{i64 2158917259}
!664 = !{i64 2158918626}
