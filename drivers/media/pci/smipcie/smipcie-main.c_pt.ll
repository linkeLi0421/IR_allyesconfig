; ModuleID = '/llk/IR_all_yes/drivers/media/pci/smipcie/smipcie-main.c_pt.bc'
source_filename = "../drivers/media/pci/smipcie/smipcie-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
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
%struct.smi_cfg_info = type { i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.m88ds3103_config = type { i8, i32, i16, i8, i32, i8, i8, i8, i8, i8 }
%struct.smi_dev = type { i32, ptr, ptr, ptr, [2 x %struct.smi_port], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], %struct.smi_rc }
%struct.smi_port = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x ptr], i32, i32, i32, %struct.tasklet_struct, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_adapter, %struct.dvb_demux, %struct.dvb_net, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.125, i32 }
%union.anon.125 = type { ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.smi_rc = type { ptr, ptr, [64 x i8], [64 x i8], [256 x i8], i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.si2168_config = type { ptr, ptr, i8, i8 }
%struct.si2157_config = type { ptr, ptr, i8, i8 }
%struct.m88rs6000t_config = type { ptr }
%struct.ts2020_config = type { i8, i32, i16, ptr, i8, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.139], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.139 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.140 }>
%union.anon.140 = type { i64 }
%struct.dvb_demux_feed = type { %union.anon.137, %union.anon.138, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.137 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.138 = type { ptr }

@__param_str_adapter_nr = internal constant [19 x i8] c"smipcie.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype383 = internal constant [43 x i8] c"smipcie.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr384 = internal constant [44 x i8] c"smipcie.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_smipcie__392_1120_smipcie_driver_init6 = internal global ptr @smipcie_driver_init, section ".initcall6.init", align 4
@smipcie_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @smi_id_table, ptr @smi_probe, ptr @smi_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_smipcie_driver_exit = internal global ptr @smipcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [49 x i8] c"smipcie.author=Max nibble <nibble.max@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [36 x i8] c"smipcie.description=SMI PCIe driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file395 = internal constant [47 x i8] c"smipcie.file=drivers/media/pci/smipcie/smipcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license396 = internal constant [20 x i8] c"smipcie.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smipcie\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMI PCIe driver\00", [16 x i8] zeroinitializer }, align 32
@smi_id_table = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 6878, i32 12344, i32 16980, i32 1360, i32 0, i32 0, i32 ptrtoint (ptr @dvbsky_s950_cfg to i32), i32 0 }, %struct.pci_device_id { i32 6878, i32 12344, i32 16980, i32 1362, i32 0, i32 0, i32 ptrtoint (ptr @dvbsky_s952_cfg to i32), i32 0 }, %struct.pci_device_id { i32 6878, i32 12344, i32 16980, i32 21888, i32 0, i32 0, i32 ptrtoint (ptr @dvbsky_t9580_cfg to i32), i32 0 }, %struct.pci_device_id { i32 6878, i32 12344, i32 5058, i32 12310, i32 0, i32 0, i32 ptrtoint (ptr @technotrend_s2_4200_cfg to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dvbsky_s950_cfg = internal constant { %struct.smi_cfg_info, [36 x i8] } { %struct.smi_cfg_info { i32 1, ptr @.str.2, i32 0, i32 3, i32 0, i32 2, ptr @.str.3 }, [36 x i8] zeroinitializer }, align 32
@dvbsky_s952_cfg = internal constant { %struct.smi_cfg_info, [36 x i8] } { %struct.smi_cfg_info { i32 0, ptr @.str.4, i32 3, i32 3, i32 1, i32 1, ptr @.str.3 }, [36 x i8] zeroinitializer }, align 32
@dvbsky_t9580_cfg = internal constant { %struct.smi_cfg_info, [36 x i8] } { %struct.smi_cfg_info { i32 2, ptr @.str.5, i32 3, i32 3, i32 3, i32 2, ptr @.str.3 }, [36 x i8] zeroinitializer }, align 32
@technotrend_s2_4200_cfg = internal constant { %struct.smi_cfg_info, [36 x i8] } { %struct.smi_cfg_info { i32 4, ptr @.str.6, i32 3, i32 3, i32 1, i32 1, ptr @.str.7 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DVBSky S950 V3\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rc-dvbsky\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DVBSky S952 V3\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DVBSky T9580 V3\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TechnoTrend TT-budget S2-4200 Twin\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tt-1500\00", [21 x i8] zeroinitializer }, align 32
@smi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 959, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"card detected: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smi_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/smipcie/smipcie-main.c\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smi_probe._entry_ptr = internal global ptr @smi_probe._entry, section ".printk_index", align 4
@smi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 1004, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MSI not available.\0A\00", [44 x i8] zeroinitializer }, align 32
@smi_probe._entry_ptr.15 = internal global ptr @smi_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SMI_PCIE\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SMI-I2C0\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SMI-I2C1\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@smi_port_init.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.10, ptr @.str.20, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smi_port_init\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s, port %d, dmaused %d\0A\00", [39 x i8] zeroinitializer }, align 32
@smi_port_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.10, i32 410, ptr @.str.22, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Port[%d] DMA CH0 memory allocation failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@smi_port_init._entry_ptr = internal global ptr @smi_port_init._entry, section ".printk_index", align 4
@smi_port_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.10, i32 423, ptr @.str.22, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Port[%d] DMA CH1 memory allocation failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@smi_port_init._entry_ptr.25 = internal global ptr @smi_port_init._entry.23, section ".printk_index", align 4
@smi_dma_xfer.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.27, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smi_dma_xfer\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Port[%d]-DMA CH0 engine complete successful !\0A\00", [49 x i8] zeroinitializer }, align 32
@smi_dma_xfer.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.28, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"DMA CH0 engine complete length mismatched, finish data=%d !\0A\00", [35 x i8] zeroinitializer }, align 32
@smi_dma_xfer.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.29, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Port[%d]-DMA CH1 engine complete successful !\0A\00", [49 x i8] zeroinitializer }, align 32
@smi_dma_xfer.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.10, ptr @.str.30, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"DMA CH1 engine complete length mismatched, finish data=%d !\0A\00", [35 x i8] zeroinitializer }, align 32
@smi_dvb_init.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.10, ptr @.str.32, i8 0, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smi_dvb_init\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, port %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMI_DVB\00", [24 x i8] zeroinitializer }, align 32
@smi_dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.10, i32 859, ptr @.str.22, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Fail to register DVB adapter.\0A\00", [33 x i8] zeroinitializer }, align 32
@smi_dvb_init._entry_ptr = internal global ptr @smi_dvb_init._entry, section ".printk_index", align 4
@smi_fe_init.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.10, ptr @.str.37, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smi_fe_init\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: port %d, fe_type = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@smi_fe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.10, i32 715, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s port %d MAC: %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@smi_fe_init._entry_ptr = internal global ptr @smi_fe_init._entry, section ".printk_index", align 4
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m88ds3103_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:m88ds3103_attach\00", [40 x i8] zeroinitializer }, align 32
@smi_dvbsky_m88ds3103_cfg = internal constant { %struct.m88ds3103_config, [40 x i8] } { %struct.m88ds3103_config { i8 104, i32 27000000, i16 33, i8 2, i32 16000, i8 -128, i8 0, i8 0, i8 -103, i8 64 }, [40 x i8] zeroinitializer }, align 32
@smi_dvbsky_m88ds3103_fe_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.10, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol m88ds3103_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smi_dvbsky_m88ds3103_fe_attach\00", [33 x i8] zeroinitializer }, align 32
@smi_dvbsky_m88ds3103_fe_attach._entry_ptr = internal global ptr @smi_dvbsky_m88ds3103_fe_attach._entry, section ".printk_index", align 4
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ts2020\00", [25 x i8] zeroinitializer }, align 32
@smi_dvbsky_m88rs6000_cfg = internal constant { %struct.m88ds3103_config, [40 x i8] } { %struct.m88ds3103_config { i8 105, i32 27000000, i16 33, i8 2, i32 16000, i8 -128, i8 0, i8 0, i8 -103, i8 64 }, [40 x i8] zeroinitializer }, align 32
@smi_dvbsky_m88rs6000_fe_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.44, ptr @.str.10, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smi_dvbsky_m88rs6000_fe_attach\00", [33 x i8] zeroinitializer }, align 32
@smi_dvbsky_m88rs6000_fe_attach._entry_ptr = internal global ptr @smi_dvbsky_m88rs6000_fe_attach._entry, section ".printk_index", align 4
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m88rs6000t\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2168\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2157\00", [25 x i8] zeroinitializer }, align 32
@smi_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.10, i32 251, ptr @.str.22, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: reg=0x%x (error=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smi_read_eeprom\00", [16 x i8] zeroinitializer }, align 32
@smi_read_eeprom._entry_ptr = internal global ptr @smi_read_eeprom._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"smipcie_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1113, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 15, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1120, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1114, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"smi_id_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1104, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"dvbsky_s950_cfg\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1058, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"dvbsky_s952_cfg\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1068, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"dvbsky_t9580_cfg\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1078, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [24 x i8] c"technotrend_s2_4200_cfg\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1088, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1060, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1065, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1070, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1080, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1090, i32 10 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1095, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 958, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1004, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1008, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 185, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 207, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 369, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 408, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 421, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 297, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 309, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 320, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 332, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 852, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 855, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 859, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 684, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 713, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [25 x i8] c"smi_dvbsky_m88ds3103_cfg\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 512, i32 38 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 539, i32 13 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 547, i32 27 }
@___asan_gen_.212 = private unnamed_addr constant [25 x i8] c"smi_dvbsky_m88rs6000_cfg\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 568, i32 38 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 595, i32 13 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 603, i32 27 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 645, i32 28 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 662, i32 28 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [44 x i8] c"../drivers/media/pci/smipcie/smipcie-main.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 250, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_adapter_nr384, ptr @__UNIQUE_ID_adapter_nrtype383, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file395, ptr @__UNIQUE_ID_license396, ptr @__exitcall_smipcie_driver_exit, ptr @__initcall__kmod_smipcie__392_1120_smipcie_driver_init6, ptr @__param_adapter_nr, ptr @smi_dvb_init._entry, ptr @smi_dvb_init._entry_ptr, ptr @smi_dvbsky_m88ds3103_fe_attach._entry, ptr @smi_dvbsky_m88ds3103_fe_attach._entry_ptr, ptr @smi_dvbsky_m88rs6000_fe_attach._entry, ptr @smi_dvbsky_m88rs6000_fe_attach._entry_ptr, ptr @smi_fe_init._entry, ptr @smi_fe_init._entry_ptr, ptr @smi_port_init._entry, ptr @smi_port_init._entry.23, ptr @smi_port_init._entry_ptr, ptr @smi_port_init._entry_ptr.25, ptr @smi_probe._entry, ptr @smi_probe._entry.13, ptr @smi_probe._entry_ptr, ptr @smi_probe._entry_ptr.15, ptr @smi_read_eeprom._entry, ptr @smi_read_eeprom._entry_ptr, ptr @smipcie_driver_exit, ptr @smipcie_driver, ptr @adapter_nr, ptr @.str, ptr @.str.1, ptr @smi_id_table, ptr @dvbsky_s950_cfg, ptr @dvbsky_s952_cfg, ptr @dvbsky_t9580_cfg, ptr @technotrend_s2_4200_cfg, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @smi_dvbsky_m88ds3103_cfg, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @smi_dvbsky_m88rs6000_cfg, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smipcie_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_id_table to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_s950_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_s952_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbsky_t9580_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technotrend_s2_4200_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_port_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_port_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_fe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_dvbsky_m88ds3103_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_dvbsky_m88ds3103_fe_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_dvbsky_m88rs6000_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_dvbsky_m88rs6000_fe_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smipcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @smipcie_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smipcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @smipcie_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smi_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7616) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.err_pci_disable_device_crit_edge, label %if.end3

if.end.err_pci_disable_device_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pci_disable_device

if.end3:                                          ; preds = %if.end
  %pci_dev = getelementptr inbounds %struct.smi_dev, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pci_dev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %5 = inttoptr i32 %4 to ptr
  %info = getelementptr inbounds %struct.smi_dev, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %info, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %name = getelementptr inbounds %struct.smi_cfg_info, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.8, ptr noundef %8) #12
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call7.i.i, align 8
  %14 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 47, i32 0, i32 1
  %18 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp12 = icmp eq i32 %19, 0
  %sub = sub i32 1, %17
  %add = add i32 %sub, %19
  %cond = select i1 %cmp12, i32 0, i32 %add
  %call21 = tail call ptr @ioremap(i32 noundef %17, i32 noundef %cond) #8
  %lmmio = getelementptr inbounds %struct.smi_dev, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21, ptr %lmmio, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end3.err_kfree_crit_edge, label %if.end25

if.end3.err_kfree_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end25:                                         ; preds = %if.end3
  %call27 = tail call i32 @dma_set_mask(ptr noundef %dev5, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end25.err_pci_iounmap_crit_edge, label %if.end30

if.end25.err_pci_iounmap_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pci_iounmap

if.end30:                                         ; preds = %if.end25
  tail call void @pci_set_master(ptr noundef %pdev) #8
  tail call fastcc void @smi_hw_init(ptr noundef nonnull %call7.i.i)
  %call35 = tail call fastcc i32 @smi_i2c_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end30.err_pci_iounmap_crit_edge, label %if.end38

if.end30.err_pci_iounmap_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pci_iounmap

if.end38:                                         ; preds = %if.end30
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %ts_0 = getelementptr inbounds %struct.smi_cfg_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ts_0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ts_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %if.end38.if.end47_crit_edge, label %if.then41

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then41:                                        ; preds = %if.end38
  %ts_port = getelementptr inbounds %struct.smi_dev, ptr %call7.i.i, i32 0, i32 4
  %call43 = tail call fastcc i32 @smi_port_attach(ptr noundef nonnull %call7.i.i, ptr noundef %ts_port, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then41.err_del_i2c_adaptor_crit_edge, label %if.then41.if.end47_crit_edge

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then41.err_del_i2c_adaptor_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_i2c_adaptor

if.end47:                                         ; preds = %if.then41.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 4
  %ts_1 = getelementptr inbounds %struct.smi_cfg_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ts_1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ts_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool49.not = icmp eq i32 %28, 0
  br i1 %tobool49.not, label %if.end47.if.end57_crit_edge, label %if.then50

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then50:                                        ; preds = %if.end47
  %arrayidx52 = getelementptr %struct.smi_dev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %call53 = tail call fastcc i32 @smi_port_attach(ptr noundef nonnull %call7.i.i, ptr noundef %arrayidx52, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then50.err_del_port0_attach_crit_edge, label %if.then50.if.end57_crit_edge

if.then50.if.end57_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then50.err_del_port0_attach_crit_edge:         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_port0_attach

if.end57:                                         ; preds = %if.then50.if.end57_crit_edge, %if.end47.if.end57_crit_edge
  %call58 = tail call i32 @smi_ir_init(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.err_del_port1_attach_crit_edge, label %if.end61

if.end57.err_del_port1_attach_crit_edge:          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_port1_attach

if.end61:                                         ; preds = %if.end57
  %call62 = tail call i32 @pci_msi_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.if.end67_crit_edge, label %if.then64

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev, align 8
  %call66 = tail call i32 @pci_enable_msi(ptr noundef %30) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end61.if.end67_crit_edge
  %ret.0 = phi i32 [ %call66, %if.then64 ], [ %call58, %if.end61.if.end67_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool68.not = icmp eq i32 %ret.0, 0
  br i1 %tobool68.not, label %if.end67.if.end75_crit_edge, label %do.end72

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.end72:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev, align 8
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev74, ptr noundef nonnull @.str.14) #12
  br label %if.end75

if.end75:                                         ; preds = %do.end72, %if.end67.if.end75_crit_edge
  %33 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %36, ptr noundef nonnull @smi_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.16, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp78 = icmp slt i32 %call.i, 0
  br i1 %cmp78, label %err_del_ir, label %if.end80

if.end80:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %ir = getelementptr inbounds %struct.smi_dev, ptr %call7.i.i, i32 0, i32 7
  tail call void @smi_ir_start(ptr noundef %ir) #8
  br label %cleanup

err_del_ir:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @smi_ir_exit(ptr noundef nonnull %call7.i.i) #8
  br label %err_del_port1_attach

err_del_port1_attach:                             ; preds = %err_del_ir, %if.end57.err_del_port1_attach_crit_edge
  %ret.1 = phi i32 [ %call58, %if.end57.err_del_port1_attach_crit_edge ], [ %call.i, %err_del_ir ]
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 4
  %ts_182 = getelementptr inbounds %struct.smi_cfg_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %ts_182 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ts_182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool83.not = icmp eq i32 %40, 0
  br i1 %tobool83.not, label %err_del_port1_attach.err_del_port0_attach_crit_edge, label %if.then84

err_del_port1_attach.err_del_port0_attach_crit_edge: ; preds = %err_del_port1_attach
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_port0_attach

if.then84:                                        ; preds = %err_del_port1_attach
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx86 = getelementptr %struct.smi_dev, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call fastcc void @smi_port_detach(ptr noundef %arrayidx86)
  br label %err_del_port0_attach

err_del_port0_attach:                             ; preds = %if.then84, %err_del_port1_attach.err_del_port0_attach_crit_edge, %if.then50.err_del_port0_attach_crit_edge
  %ret.2 = phi i32 [ %call53, %if.then50.err_del_port0_attach_crit_edge ], [ %ret.1, %if.then84 ], [ %ret.1, %err_del_port1_attach.err_del_port0_attach_crit_edge ]
  %41 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %info, align 4
  %ts_089 = getelementptr inbounds %struct.smi_cfg_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %ts_089 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ts_089, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool90.not = icmp eq i32 %44, 0
  br i1 %tobool90.not, label %err_del_port0_attach.err_del_i2c_adaptor_crit_edge, label %if.then91

err_del_port0_attach.err_del_i2c_adaptor_crit_edge: ; preds = %err_del_port0_attach
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_i2c_adaptor

if.then91:                                        ; preds = %err_del_port0_attach
  call void @__sanitizer_cov_trace_pc() #10
  %ts_port92 = getelementptr inbounds %struct.smi_dev, ptr %call7.i.i, i32 0, i32 4
  tail call fastcc void @smi_port_detach(ptr noundef %ts_port92)
  br label %err_del_i2c_adaptor

err_del_i2c_adaptor:                              ; preds = %if.then91, %err_del_port0_attach.err_del_i2c_adaptor_crit_edge, %if.then41.err_del_i2c_adaptor_crit_edge
  %ret.3 = phi i32 [ %call43, %if.then41.err_del_i2c_adaptor_crit_edge ], [ %ret.2, %if.then91 ], [ %ret.2, %err_del_port0_attach.err_del_i2c_adaptor_crit_edge ]
  %i2c_bus.i = getelementptr inbounds %struct.smi_dev, ptr %call7.i.i, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %i2c_bus.i) #8
  %arrayidx2.i = getelementptr %struct.smi_dev, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @i2c_del_adapter(ptr noundef %arrayidx2.i) #8
  br label %err_pci_iounmap

err_pci_iounmap:                                  ; preds = %err_del_i2c_adaptor, %if.end30.err_pci_iounmap_crit_edge, %if.end25.err_pci_iounmap_crit_edge
  %ret.4 = phi i32 [ %call27, %if.end25.err_pci_iounmap_crit_edge ], [ %call35, %if.end30.err_pci_iounmap_crit_edge ], [ %ret.3, %err_del_i2c_adaptor ]
  %45 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio, align 4
  tail call void @iounmap(ptr noundef %46) #8
  br label %err_kfree

err_kfree:                                        ; preds = %err_pci_iounmap, %if.end3.err_kfree_crit_edge
  %ret.5 = phi i32 [ %ret.4, %err_pci_iounmap ], [ -12, %if.end3.err_kfree_crit_edge ]
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %err_pci_disable_device

err_pci_disable_device:                           ; preds = %err_kfree, %if.end.err_pci_disable_device_crit_edge
  %ret.6 = phi i32 [ %ret.5, %err_kfree ], [ -12, %if.end.err_pci_disable_device_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %err_pci_disable_device, %if.end80, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.6, %err_pci_disable_device ], [ 0, %if.end80 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %lmmio = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 518
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65536) #8, !srcloc !146
  %pci_dev = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #8
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 8
  tail call void @pci_disable_msi(ptr noundef %9) #8
  %info = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %ts_1 = getelementptr inbounds %struct.smi_cfg_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ts_1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ts_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.smi_dev, ptr %1, i32 0, i32 4, i32 1
  tail call fastcc void @smi_port_detach(ptr noundef %arrayidx)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %ts_0 = getelementptr inbounds %struct.smi_cfg_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ts_0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ts_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not = icmp eq i32 %17, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ts_port6 = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 4
  tail call fastcc void @smi_port_detach(ptr noundef %ts_port6)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  tail call void @smi_ir_exit(ptr noundef %1) #8
  %i2c_bus.i = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %i2c_bus.i) #8
  %arrayidx2.i = getelementptr %struct.smi_dev, ptr %1, i32 0, i32 5, i32 1
  tail call void @i2c_del_adapter(ptr noundef %arrayidx2.i) #8
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  tail call void @iounmap(ptr noundef %19) #8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smi_hw_init(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 544
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %3 = and i32 %2, -1056968449
  %4 = or i32 %3, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr7 = getelementptr i32, ptr %6, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #8, !srcloc !146
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %8, i32 625
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %10 = and i32 %9, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr20 = getelementptr i32, ptr %12, i32 625
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %10) #8, !srcloc !146
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr24 = getelementptr i32, ptr %14, i32 640
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %16 = and i32 %15, 1073741823
  %17 = or i32 %16, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr34 = getelementptr i32, ptr %19, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %17) #8, !srcloc !146
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr38 = getelementptr i32, ptr %21, i32 705
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %23 = and i32 %22, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr47 = getelementptr i32, ptr %25, i32 705
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %23) #8, !srcloc !146
  %26 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio, align 4
  %add.ptr51 = getelementptr i32, ptr %27, i32 720
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %29 = and i32 %28, 1073741823
  %30 = or i32 %29, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lmmio, align 4
  %add.ptr61 = getelementptr i32, ptr %32, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %30) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio, align 4
  %add.ptr66 = getelementptr i32, ptr %34, i32 518
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 -65536) #8, !srcloc !146
  %35 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio, align 4
  %add.ptr70 = getelementptr i32, ptr %36, i32 514
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lmmio, align 4
  %add.ptr78 = getelementptr i32, ptr %39, i32 515
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %37) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio, align 4
  %add.ptr85 = getelementptr i32, ptr %41, i32 546
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  %43 = and i32 %42, -50528257
  %44 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio, align 4
  %add.ptr92 = getelementptr i32, ptr %45, i32 546
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %43) #8, !srcloc !146
  tail call void @msleep(i32 noundef 50) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio, align 4
  %add.ptr99 = getelementptr i32, ptr %47, i32 546
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %49 = or i32 %48, 16842752
  %50 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lmmio, align 4
  %add.ptr106 = getelementptr i32, ptr %51, i32 546
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %49) #8, !srcloc !146
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smi_i2c_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 594
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %3 = and i32 %2, -973012993
  %4 = or i32 %3, 560201728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio.i, align 4
  %add.ptr6.i = getelementptr i32, ptr %6, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %4) #8, !srcloc !146
  tail call void @msleep(i32 noundef 20) #8
  %7 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio.i, align 4
  %add.ptr11.i = getelementptr i32, ptr %8, i32 594
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  %10 = and i32 %9, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio.i, align 4
  %add.ptr21.i = getelementptr i32, ptr %12, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %10) #8, !srcloc !146
  %i2c_bus = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 5
  %driver_data.i.i = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 5, i32 0, i32 9, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 5, i32 0, i32 12
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.17, i32 noundef 48) #8
  %14 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %i2c_bus, align 8
  %pci_dev = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 2
  %15 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %parent = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 5, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev5, ptr %parent, align 8
  %i2c_bit = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 6
  %algo_data = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 5, i32 0, i32 3
  %18 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %i2c_bit, ptr %algo_data, align 4
  %19 = ptrtoint ptr %i2c_bit to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %i2c_bit, align 8
  %setsda = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 0, i32 1
  %20 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @smi_i2c0_setsda, ptr %setsda, align 4
  %setscl = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 0, i32 2
  %21 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @smi_i2c0_setscl, ptr %setscl, align 8
  %getsda = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 0, i32 3
  %22 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @smi_i2c0_getsda, ptr %getsda, align 4
  %getscl = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 0, i32 4
  %23 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @smi_i2c0_getscl, ptr %getscl, align 8
  %udelay = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 0, i32 7
  %24 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 12, ptr %udelay, align 4
  %timeout = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 0, i32 8
  %25 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %timeout, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio.i, align 4
  %add.ptr11.i.i = getelementptr i32, ptr %27, i32 594
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %29 = and i32 %28, -268435457
  %30 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i.i = getelementptr i32, ptr %31, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %29) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio.i, align 4
  %add.ptr12.i.i = getelementptr i32, ptr %33, i32 594
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %35 = and i32 %34, -134217729
  %36 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i.i122 = getelementptr i32, ptr %37, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i122, i32 %35) #8, !srcloc !146
  %call28 = tail call i32 @i2c_bit_add_bus(ptr noundef %i2c_bus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %38 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i124 = getelementptr i32, ptr %39, i32 610
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %41 = and i32 %40, -973012993
  %42 = or i32 %41, 560201728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lmmio.i, align 4
  %add.ptr6.i125 = getelementptr i32, ptr %44, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i125, i32 %42) #8, !srcloc !146
  tail call void @msleep(i32 noundef 20) #8
  %45 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio.i, align 4
  %add.ptr11.i126 = getelementptr i32, ptr %46, i32 610
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i126) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  %48 = and i32 %47, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio.i, align 4
  %add.ptr21.i127 = getelementptr i32, ptr %50, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i127, i32 %48) #8, !srcloc !146
  %arrayidx30 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 5, i32 1
  %driver_data.i.i128 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 5, i32 1, i32 9, i32 8
  %51 = ptrtoint ptr %driver_data.i.i128 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev, ptr %driver_data.i.i128, align 4
  %name33 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 5, i32 1, i32 12
  %call35 = tail call i32 @strscpy(ptr noundef %name33, ptr noundef nonnull @.str.18, i32 noundef 48) #8
  %52 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx30, align 8
  %53 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_dev, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %parent44 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 5, i32 1, i32 9, i32 1
  %55 = ptrtoint ptr %parent44 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev40, ptr %parent44, align 8
  %arrayidx46 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 1
  %algo_data49 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 5, i32 1, i32 3
  %56 = ptrtoint ptr %algo_data49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx46, ptr %algo_data49, align 4
  %57 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev, ptr %arrayidx46, align 8
  %setsda55 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 1, i32 1
  %58 = ptrtoint ptr %setsda55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @smi_i2c1_setsda, ptr %setsda55, align 4
  %setscl58 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 1, i32 2
  %59 = ptrtoint ptr %setscl58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @smi_i2c1_setscl, ptr %setscl58, align 8
  %getsda61 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 1, i32 3
  %60 = ptrtoint ptr %getsda61 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @smi_i2c1_getsda, ptr %getsda61, align 4
  %getscl64 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 1, i32 4
  %61 = ptrtoint ptr %getscl64 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @smi_i2c1_getscl, ptr %getscl64, align 8
  %udelay67 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 1, i32 7
  %62 = ptrtoint ptr %udelay67 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 12, ptr %udelay67, align 4
  %timeout70 = getelementptr %struct.smi_dev, ptr %dev, i32 0, i32 6, i32 1, i32 8
  %63 = ptrtoint ptr %timeout70 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 10, ptr %timeout70, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio.i, align 4
  %add.ptr11.i.i130 = getelementptr i32, ptr %65, i32 610
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i130) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %67 = and i32 %66, -268435457
  %68 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i.i131 = getelementptr i32, ptr %69, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i131, i32 %67) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lmmio.i, align 4
  %add.ptr12.i.i133 = getelementptr i32, ptr %71, i32 610
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i133) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %73 = and i32 %72, -134217729
  %74 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i.i134 = getelementptr i32, ptr %75, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i134, i32 %73) #8, !srcloc !146
  %call73 = tail call i32 @i2c_bit_add_bus(ptr noundef %arrayidx30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then75:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_adapter(ptr noundef %i2c_bus) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %entry.cleanup_crit_edge ], [ %call73, %if.then75 ], [ %call73, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smi_port_attach(ptr noundef %dev, ptr noundef %port, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %port, align 8
  %idx = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %index, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  %info = getelementptr inbounds %struct.smi_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fe_0 = getelementptr inbounds %struct.smi_cfg_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fe_0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond.c37 = load i32, ptr %fe_0, align 4
  %fe_type.c38 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 3
  %5 = ptrtoint ptr %fe_type.c38 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.c37, ptr %fe_type.c38, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %ts_0 = getelementptr inbounds %struct.smi_cfg_info, ptr %7, i32 0, i32 2
  br label %cond.end8

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fe_1 = getelementptr inbounds %struct.smi_cfg_info, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %fe_1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.c = load i32, ptr %fe_1, align 4
  %fe_type.c = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 3
  %9 = ptrtoint ptr %fe_type.c to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.c, ptr %fe_type.c, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %ts_1 = getelementptr inbounds %struct.smi_cfg_info, ptr %11, i32 0, i32 3
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false, %cond.true
  %cond9.in = phi ptr [ %ts_0, %cond.true ], [ %ts_1, %cond.false ]
  %12 = ptrtoint ptr %cond9.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond9 = load i32, ptr %cond9.in, align 4
  %call = tail call fastcc i32 @smi_port_init(ptr noundef %port, i32 noundef %cond9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %cond.end8.cleanup_crit_edge, label %if.end

cond.end8.cleanup_crit_edge:                      ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end8
  %call11 = tail call fastcc i32 @smi_dvb_init(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.err_del_port_init_crit_edge, label %if.end14

if.end.err_del_port_init_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_port_init

if.end14:                                         ; preds = %if.end
  %call15 = tail call fastcc i32 @smi_fe_init(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %err_del_dvb_init, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_del_dvb_init:                                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %demux.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23
  %dvbnet.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 24
  tail call void @dvb_net_release(ptr noundef %dvbnet.i) #8
  %close.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 0, i32 4
  %13 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %close.i, align 8
  %call.i = tail call i32 %14(ptr noundef %demux.i) #8
  %remove_frontend.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 0, i32 11
  %15 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remove_frontend.i, align 4
  %hw_frontend.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 19
  %call4.i = tail call i32 %16(ptr noundef %demux.i, ptr noundef %hw_frontend.i) #8
  %17 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remove_frontend.i, align 4
  %mem_frontend.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 20
  %call8.i = tail call i32 %18(ptr noundef %demux.i, ptr noundef %mem_frontend.i) #8
  %dmxdev.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 21
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #8
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #8
  %dvb_adapter.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 22
  %call10.i = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter.i) #8
  br label %err_del_port_init

err_del_port_init:                                ; preds = %err_del_dvb_init, %if.end.err_del_port_init_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end.err_del_port_init_crit_edge ], [ %call15, %err_del_dvb_init ]
  tail call fastcc void @smi_port_exit(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %err_del_port_init, %if.end14.cleanup_crit_edge, %cond.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_del_port_init ], [ %call, %cond.end8.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smi_ir_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smi_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2 = getelementptr %struct.smi_dev, ptr %dev_id, i32 0, i32 4, i32 1
  %lmmio = getelementptr inbounds %struct.smi_dev, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 514
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !147
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  %info = getelementptr inbounds %struct.smi_dev, ptr %dev_id, i32 0, i32 1
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %ts_0 = getelementptr inbounds %struct.smi_cfg_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ts_0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ts_port = getelementptr inbounds %struct.smi_dev, ptr %dev_id, i32 0, i32 4
  %call5 = tail call fastcc i32 @smi_port_irq(ptr noundef %ts_port, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %handled.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %ts_1 = getelementptr inbounds %struct.smi_cfg_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ts_1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ts_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call fastcc i32 @smi_port_irq(ptr noundef %arrayidx2, i32 noundef %3)
  %add10 = add i32 %call9, %handled.0
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %handled.1 = phi i32 [ %add10, %if.then8 ], [ %handled.0, %if.end.if.end11_crit_edge ]
  %ir3 = getelementptr inbounds %struct.smi_dev, ptr %dev_id, i32 0, i32 7
  %call12 = tail call i32 @smi_ir_irq(ptr noundef %ir3, i32 noundef %3) #8
  %add13 = sub i32 0, %call12
  call void @__sanitizer_cov_trace_cmp4(i32 %handled.1, i32 %add13)
  %tobool14.not = icmp ne i32 %handled.1, %add13
  %cond = zext i1 %tobool14.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smi_ir_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smi_ir_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smi_port_detach(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fe.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe.i, align 4
  %call.i = tail call i32 @dvb_unregister_frontend(ptr noundef %1) #8
  %i2c_client_tuner.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 28
  %2 = ptrtoint ptr %i2c_client_tuner.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client_tuner.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i.i, align 4
  %owner.i.i = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner.i.i, align 4
  tail call void @module_put(ptr noundef %7) #8
  tail call void @i2c_unregister_device(ptr noundef nonnull %3) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %i2c_client_demod.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 27
  %8 = ptrtoint ptr %i2c_client_demod.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client_demod.i, align 8
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.end.i.smi_fe_exit.exit_crit_edge, label %if.then3.i

if.end.i.smi_fe_exit.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smi_fe_exit.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %driver.i13.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %driver.i13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver.i13.i, align 4
  %owner.i14.i = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %owner.i14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner.i14.i, align 4
  tail call void @module_put(ptr noundef %13) #8
  tail call void @i2c_unregister_device(ptr noundef nonnull %9) #8
  br label %smi_fe_exit.exit

smi_fe_exit.exit:                                 ; preds = %if.then3.i, %if.end.i.smi_fe_exit.exit_crit_edge
  %14 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe.i, align 4
  tail call void @dvb_frontend_detach(ptr noundef %15) #8
  %demux.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23
  %dvbnet.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 24
  tail call void @dvb_net_release(ptr noundef %dvbnet.i) #8
  %close.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 0, i32 4
  %16 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %close.i, align 8
  %call.i3 = tail call i32 %17(ptr noundef %demux.i) #8
  %remove_frontend.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 0, i32 11
  %18 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remove_frontend.i, align 4
  %hw_frontend.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 19
  %call4.i = tail call i32 %19(ptr noundef %demux.i, ptr noundef %hw_frontend.i) #8
  %20 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remove_frontend.i, align 4
  %mem_frontend.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 20
  %call8.i = tail call i32 %21(ptr noundef %demux.i, ptr noundef %mem_frontend.i) #8
  %dmxdev.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 21
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #8
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #8
  %dvb_adapter.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 22
  %call10.i = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter.i) #8
  tail call fastcc void @smi_port_exit(ptr noundef %port)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smi_i2c0_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i = icmp eq i32 %state, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %lmmio9.i = getelementptr inbounds %struct.smi_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio9.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio9.i, align 4
  %add.ptr11.i = getelementptr i32, ptr %1, i32 594
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool.not.i, label %do.body5.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = and i32 %2, -268435457
  %4 = ptrtoint ptr %lmmio9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio9.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %5, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #8, !srcloc !146
  br label %smi_i2c_setsda.exit

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i32 %2, -67108865
  %7 = ptrtoint ptr %lmmio9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio9.i, align 4
  %add.ptr19.i = getelementptr i32, ptr %8, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %6) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %lmmio9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio9.i, align 4
  %add.ptr26.i = getelementptr i32, ptr %10, i32 594
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  %12 = or i32 %11, 268435456
  %13 = ptrtoint ptr %lmmio9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio9.i, align 4
  %add.ptr34.i = getelementptr i32, ptr %14, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %12) #8, !srcloc !146
  br label %smi_i2c_setsda.exit

smi_i2c_setsda.exit:                              ; preds = %do.body5.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smi_i2c0_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i = icmp eq i32 %state, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %lmmio10.i = getelementptr inbounds %struct.smi_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio10.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio10.i, align 4
  %add.ptr12.i = getelementptr i32, ptr %1, i32 594
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool.not.i, label %do.body5.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = and i32 %2, -134217729
  %4 = ptrtoint ptr %lmmio10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio10.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %5, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #8, !srcloc !146
  br label %smi_i2c_setscl.exit

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i32 %2, -33554433
  %7 = ptrtoint ptr %lmmio10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio10.i, align 4
  %add.ptr20.i = getelementptr i32, ptr %8, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %6) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %lmmio10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio10.i, align 4
  %add.ptr28.i = getelementptr i32, ptr %10, i32 594
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  %12 = or i32 %11, 134217728
  %13 = ptrtoint ptr %lmmio10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio10.i, align 4
  %add.ptr36.i = getelementptr i32, ptr %14, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %12) #8, !srcloc !146
  br label %smi_i2c_setscl.exit

smi_i2c_setscl.exit:                              ; preds = %do.body5.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smi_i2c0_getsda(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 594
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  %3 = and i32 %2, -268435457
  %4 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %5, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #8, !srcloc !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #8
  %7 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio.i, align 4
  %add.ptr9.i = getelementptr i32, ptr %8, i32 594
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  %10 = lshr i32 %9, 30
  %.lobit.i = and i32 %10, 1
  ret i32 %.lobit.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smi_i2c0_getscl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 594
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %3 = and i32 %2, -134217729
  %4 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %5, i32 594
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #8, !srcloc !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #8
  %7 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio.i, align 4
  %add.ptr9.i = getelementptr i32, ptr %8, i32 594
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %call10.lobit.i = lshr i32 %9, 31
  ret i32 %call10.lobit.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smi_i2c1_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i = icmp eq i32 %state, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %lmmio9.i = getelementptr inbounds %struct.smi_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio9.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio9.i, align 4
  %add.ptr11.i = getelementptr i32, ptr %1, i32 610
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool.not.i, label %do.body5.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = and i32 %2, -268435457
  %4 = ptrtoint ptr %lmmio9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio9.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %5, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #8, !srcloc !146
  br label %smi_i2c_setsda.exit

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i32 %2, -67108865
  %7 = ptrtoint ptr %lmmio9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio9.i, align 4
  %add.ptr19.i = getelementptr i32, ptr %8, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %6) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %lmmio9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio9.i, align 4
  %add.ptr26.i = getelementptr i32, ptr %10, i32 610
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  %12 = or i32 %11, 268435456
  %13 = ptrtoint ptr %lmmio9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio9.i, align 4
  %add.ptr34.i = getelementptr i32, ptr %14, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %12) #8, !srcloc !146
  br label %smi_i2c_setsda.exit

smi_i2c_setsda.exit:                              ; preds = %do.body5.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smi_i2c1_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i = icmp eq i32 %state, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %lmmio10.i = getelementptr inbounds %struct.smi_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio10.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio10.i, align 4
  %add.ptr12.i = getelementptr i32, ptr %1, i32 610
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool.not.i, label %do.body5.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = and i32 %2, -134217729
  %4 = ptrtoint ptr %lmmio10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio10.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %5, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #8, !srcloc !146
  br label %smi_i2c_setscl.exit

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i32 %2, -33554433
  %7 = ptrtoint ptr %lmmio10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio10.i, align 4
  %add.ptr20.i = getelementptr i32, ptr %8, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %6) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %lmmio10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio10.i, align 4
  %add.ptr28.i = getelementptr i32, ptr %10, i32 610
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  %12 = or i32 %11, 134217728
  %13 = ptrtoint ptr %lmmio10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio10.i, align 4
  %add.ptr36.i = getelementptr i32, ptr %14, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %12) #8, !srcloc !146
  br label %smi_i2c_setscl.exit

smi_i2c_setscl.exit:                              ; preds = %do.body5.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smi_i2c1_getsda(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 610
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  %3 = and i32 %2, -268435457
  %4 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %5, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #8, !srcloc !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #8
  %7 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio.i, align 4
  %add.ptr9.i = getelementptr i32, ptr %8, i32 610
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  %10 = lshr i32 %9, 30
  %.lobit.i = and i32 %10, 1
  ret i32 %.lobit.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smi_i2c1_getscl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 610
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %3 = and i32 %2, -134217729
  %4 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %5, i32 610
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #8, !srcloc !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #8
  %7 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio.i, align 4
  %add.ptr9.i = getelementptr i32, ptr %8, i32 610
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %call10.lobit.i = lshr i32 %9, 31
  ret i32 %call10.lobit.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smi_port_init(ptr noundef %port, i32 noundef %dmaChanUsed) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_port_init.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_port_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %pci_dev = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %idx = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_port_init.__UNIQUE_ID_ddebug389, ptr noundef %dev3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef %dmaChanUsed) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %enable = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %enable, align 8
  %idx4 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 1
  %7 = ptrtoint ptr %idx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %dmaChanUsed, 1
  %_dmaInterruptCH0 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 15
  %9 = ptrtoint ptr %_dmaInterruptCH0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %_dmaInterruptCH0, align 4
  %and6 = and i32 %dmaChanUsed, 2
  br label %if.end21

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %dmaChanUsed, 2
  %and7 = and i32 %shl, 4
  %_dmaInterruptCH08 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 15
  %10 = ptrtoint ptr %_dmaInterruptCH08 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and7, ptr %_dmaInterruptCH08, align 4
  %and10 = and i32 %shl, 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then5
  %and10.sink = phi i32 [ %and10, %if.else ], [ %and6, %if.then5 ]
  %.sink124 = phi i32 [ 3072, %if.else ], [ 2752, %if.then5 ]
  %.sink123 = phi i32 [ 3076, %if.else ], [ 2756, %if.then5 ]
  %.sink122 = phi i32 [ 3080, %if.else ], [ 2760, %if.then5 ]
  %.sink121 = phi i32 [ 3084, %if.else ], [ 2764, %if.then5 ]
  %.sink120 = phi i32 [ 3088, %if.else ], [ 2768, %if.then5 ]
  %.sink119 = phi i32 [ 3092, %if.else ], [ 2772, %if.then5 ]
  %.sink118 = phi i32 [ 3096, %if.else ], [ 2776, %if.then5 ]
  %.sink117 = phi i32 [ 3100, %if.else ], [ 2780, %if.then5 ]
  %.sink = phi i32 [ 3104, %if.else ], [ 2784, %if.then5 ]
  %_dmaInterruptCH111 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 16
  %11 = ptrtoint ptr %_dmaInterruptCH111 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and10.sink, ptr %_dmaInterruptCH111, align 8
  %12 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink124, ptr %12, align 8
  %14 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink123, ptr %14, align 4
  %16 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink122, ptr %16, align 8
  %18 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 7
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink121, ptr %18, align 4
  %20 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink120, ptr %20, align 8
  %22 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 9
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink119, ptr %22, align 4
  %24 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 10
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink118, ptr %24, align 8
  %26 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 11
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink117, ptr %26, align 4
  %28 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 12
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %28, align 8
  %_dmaInterruptCH022 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 15
  %30 = ptrtoint ptr %_dmaInterruptCH022 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %_dmaInterruptCH022, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool23.not = icmp eq i32 %31, 0
  br i1 %tobool23.not, label %if.end21.if.end41_crit_edge, label %if.then24

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then24:                                        ; preds = %if.end21
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port, align 8
  %pci_dev26 = getelementptr inbounds %struct.smi_dev, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %pci_dev26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev26, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 13
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev27, i32 noundef 192512, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #8
  %cpu_addr = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 14
  %36 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %cpu_addr, align 4
  %tobool32.not = icmp eq ptr %call.i, null
  br i1 %tobool32.not, label %if.then24.err_crit_edge, label %if.then24.if.end41_crit_edge

if.then24.if.end41_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then24.err_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end41:                                         ; preds = %if.then24.if.end41_crit_edge, %if.end21.if.end41_crit_edge
  %_dmaInterruptCH142 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 16
  %37 = ptrtoint ptr %_dmaInterruptCH142 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %_dmaInterruptCH142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool43.not = icmp eq i32 %38, 0
  br i1 %tobool43.not, label %if.end41.if.end64_crit_edge, label %if.then44

if.end41.if.end64_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then44:                                        ; preds = %if.end41
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port, align 8
  %pci_dev46 = getelementptr inbounds %struct.smi_dev, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %pci_dev46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_dev46, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %arrayidx49 = getelementptr %struct.smi_port, ptr %port, i32 0, i32 13, i32 1
  %call.i115 = tail call ptr @dma_alloc_attrs(ptr noundef %dev47, i32 noundef 192512, ptr noundef %arrayidx49, i32 noundef 3264, i32 noundef 0) #8
  %arrayidx52 = getelementptr %struct.smi_port, ptr %port, i32 0, i32 14, i32 1
  %43 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i115, ptr %arrayidx52, align 4
  %tobool55.not = icmp eq ptr %call.i115, null
  br i1 %tobool55.not, label %if.then44.err_crit_edge, label %if.then44.if.end64_crit_edge

if.then44.if.end64_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then44.err_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end64:                                         ; preds = %if.then44.if.end64_crit_edge, %if.end41.if.end64_crit_edge
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %_dmaInterruptCH022 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %_dmaInterruptCH022, align 4
  %48 = ptrtoint ptr %_dmaInterruptCH142 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %_dmaInterruptCH142, align 8
  %or.i = or i32 %49, %47
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %45, i32 0, i32 3
  %51 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %52, i32 518
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %50) #8, !srcloc !146
  %tasklet = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 18
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @smi_dma_xfer) #8
  %count.i.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 18, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #8
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !184
  %54 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %enable, align 8
  br label %return

err:                                              ; preds = %if.then44.err_crit_edge, %if.then24.err_crit_edge
  %.str.24.sink = phi ptr [ @.str.21, %if.then24.err_crit_edge ], [ @.str.24, %if.then44.err_crit_edge ]
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port, align 8
  %pci_dev60 = getelementptr inbounds %struct.smi_dev, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %pci_dev60 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev60, align 8
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %59 = ptrtoint ptr %idx4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %idx4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull %.str.24.sink, i32 noundef %60) #12
  %cpu_addr.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 14
  %61 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cpu_addr.i, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %err.if.end.i_crit_edge, label %if.then.i

err.if.end.i_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port, align 8
  %pci_dev.i = getelementptr inbounds %struct.smi_dev, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci_dev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %dma_addr.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 13
  %67 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 192512, ptr noundef nonnull %62, i32 noundef %68, i32 noundef 0) #8
  %69 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %cpu_addr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %err.if.end.i_crit_edge
  %arrayidx8.i = getelementptr %struct.smi_port, ptr %port, i32 0, i32 14, i32 1
  %70 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx8.i, align 4
  %tobool9.not.i = icmp eq ptr %71, null
  br i1 %tobool9.not.i, label %if.end.i.return_crit_edge, label %if.then10.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %port, align 8
  %pci_dev12.i = getelementptr inbounds %struct.smi_dev, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %pci_dev12.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pci_dev12.i, align 8
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %arrayidx17.i = getelementptr %struct.smi_port, ptr %port, i32 0, i32 13, i32 1
  %76 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx17.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13.i, i32 noundef 192512, ptr noundef nonnull %71, i32 noundef %77, i32 noundef 0) #8
  %78 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %arrayidx8.i, align 4
  br label %return

return:                                           ; preds = %if.then10.i, %if.end.i.return_crit_edge, %if.end64
  %retval.0 = phi i32 [ 0, %if.end64 ], [ -12, %if.end.i.return_crit_edge ], [ -12, %if.then10.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smi_dvb_init(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb_adapter = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 22
  %demux = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_dvb_init.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_dvb_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %pci_dev = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %idx = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_dvb_init.__UNIQUE_ID_ddebug391, ptr noundef %dev3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %pci_dev5 = getelementptr inbounds %struct.smi_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pci_dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev5, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call7 = tail call i32 @dvb_register_adapter(ptr noundef %dvb_adapter, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef %dev6, ptr noundef nonnull @adapter_nr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end11, label %if.end15

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %pci_dev13 = getelementptr inbounds %struct.smi_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pci_dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev13, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.34) #12
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %priv1.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 1
  %14 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %port, ptr %priv1.i, align 4
  %filternum.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 2
  %15 = ptrtoint ptr %filternum.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %filternum.i, align 8
  %feednum.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 3
  %16 = ptrtoint ptr %feednum.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %feednum.i, align 4
  %start_feed2.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 4
  %17 = ptrtoint ptr %start_feed2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @smi_start_feed, ptr %start_feed2.i, align 8
  %stop_feed3.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 5
  %18 = ptrtoint ptr %stop_feed3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @smi_stop_feed, ptr %stop_feed3.i, align 4
  %write_to_decoder.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 6
  %19 = ptrtoint ptr %write_to_decoder.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %write_to_decoder.i, align 8
  %20 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 13, ptr %demux, align 8
  %call.i = tail call i32 @dvb_dmx_init(ptr noundef %demux) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp slt i32 %call.i, 0
  br i1 %cmp17, label %if.end15.err_del_dvb_register_adapter_crit_edge, label %if.end19

if.end15.err_del_dvb_register_adapter_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_dvb_register_adapter

if.end19:                                         ; preds = %if.end15
  %dmxdev = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 21
  %hw_frontend = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 19
  %mem_frontend = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 20
  %filternum.i78 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 21, i32 4
  %21 = ptrtoint ptr %filternum.i78 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 256, ptr %filternum.i78, align 4
  %demux.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 21, i32 3
  %22 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %demux, ptr %demux.i, align 4
  %capabilities.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 21, i32 5
  %23 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %capabilities.i, align 4
  %call.i79 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %dvb_adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp.i = icmp slt i32 %call.i79, 0
  br i1 %cmp.i, label %if.end19.err_del_dvb_dmx_crit_edge, label %my_dvb_dmxdev_ts_card_init.exit

if.end19.err_del_dvb_dmx_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_dvb_dmx

my_dvb_dmxdev_ts_card_init.exit:                  ; preds = %if.end19
  %source.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %source.i, align 4
  %add_frontend.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 0, i32 10
  %25 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add_frontend.i, align 8
  %call3.i = tail call i32 %26(ptr noundef %demux, ptr noundef %hw_frontend) #8
  %source4.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 20, i32 1
  %27 = ptrtoint ptr %source4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %source4.i, align 4
  %28 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add_frontend.i, align 8
  %call8.i = tail call i32 %29(ptr noundef %demux, ptr noundef %mem_frontend) #8
  %connect_frontend.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 0, i32 13
  %30 = ptrtoint ptr %connect_frontend.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %connect_frontend.i, align 4
  %call11.i = tail call i32 %31(ptr noundef %demux, ptr noundef %hw_frontend) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp22 = icmp slt i32 %call11.i, 0
  br i1 %cmp22, label %my_dvb_dmxdev_ts_card_init.exit.err_del_dvb_dmx_crit_edge, label %if.end24

my_dvb_dmxdev_ts_card_init.exit.err_del_dvb_dmx_crit_edge: ; preds = %my_dvb_dmxdev_ts_card_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_dvb_dmx

if.end24:                                         ; preds = %my_dvb_dmxdev_ts_card_init.exit
  %dvbnet = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 24
  %32 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %demux.i, align 4
  %call27 = tail call i32 @dvb_net_init(ptr noundef %dvb_adapter, ptr noundef %dvbnet, ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %err_del_dvb_dmxdev, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_del_dvb_dmxdev:                               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %close = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 0, i32 4
  %34 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %close, align 8
  %call32 = tail call i32 %35(ptr noundef %demux) #8
  %remove_frontend = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 23, i32 0, i32 11
  %36 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remove_frontend, align 4
  %call36 = tail call i32 %37(ptr noundef %demux, ptr noundef %hw_frontend) #8
  %38 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remove_frontend, align 4
  %call41 = tail call i32 %39(ptr noundef %demux, ptr noundef %mem_frontend) #8
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #8
  br label %err_del_dvb_dmx

err_del_dvb_dmx:                                  ; preds = %err_del_dvb_dmxdev, %my_dvb_dmxdev_ts_card_init.exit.err_del_dvb_dmx_crit_edge, %if.end19.err_del_dvb_dmx_crit_edge
  %ret.0 = phi i32 [ %call11.i, %my_dvb_dmxdev_ts_card_init.exit.err_del_dvb_dmx_crit_edge ], [ %call27, %err_del_dvb_dmxdev ], [ %call.i79, %if.end19.err_del_dvb_dmx_crit_edge ]
  tail call void @dvb_dmx_release(ptr noundef %demux) #8
  br label %err_del_dvb_register_adapter

err_del_dvb_register_adapter:                     ; preds = %err_del_dvb_dmx, %if.end15.err_del_dvb_register_adapter_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.end15.err_del_dvb_register_adapter_crit_edge ], [ %ret.0, %err_del_dvb_dmx ]
  %call45 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter) #8
  br label %cleanup

cleanup:                                          ; preds = %err_del_dvb_register_adapter, %if.end24.cleanup_crit_edge, %do.end11
  %retval.0 = phi i32 [ %call7, %do.end11 ], [ %ret.1, %err_del_dvb_register_adapter ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smi_fe_init(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %tuner_i2c_adapter.i116 = alloca ptr, align 4
  %client_info.i = alloca %struct.i2c_board_info, align 4
  %si2168_config.i = alloca %struct.si2168_config, align 4
  %si2157_config.i = alloca %struct.si2157_config, align 4
  %tuner_i2c_adapter.i71 = alloca ptr, align 4
  %tuner_info.i72 = alloca %struct.i2c_board_info, align 4
  %m88rs6000t_config.i = alloca %struct.m88rs6000t_config, align 4
  %tuner_i2c_adapter.i = alloca ptr, align 4
  %tuner_info.i = alloca %struct.i2c_board_info, align 4
  %ts2020_config.i = alloca %struct.ts2020_config, align 4
  %mac_ee = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %dvb_adapter = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mac_ee) #8
  %2 = call ptr @memset(ptr %mac_ee, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_fe_init.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_fe_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 8
  %pci_dev = getelementptr inbounds %struct.smi_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %idx = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 1
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %fe_type = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 3
  %9 = ptrtoint ptr %fe_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fe_type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_fe_init.__UNIQUE_ID_ddebug390, ptr noundef %dev5, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %8, i32 noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe_type6 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 3
  %11 = ptrtoint ptr %fe_type6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fe_type6, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end.if.end13_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
    i32 3, label %sw.bb10
  ]

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

sw.bb:                                            ; preds = %do.end
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_i2c_adapter.i) #8
  %16 = ptrtoint ptr %tuner_i2c_adapter.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %tuner_i2c_adapter.i, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tuner_info.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ts2020_config.i) #8
  %17 = call ptr @memset(ptr %ts2020_config.i, i32 0, i32 24)
  %18 = call ptr @memset(ptr %tuner_info.i, i32 0, i32 56)
  %idx.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 1
  %19 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  %i2c_bus.i = getelementptr inbounds %struct.smi_dev, ptr %15, i32 0, i32 5
  %arrayidx3.i = getelementptr %struct.smi_dev, ptr %15, i32 0, i32 5, i32 1
  %cond.i = select i1 %cmp.i, ptr %i2c_bus.i, ptr %arrayidx3.i
  %call.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.end8.i, label %sw.bb.if.then.i_crit_edge

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

cond.end8.i:                                      ; preds = %sw.bb
  %call6.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.40) #8
  %call7.i = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #8
  %tobool10.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool10.not.i, label %do.end.i, label %cond.end8.i.if.then.i_crit_edge

cond.end8.i.if.then.i_crit_edge:                  ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %cond.end8.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %cond954.i = phi ptr [ %call7.i, %cond.end8.i.if.then.i_crit_edge ], [ %call.i, %sw.bb.if.then.i_crit_edge ]
  %call11.i = call ptr %cond954.i(ptr noundef nonnull @smi_dvbsky_m88ds3103_cfg, ptr noundef %cond.i, ptr noundef nonnull %tuner_i2c_adapter.i) #8
  %cmp12.i = icmp eq ptr %call11.i, null
  br i1 %cmp12.i, label %if.then13.i, label %if.end20.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.39) #8
  br label %if.end15.thread.i

do.end.i:                                         ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #12
  br label %if.end15.thread.i

if.end15.thread.i:                                ; preds = %do.end.i, %if.then13.i
  %fe56.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 26
  %21 = ptrtoint ptr %fe56.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %fe56.i, align 4
  br label %smi_dvbsky_m88ds3103_fe_attach.exit

if.end20.i:                                       ; preds = %if.then.i
  %fe.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 26
  %22 = ptrtoint ptr %fe.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call11.i, ptr %fe.i, align 4
  %fe22.i = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config.i, i32 0, i32 3
  %23 = ptrtoint ptr %fe22.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call11.i, ptr %fe22.i, align 4
  %call23.i = call i32 @strscpy(ptr noundef nonnull %tuner_info.i, ptr noundef nonnull @.str.43, i32 noundef 20) #8
  %addr.i = getelementptr inbounds %struct.i2c_board_info, ptr %tuner_info.i, i32 0, i32 2
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 96, ptr %addr.i, align 2
  %platform_data.i = getelementptr inbounds %struct.i2c_board_info, ptr %tuner_info.i, i32 0, i32 4
  %25 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ts2020_config.i, ptr %platform_data.i, align 4
  %26 = ptrtoint ptr %tuner_i2c_adapter.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tuner_i2c_adapter.i, align 4
  %call.i.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %tuner_info.i) #8
  %call1.i.i = call ptr @i2c_new_client_device(ptr noundef %27, ptr noundef nonnull %tuner_info.i) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call1.i.i, null
  %cmp.i.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.end20.i.if.then26.i_crit_edge, label %i2c_client_has_driver.exit.i.i

if.end20.i.if.then26.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.i

i2c_client_has_driver.exit.i.i:                   ; preds = %if.end20.i
  %driver.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %call1.i.i, i32 0, i32 4, i32 6
  %28 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.i.not.i.i, label %i2c_client_has_driver.exit.i.i.if.then26.i_crit_edge, label %if.end.i.i

i2c_client_has_driver.exit.i.i.if.then26.i_crit_edge: ; preds = %i2c_client_has_driver.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.i

if.end.i.i:                                       ; preds = %i2c_client_has_driver.exit.i.i
  %owner.i.i = getelementptr inbounds %struct.device_driver, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %owner.i.i, align 4
  %call3.i.i = call zeroext i1 @try_module_get(ptr noundef %31) #8
  br i1 %call3.i.i, label %if.end27.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @i2c_unregister_device(ptr noundef nonnull %call1.i.i) #8
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.then4.i.i, %i2c_client_has_driver.exit.i.i.if.then26.i_crit_edge, %if.end20.i.if.then26.i_crit_edge
  %32 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fe.i, align 4
  call void @dvb_frontend_detach(ptr noundef %33) #8
  br label %smi_dvbsky_m88ds3103_fe_attach.exit

if.end27.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fe.i, align 4
  %get_rf_strength.i = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 32, i32 13
  %36 = ptrtoint ptr %get_rf_strength.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_rf_strength.i, align 4
  %read_signal_strength.i = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 17
  %38 = ptrtoint ptr %read_signal_strength.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %read_signal_strength.i, align 4
  %i2c_client_tuner.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 28
  %39 = ptrtoint ptr %i2c_client_tuner.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call1.i.i, ptr %i2c_client_tuner.i, align 4
  br label %smi_dvbsky_m88ds3103_fe_attach.exit

smi_dvbsky_m88ds3103_fe_attach.exit:              ; preds = %if.end27.i, %if.then26.i, %if.end15.thread.i
  %retval.0.i70 = phi i32 [ 0, %if.end27.i ], [ -19, %if.then26.i ], [ -19, %if.end15.thread.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ts2020_config.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tuner_info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_i2c_adapter.i) #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_i2c_adapter.i71) #8
  %42 = ptrtoint ptr %tuner_i2c_adapter.i71 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -1 to ptr), ptr %tuner_i2c_adapter.i71, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tuner_info.i72) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m88rs6000t_config.i) #8
  %43 = call ptr @memset(ptr %tuner_info.i72, i32 0, i32 56)
  %idx.i73 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 1
  %44 = ptrtoint ptr %idx.i73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idx.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i74 = icmp eq i32 %45, 0
  %i2c_bus.i75 = getelementptr inbounds %struct.smi_dev, ptr %41, i32 0, i32 5
  %arrayidx3.i76 = getelementptr %struct.smi_dev, ptr %41, i32 0, i32 5, i32 1
  %cond.i77 = select i1 %cmp.i74, ptr %i2c_bus.i75, ptr %arrayidx3.i76
  %call.i78 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #8
  %tobool.not.i79 = icmp eq ptr %call.i78, null
  br i1 %tobool.not.i79, label %cond.end8.i83, label %sw.bb8.if.then.i87_crit_edge

sw.bb8.if.then.i87_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i87

cond.end8.i83:                                    ; preds = %sw.bb8
  %call6.i80 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.40) #8
  %call7.i81 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #8
  %tobool10.not.i82 = icmp eq ptr %call7.i81, null
  br i1 %tobool10.not.i82, label %do.end.i90, label %cond.end8.i83.if.then.i87_crit_edge

cond.end8.i83.if.then.i87_crit_edge:              ; preds = %cond.end8.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i87

if.then.i87:                                      ; preds = %cond.end8.i83.if.then.i87_crit_edge, %sw.bb8.if.then.i87_crit_edge
  %cond954.i84 = phi ptr [ %call7.i81, %cond.end8.i83.if.then.i87_crit_edge ], [ %call.i78, %sw.bb8.if.then.i87_crit_edge ]
  %call11.i85 = call ptr %cond954.i84(ptr noundef nonnull @smi_dvbsky_m88rs6000_cfg, ptr noundef %cond.i77, ptr noundef nonnull %tuner_i2c_adapter.i71) #8
  %cmp12.i86 = icmp eq ptr %call11.i85, null
  br i1 %cmp12.i86, label %if.then13.i88, label %if.end20.i102

if.then13.i88:                                    ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.39) #8
  br label %if.end15.thread.i92

do.end.i90:                                       ; preds = %cond.end8.i83
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #12
  br label %if.end15.thread.i92

if.end15.thread.i92:                              ; preds = %do.end.i90, %if.then13.i88
  %fe56.i91 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 26
  %46 = ptrtoint ptr %fe56.i91 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %fe56.i91, align 4
  br label %smi_dvbsky_m88rs6000_fe_attach.exit

if.end20.i102:                                    ; preds = %if.then.i87
  %fe.i93 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 26
  %47 = ptrtoint ptr %fe.i93 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call11.i85, ptr %fe.i93, align 4
  %48 = ptrtoint ptr %m88rs6000t_config.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call11.i85, ptr %m88rs6000t_config.i, align 4
  %call23.i94 = call i32 @strscpy(ptr noundef nonnull %tuner_info.i72, ptr noundef nonnull @.str.45, i32 noundef 20) #8
  %addr.i95 = getelementptr inbounds %struct.i2c_board_info, ptr %tuner_info.i72, i32 0, i32 2
  %49 = ptrtoint ptr %addr.i95 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 33, ptr %addr.i95, align 2
  %platform_data.i96 = getelementptr inbounds %struct.i2c_board_info, ptr %tuner_info.i72, i32 0, i32 4
  %50 = ptrtoint ptr %platform_data.i96 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %m88rs6000t_config.i, ptr %platform_data.i96, align 4
  %51 = ptrtoint ptr %tuner_i2c_adapter.i71 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tuner_i2c_adapter.i71, align 4
  %call.i.i97 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %tuner_info.i72) #8
  %call1.i.i98 = call ptr @i2c_new_client_device(ptr noundef %52, ptr noundef nonnull %tuner_info.i72) #8
  %tobool.not.i.i.i.i99 = icmp eq ptr %call1.i.i98, null
  %cmp.i.i.i.i100 = icmp ugt ptr %call1.i.i98, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i101 = or i1 %tobool.not.i.i.i.i99, %cmp.i.i.i.i100
  br i1 %spec.select.i.i.i.i101, label %if.end20.i102.if.then26.i110_crit_edge, label %i2c_client_has_driver.exit.i.i105

if.end20.i102.if.then26.i110_crit_edge:           ; preds = %if.end20.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.i110

i2c_client_has_driver.exit.i.i105:                ; preds = %if.end20.i102
  %driver.i.i.i103 = getelementptr inbounds %struct.i2c_client, ptr %call1.i.i98, i32 0, i32 4, i32 6
  %53 = ptrtoint ptr %driver.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver.i.i.i103, align 4
  %tobool.i.not.i.i104 = icmp eq ptr %54, null
  br i1 %tobool.i.not.i.i104, label %i2c_client_has_driver.exit.i.i105.if.then26.i110_crit_edge, label %if.end.i.i108

i2c_client_has_driver.exit.i.i105.if.then26.i110_crit_edge: ; preds = %i2c_client_has_driver.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.i110

if.end.i.i108:                                    ; preds = %i2c_client_has_driver.exit.i.i105
  %owner.i.i106 = getelementptr inbounds %struct.device_driver, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %owner.i.i106 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %owner.i.i106, align 4
  %call3.i.i107 = call zeroext i1 @try_module_get(ptr noundef %56) #8
  br i1 %call3.i.i107, label %if.end27.i114, label %if.then4.i.i109

if.then4.i.i109:                                  ; preds = %if.end.i.i108
  call void @__sanitizer_cov_trace_pc() #10
  call void @i2c_unregister_device(ptr noundef nonnull %call1.i.i98) #8
  br label %if.then26.i110

if.then26.i110:                                   ; preds = %if.then4.i.i109, %i2c_client_has_driver.exit.i.i105.if.then26.i110_crit_edge, %if.end20.i102.if.then26.i110_crit_edge
  %57 = ptrtoint ptr %fe.i93 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fe.i93, align 4
  call void @dvb_frontend_detach(ptr noundef %58) #8
  br label %smi_dvbsky_m88rs6000_fe_attach.exit

if.end27.i114:                                    ; preds = %if.end.i.i108
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %fe.i93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fe.i93, align 4
  %get_rf_strength.i111 = getelementptr inbounds %struct.dvb_frontend, ptr %60, i32 0, i32 1, i32 32, i32 13
  %61 = ptrtoint ptr %get_rf_strength.i111 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %get_rf_strength.i111, align 4
  %read_signal_strength.i112 = getelementptr inbounds %struct.dvb_frontend, ptr %60, i32 0, i32 1, i32 17
  %63 = ptrtoint ptr %read_signal_strength.i112 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %read_signal_strength.i112, align 4
  %i2c_client_tuner.i113 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 28
  %64 = ptrtoint ptr %i2c_client_tuner.i113 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call1.i.i98, ptr %i2c_client_tuner.i113, align 4
  br label %smi_dvbsky_m88rs6000_fe_attach.exit

smi_dvbsky_m88rs6000_fe_attach.exit:              ; preds = %if.end27.i114, %if.then26.i110, %if.end15.thread.i92
  %retval.0.i115 = phi i32 [ 0, %if.end27.i114 ], [ -19, %if.then26.i110 ], [ -19, %if.end15.thread.i92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m88rs6000t_config.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tuner_info.i72) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_i2c_adapter.i71) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_i2c_adapter.i116) #8
  %67 = ptrtoint ptr %tuner_i2c_adapter.i116 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -1 to ptr), ptr %tuner_i2c_adapter.i116, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %client_info.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config.i) #8
  %idx.i117 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 1
  %68 = ptrtoint ptr %idx.i117 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %idx.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i118 = icmp eq i32 %69, 0
  %i2c_bus.i119 = getelementptr inbounds %struct.smi_dev, ptr %66, i32 0, i32 5
  %arrayidx3.i120 = getelementptr %struct.smi_dev, ptr %66, i32 0, i32 5, i32 1
  %cond.i121 = select i1 %cmp.i118, ptr %i2c_bus.i119, ptr %arrayidx3.i120
  %70 = getelementptr inbounds i8, ptr %si2168_config.i, i32 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 100663296, ptr %70, align 4
  %i2c_adapter.i = getelementptr inbounds %struct.si2168_config, ptr %si2168_config.i, i32 0, i32 1
  %72 = ptrtoint ptr %i2c_adapter.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %tuner_i2c_adapter.i116, ptr %i2c_adapter.i, align 4
  %fe.i122 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 26
  %73 = ptrtoint ptr %si2168_config.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %fe.i122, ptr %si2168_config.i, align 4
  %74 = call ptr @memset(ptr %client_info.i, i32 0, i32 56)
  %call.i123 = call i32 @strscpy(ptr noundef nonnull %client_info.i, ptr noundef nonnull @.str.46, i32 noundef 20) #8
  %addr.i124 = getelementptr inbounds %struct.i2c_board_info, ptr %client_info.i, i32 0, i32 2
  %75 = ptrtoint ptr %addr.i124 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 100, ptr %addr.i124, align 2
  %platform_data.i125 = getelementptr inbounds %struct.i2c_board_info, ptr %client_info.i, i32 0, i32 4
  %76 = ptrtoint ptr %platform_data.i125 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %si2168_config.i, ptr %platform_data.i125, align 4
  %call.i.i126 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %client_info.i) #8
  %call1.i.i127 = call ptr @i2c_new_client_device(ptr noundef %cond.i121, ptr noundef nonnull %client_info.i) #8
  %tobool.not.i.i.i.i128 = icmp eq ptr %call1.i.i127, null
  %cmp.i.i.i.i129 = icmp ugt ptr %call1.i.i127, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i130 = or i1 %tobool.not.i.i.i.i128, %cmp.i.i.i.i129
  br i1 %spec.select.i.i.i.i130, label %sw.bb10.smi_dvbsky_sit2_fe_attach.exit_crit_edge, label %i2c_client_has_driver.exit.i.i133

sw.bb10.smi_dvbsky_sit2_fe_attach.exit_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %smi_dvbsky_sit2_fe_attach.exit

i2c_client_has_driver.exit.i.i133:                ; preds = %sw.bb10
  %driver.i.i.i131 = getelementptr inbounds %struct.i2c_client, ptr %call1.i.i127, i32 0, i32 4, i32 6
  %77 = ptrtoint ptr %driver.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %driver.i.i.i131, align 4
  %tobool.i.not.i.i132 = icmp eq ptr %78, null
  br i1 %tobool.i.not.i.i132, label %i2c_client_has_driver.exit.i.i133.smi_dvbsky_sit2_fe_attach.exit_crit_edge, label %if.end.i.i136

i2c_client_has_driver.exit.i.i133.smi_dvbsky_sit2_fe_attach.exit_crit_edge: ; preds = %i2c_client_has_driver.exit.i.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %smi_dvbsky_sit2_fe_attach.exit

if.end.i.i136:                                    ; preds = %i2c_client_has_driver.exit.i.i133
  %owner.i.i134 = getelementptr inbounds %struct.device_driver, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %owner.i.i134 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %owner.i.i134, align 4
  %call3.i.i135 = call zeroext i1 @try_module_get(ptr noundef %80) #8
  br i1 %call3.i.i135, label %if.end.i, label %if.then4.i.i137

if.then4.i.i137:                                  ; preds = %if.end.i.i136
  call void @__sanitizer_cov_trace_pc() #10
  call void @i2c_unregister_device(ptr noundef nonnull %call1.i.i127) #8
  br label %smi_dvbsky_sit2_fe_attach.exit

if.end.i:                                         ; preds = %if.end.i.i136
  %i2c_client_demod.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 27
  %81 = ptrtoint ptr %i2c_client_demod.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call1.i.i127, ptr %i2c_client_demod.i, align 8
  %82 = getelementptr inbounds i8, ptr %si2157_config.i, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 65536, ptr %82, align 4
  %84 = ptrtoint ptr %fe.i122 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fe.i122, align 4
  %86 = ptrtoint ptr %si2157_config.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %si2157_config.i, align 4
  %87 = call ptr @memset(ptr %client_info.i, i32 0, i32 56)
  %call10.i = call i32 @strscpy(ptr noundef nonnull %client_info.i, ptr noundef nonnull @.str.47, i32 noundef 20) #8
  %88 = ptrtoint ptr %addr.i124 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 96, ptr %addr.i124, align 2
  %89 = ptrtoint ptr %platform_data.i125 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %si2157_config.i, ptr %platform_data.i125, align 4
  %90 = ptrtoint ptr %tuner_i2c_adapter.i116 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tuner_i2c_adapter.i116, align 4
  %call.i39.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %client_info.i) #8
  %call1.i40.i = call ptr @i2c_new_client_device(ptr noundef %91, ptr noundef nonnull %client_info.i) #8
  %tobool.not.i.i.i41.i = icmp eq ptr %call1.i40.i, null
  %cmp.i.i.i42.i = icmp ugt ptr %call1.i40.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i43.i = or i1 %tobool.not.i.i.i41.i, %cmp.i.i.i42.i
  br i1 %spec.select.i.i.i43.i, label %if.end.i.if.then15.i_crit_edge, label %i2c_client_has_driver.exit.i46.i

if.end.i.if.then15.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

i2c_client_has_driver.exit.i46.i:                 ; preds = %if.end.i
  %driver.i.i44.i = getelementptr inbounds %struct.i2c_client, ptr %call1.i40.i, i32 0, i32 4, i32 6
  %92 = ptrtoint ptr %driver.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %driver.i.i44.i, align 4
  %tobool.i.not.i45.i = icmp eq ptr %93, null
  br i1 %tobool.i.not.i45.i, label %i2c_client_has_driver.exit.i46.i.if.then15.i_crit_edge, label %if.end.i49.i

i2c_client_has_driver.exit.i46.i.if.then15.i_crit_edge: ; preds = %i2c_client_has_driver.exit.i46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

if.end.i49.i:                                     ; preds = %i2c_client_has_driver.exit.i46.i
  %owner.i47.i = getelementptr inbounds %struct.device_driver, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %owner.i47.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %owner.i47.i, align 4
  %call3.i48.i = call zeroext i1 @try_module_get(ptr noundef %95) #8
  br i1 %call3.i48.i, label %if.end18.i, label %if.then4.i50.i

if.then4.i50.i:                                   ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @i2c_unregister_device(ptr noundef nonnull %call1.i40.i) #8
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.then4.i50.i, %i2c_client_has_driver.exit.i46.i.if.then15.i_crit_edge, %if.end.i.if.then15.i_crit_edge
  %96 = ptrtoint ptr %i2c_client_demod.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i2c_client_demod.i, align 8
  %driver.i.i = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 4, i32 6
  %98 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %driver.i.i, align 4
  %owner.i53.i = getelementptr inbounds %struct.device_driver, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %owner.i53.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %owner.i53.i, align 4
  call void @module_put(ptr noundef %101) #8
  call void @i2c_unregister_device(ptr noundef %97) #8
  %102 = ptrtoint ptr %i2c_client_demod.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %i2c_client_demod.i, align 8
  br label %smi_dvbsky_sit2_fe_attach.exit

if.end18.i:                                       ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c_client_tuner.i138 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 28
  %103 = ptrtoint ptr %i2c_client_tuner.i138 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call1.i40.i, ptr %i2c_client_tuner.i138, align 4
  br label %smi_dvbsky_sit2_fe_attach.exit

smi_dvbsky_sit2_fe_attach.exit:                   ; preds = %if.end18.i, %if.then15.i, %if.then4.i.i137, %i2c_client_has_driver.exit.i.i133.smi_dvbsky_sit2_fe_attach.exit_crit_edge, %sw.bb10.smi_dvbsky_sit2_fe_attach.exit_crit_edge
  %retval.0.i139 = phi i32 [ 0, %if.end18.i ], [ -19, %if.then15.i ], [ -19, %i2c_client_has_driver.exit.i.i133.smi_dvbsky_sit2_fe_attach.exit_crit_edge ], [ -19, %if.then4.i.i137 ], [ -19, %sw.bb10.smi_dvbsky_sit2_fe_attach.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %client_info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_i2c_adapter.i116) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %smi_dvbsky_sit2_fe_attach.exit, %smi_dvbsky_m88rs6000_fe_attach.exit, %smi_dvbsky_m88ds3103_fe_attach.exit
  %ret.0 = phi i32 [ %retval.0.i139, %smi_dvbsky_sit2_fe_attach.exit ], [ %retval.0.i115, %smi_dvbsky_m88rs6000_fe_attach.exit ], [ %retval.0.i70, %smi_dvbsky_m88ds3103_fe_attach.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end13_crit_edge

sw.epilog.if.end13_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %fe = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 26
  %104 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fe, align 4
  %call14 = call i32 @dvb_register_frontend(ptr noundef %dvb_adapter, ptr noundef %105) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end13
  %i2c_client_tuner = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 28
  %106 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i2c_client_tuner, align 4
  %tobool17.not = icmp eq ptr %107, null
  br i1 %tobool17.not, label %if.then16.if.end20_crit_edge, label %if.then18

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %107, i32 0, i32 4, i32 6
  %108 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %driver.i, align 4
  %owner.i = getelementptr inbounds %struct.device_driver, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %owner.i, align 4
  call void @module_put(ptr noundef %111) #8
  call void @i2c_unregister_device(ptr noundef nonnull %107) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then16.if.end20_crit_edge
  %i2c_client_demod = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 27
  %112 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i2c_client_demod, align 8
  %tobool21.not = icmp eq ptr %113, null
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %driver.i140 = getelementptr inbounds %struct.i2c_client, ptr %113, i32 0, i32 4, i32 6
  %114 = ptrtoint ptr %driver.i140 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %driver.i140, align 4
  %owner.i141 = getelementptr inbounds %struct.device_driver, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %owner.i141 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %owner.i141, align 4
  call void @module_put(ptr noundef %117) #8
  call void @i2c_unregister_device(ptr noundef nonnull %113) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %118 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fe, align 4
  call void @dvb_frontend_detach(ptr noundef %119) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end13
  %i2c_bus = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #8
  %120 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %121 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %b0.i, align 1
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -64, ptr %120, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %123 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %124 = call ptr @memset(ptr %123, i32 255, i32 16)
  %125 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 80, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %126 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %flags.i, align 2
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 2, ptr %123, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %128 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %129 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 80, ptr %arrayinit.element6.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %130 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %131 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 16, ptr %len9.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %132 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %mac_ee, ptr %buf10.i, align 4
  %call.i142 = call i32 @i2c_transfer(ptr noundef %i2c_bus, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i142)
  %cmp.not.i = icmp eq i32 %call.i142, 2
  br i1 %cmp.not.i, label %if.end26.smi_read_eeprom.exit_crit_edge, label %do.end.i143

if.end26.smi_read_eeprom.exit_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %smi_read_eeprom.exit

do.end.i143:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 5, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef 192, i32 noundef %call.i142) #12
  br label %smi_read_eeprom.exit

smi_read_eeprom.exit:                             ; preds = %do.end.i143, %if.end26.smi_read_eeprom.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #8
  %133 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %port, align 8
  %pci_dev32 = getelementptr inbounds %struct.smi_dev, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %pci_dev32 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pci_dev32, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  %info = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 1
  %137 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %info, align 4
  %name = getelementptr inbounds %struct.smi_cfg_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %name, align 4
  %idx34 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 1
  %141 = ptrtoint ptr %idx34 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %idx34, align 4
  %mul = shl i32 %142, 3
  %add.ptr = getelementptr i8, ptr %mac_ee, i32 %mul
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33, ptr noundef nonnull @.str.38, ptr noundef %140, i32 noundef %142, ptr noundef %add.ptr) #12
  %proposed_mac = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 22, i32 4
  %143 = ptrtoint ptr %idx34 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %idx34, align 4
  %mul40 = shl i32 %144, 3
  %add.ptr41 = getelementptr i8, ptr %mac_ee, i32 %mul40
  %145 = call ptr @memcpy(ptr %proposed_mac, ptr %add.ptr41, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %smi_read_eeprom.exit, %if.end24, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end24 ], [ %call.i142, %smi_read_eeprom.exit ], [ %ret.0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mac_ee) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smi_port_exit(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %_dmaInterruptCH0.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 15
  %2 = ptrtoint ptr %_dmaInterruptCH0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_dmaInterruptCH0.i, align 4
  %_dmaInterruptCH1.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 16
  %4 = ptrtoint ptr %_dmaInterruptCH1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %_dmaInterruptCH1.i, align 8
  %or.i = or i32 %5, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %8, i32 518
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !146
  %tasklet = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 18
  tail call void @tasklet_kill(ptr noundef %tasklet) #8
  %cpu_addr.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 14
  %9 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_addr.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 8
  %pci_dev.i = getelementptr inbounds %struct.smi_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %dma_addr.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 13
  %15 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 192512, ptr noundef nonnull %10, i32 noundef %16, i32 noundef 0) #8
  %17 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cpu_addr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %arrayidx8.i = getelementptr %struct.smi_port, ptr %port, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %if.end.i.smi_port_dma_free.exit_crit_edge, label %if.then10.i

if.end.i.smi_port_dma_free.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smi_port_dma_free.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 8
  %pci_dev12.i = getelementptr inbounds %struct.smi_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pci_dev12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev12.i, align 8
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %arrayidx17.i = getelementptr %struct.smi_port, ptr %port, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13.i, i32 noundef 192512, ptr noundef nonnull %19, i32 noundef %25, i32 noundef 0) #8
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx8.i, align 4
  br label %smi_port_dma_free.exit

smi_port_dma_free.exit:                           ; preds = %if.then10.i, %if.end.i.smi_port_dma_free.exit_crit_edge
  %enable = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 2
  %27 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smi_dma_xfer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -80
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %_int_status = getelementptr i8, ptr %t, i32 -4
  %2 = ptrtoint ptr %_int_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_int_status, align 4
  %lmmio = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %DMA_MANAGEMENT = getelementptr i8, ptr %t, i32 -32
  %6 = ptrtoint ptr %DMA_MANAGEMENT to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %DMA_MANAGEMENT, align 8
  %shr = lshr i32 %7, 2
  %add.ptr2 = getelementptr i32, ptr %5, i32 %shr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !147
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  %_dmaInterruptCH0 = getelementptr i8, ptr %t, i32 -12
  %10 = ptrtoint ptr %_dmaInterruptCH0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %_dmaInterruptCH0, align 4
  %and9 = and i32 %11, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp ne i32 %and9, 0
  %12 = and i32 %9, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp = icmp eq i32 %12, 16
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body, label %entry.if.end54_crit_edge

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_dma_xfer.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_dma_xfer, %if.then17)) #8
          to label %do.end [label %if.then17], !srcloc !180

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %idx = getelementptr i8, ptr %t, i32 -76
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_dma_xfer.__UNIQUE_ID_ddebug385, ptr noundef %dev18, ptr noundef nonnull @.str.27, i32 noundef %16) #8
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %DMA_CHAN0_TRANS_STATE = getelementptr i8, ptr %t, i32 -56
  %19 = ptrtoint ptr %DMA_CHAN0_TRANS_STATE to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %DMA_CHAN0_TRANS_STATE, align 8
  %shr22 = lshr i32 %20, 2
  %add.ptr23 = getelementptr i32, ptr %18, i32 %shr22
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  %22 = and i32 %21, -49408
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp28 = icmp eq i32 %22, 0
  %spec.store.select = select i1 %cmp28, i32 4194304, i32 %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 192512, i32 %spec.store.select)
  %cmp32.not = icmp eq i32 %spec.store.select, 192512
  br i1 %cmp32.not, label %do.end.if.end53_crit_edge, label %do.body35

do.end.if.end53_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.body35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_dma_xfer.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_dma_xfer, %if.then47)) #8
          to label %if.end53 [label %if.then47], !srcloc !180

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev48 = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %pci_dev48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev48, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_dma_xfer.__UNIQUE_ID_ddebug386, ptr noundef %dev49, ptr noundef nonnull @.str.28, i32 noundef %spec.store.select) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %do.body35, %do.end.if.end53_crit_edge
  %demux = getelementptr i8, ptr %t, i32 1296
  %cpu_addr = getelementptr i8, ptr %t, i32 -20
  %26 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpu_addr, align 4
  %div = udiv i32 %spec.store.select, 188
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %demux, ptr noundef %27, i32 noundef %div) #8
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %entry.if.end54_crit_edge
  %_dmaInterruptCH1 = getelementptr i8, ptr %t, i32 -8
  %28 = ptrtoint ptr %_dmaInterruptCH1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %_dmaInterruptCH1, align 8
  %and55 = and i32 %29, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp ne i32 %and55, 0
  %30 = and i32 %9, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %30)
  %cmp59 = icmp eq i32 %30, 1048576
  %or.cond179 = select i1 %tobool56.not, i1 %cmp59, i1 false
  br i1 %or.cond179, label %do.body62, label %if.end54.if.end120_crit_edge

if.end54.if.end120_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

do.body62:                                        ; preds = %if.end54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_dma_xfer.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_dma_xfer, %if.then74)) #8
          to label %do.end80 [label %if.then74], !srcloc !180

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev75 = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %pci_dev75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev75, align 8
  %dev76 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %idx77 = getelementptr i8, ptr %t, i32 -76
  %33 = ptrtoint ptr %idx77 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %idx77, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_dma_xfer.__UNIQUE_ID_ddebug387, ptr noundef %dev76, ptr noundef nonnull @.str.29, i32 noundef %34) #8
  br label %do.end80

do.end80:                                         ; preds = %if.then74, %do.body62
  %35 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio, align 4
  %DMA_CHAN1_TRANS_STATE = getelementptr i8, ptr %t, i32 -40
  %37 = ptrtoint ptr %DMA_CHAN1_TRANS_STATE to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %DMA_CHAN1_TRANS_STATE, align 8
  %shr84 = lshr i32 %38, 2
  %add.ptr85 = getelementptr i32, ptr %36, i32 %shr84
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  %40 = and i32 %39, -49408
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp90 = icmp eq i32 %40, 0
  %spec.store.select139 = select i1 %cmp90, i32 4194304, i32 %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 192512, i32 %spec.store.select139)
  %cmp94.not = icmp eq i32 %spec.store.select139, 192512
  br i1 %cmp94.not, label %do.end80.if.end115_crit_edge, label %do.body97

do.end80.if.end115_crit_edge:                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

do.body97:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smi_dma_xfer.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smi_dma_xfer, %if.then109)) #8
          to label %if.end115 [label %if.then109], !srcloc !180

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev110 = getelementptr inbounds %struct.smi_dev, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %pci_dev110 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev110, align 8
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smi_dma_xfer.__UNIQUE_ID_ddebug388, ptr noundef %dev111, ptr noundef nonnull @.str.30, i32 noundef %spec.store.select139) #8
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %do.body97, %do.end80.if.end115_crit_edge
  %demux116 = getelementptr i8, ptr %t, i32 1296
  %arrayidx118 = getelementptr i8, ptr %t, i32 -16
  %44 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx118, align 4
  %div119 = udiv i32 %spec.store.select139, 188
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %demux116, ptr noundef %45, i32 noundef %div119) #8
  br label %if.end120

if.end120:                                        ; preds = %if.end115, %if.end54.if.end120_crit_edge
  %46 = ptrtoint ptr %_dmaInterruptCH0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %_dmaInterruptCH0, align 4
  %and122 = and i32 %47, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %or = or i32 %9, 2
  %spec.select = select i1 %tobool123.not, i32 %9, i32 %or
  %48 = ptrtoint ptr %_dmaInterruptCH1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %_dmaInterruptCH1, align 8
  %and127 = and i32 %49, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  %or130 = or i32 %spec.select, 131072
  %dmaManagement.1 = select i1 %tobool128.not, i32 %spec.select, i32 %or130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %dmaManagement.1)
  %51 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lmmio, align 4
  %53 = ptrtoint ptr %DMA_MANAGEMENT to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %DMA_MANAGEMENT, align 8
  %shr137 = lshr i32 %54, 2
  %add.ptr138 = getelementptr i32, ptr %52, i32 %shr137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %50) #8, !srcloc !146
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %_dmaInterruptCH0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %_dmaInterruptCH0, align 4
  %59 = ptrtoint ptr %_dmaInterruptCH1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %_dmaInterruptCH1, align 8
  %or.i = or i32 %60, %58
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %56, i32 0, i32 3
  %62 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %63, i32 519
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %61) #8, !srcloc !146
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smi_start_feed(ptr nocapture noundef readonly %dvbdmxfeed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %users = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %users, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio.i, align 4
  %DMA_MANAGEMENT.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %DMA_MANAGEMENT.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DMA_MANAGEMENT.i, align 8
  %shr.i = lshr i32 %11, 2
  %add.ptr.i = getelementptr i32, ptr %9, i32 %shr.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !147
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %_dmaInterruptCH0.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %_dmaInterruptCH0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %_dmaInterruptCH0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dma_addr.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 13
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr.i, align 4
  %or25.i = or i32 %13, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %19 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio.i, align 4
  %DMA_CHAN0_ADDR_LOW.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %DMA_CHAN0_ADDR_LOW.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %DMA_CHAN0_ADDR_LOW.i, align 8
  %shr27.i = lshr i32 %22, 2
  %add.ptr28.i = getelementptr i32, ptr %20, i32 %shr27.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %18) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio.i, align 4
  %DMA_CHAN0_ADDR_HI.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %DMA_CHAN0_ADDR_HI.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %DMA_CHAN0_ADDR_HI.i, align 4
  %shr33.i = lshr i32 %26, 2
  %add.ptr34.i = getelementptr i32, ptr %24, i32 %shr33.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 0) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio.i, align 4
  %DMA_CHAN0_CONTROL.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 7
  %29 = ptrtoint ptr %DMA_CHAN0_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %DMA_CHAN0_CONTROL.i, align 4
  %shr39.i = lshr i32 %30, 2
  %add.ptr40.i = getelementptr i32, ptr %28, i32 %shr39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 15778321) #8, !srcloc !146
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %dmaManagement.0.i = phi i32 [ %or25.i, %if.then.i ], [ %13, %if.then.if.end.i_crit_edge ]
  %_dmaInterruptCH1.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 16
  %31 = ptrtoint ptr %_dmaInterruptCH1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %_dmaInterruptCH1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool41.not.i = icmp eq i32 %32, 0
  br i1 %tobool41.not.i, label %if.end.i.smi_config_DMA.exit_crit_edge, label %if.then42.i

if.end.i.smi_config_DMA.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smi_config_DMA.exit

if.then42.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44.i = getelementptr %struct.smi_port, ptr %3, i32 0, i32 13, i32 1
  %33 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx44.i, align 4
  %or72.i = or i32 %dmaManagement.0.i, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  %36 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio.i, align 4
  %DMA_CHAN1_ADDR_LOW.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 8
  %38 = ptrtoint ptr %DMA_CHAN1_ADDR_LOW.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %DMA_CHAN1_ADDR_LOW.i, align 8
  %shr77.i = lshr i32 %39, 2
  %add.ptr78.i = getelementptr i32, ptr %37, i32 %shr77.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 %35) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio.i, align 4
  %DMA_CHAN1_ADDR_HI.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 9
  %42 = ptrtoint ptr %DMA_CHAN1_ADDR_HI.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DMA_CHAN1_ADDR_HI.i, align 4
  %shr83.i = lshr i32 %43, 2
  %add.ptr84.i = getelementptr i32, ptr %41, i32 %shr83.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 0) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio.i, align 4
  %DMA_CHAN1_CONTROL.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 11
  %46 = ptrtoint ptr %DMA_CHAN1_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %DMA_CHAN1_CONTROL.i, align 4
  %shr89.i = lshr i32 %47, 2
  %add.ptr90.i = getelementptr i32, ptr %45, i32 %shr89.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.i, i32 15778321) #8, !srcloc !146
  br label %smi_config_DMA.exit

smi_config_DMA.exit:                              ; preds = %if.then42.i, %if.end.i.smi_config_DMA.exit_crit_edge
  %dmaManagement.1.i = phi i32 [ %or72.i, %if.then42.i ], [ %dmaManagement.0.i, %if.end.i.smi_config_DMA.exit_crit_edge ]
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %_dmaInterruptCH0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %_dmaInterruptCH0.i, align 4
  %52 = ptrtoint ptr %_dmaInterruptCH1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %_dmaInterruptCH1.i, align 8
  %or.i = or i32 %53, %51
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %lmmio.i12 = getelementptr inbounds %struct.smi_dev, ptr %49, i32 0, i32 3
  %55 = ptrtoint ptr %lmmio.i12 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmmio.i12, align 4
  %add.ptr.i13 = getelementptr i32, ptr %56, i32 515
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %54) #8, !srcloc !146
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %_dmaInterruptCH0.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %_dmaInterruptCH0.i, align 4
  %61 = ptrtoint ptr %_dmaInterruptCH1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %_dmaInterruptCH1.i, align 8
  %or.i16 = or i32 %62, %60
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i16) #8
  %lmmio.i17 = getelementptr inbounds %struct.smi_dev, ptr %58, i32 0, i32 3
  %64 = ptrtoint ptr %lmmio.i17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio.i17, align 4
  %add.ptr.i18 = getelementptr i32, ptr %65, i32 519
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %63) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %dmaManagement.1.i)
  %67 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lmmio.i, align 4
  %69 = ptrtoint ptr %DMA_MANAGEMENT.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %DMA_MANAGEMENT.i, align 8
  %shr = lshr i32 %70, 2
  %add.ptr = getelementptr i32, ptr %68, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %66) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !200
  %count.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 18, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #8
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #8, !srcloc !201
  br label %if.end

if.end:                                           ; preds = %smi_config_DMA.exit, %entry.if.end_crit_edge
  %72 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %users, align 8
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smi_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %users = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %users, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 18
  %count.i.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 18, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @tasklet_unlock_wait(ptr noundef %tasklet) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !184
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %_dmaInterruptCH0.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %_dmaInterruptCH0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_dmaInterruptCH0.i, align 4
  %_dmaInterruptCH1.i = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %_dmaInterruptCH1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %_dmaInterruptCH1.i, align 8
  %or.i = or i32 %14, %12
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %10, i32 0, i32 3
  %16 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %17, i32 518
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %lmmio = getelementptr inbounds %struct.smi_dev, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %DMA_MANAGEMENT = getelementptr inbounds %struct.smi_port, ptr %3, i32 0, i32 12
  %20 = ptrtoint ptr %DMA_MANAGEMENT to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DMA_MANAGEMENT, align 8
  %shr = lshr i32 %21, 2
  %add.ptr = getelementptr i32, ptr %19, i32 %shr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %23 = and i32 %22, -50332417
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %26 = ptrtoint ptr %DMA_MANAGEMENT to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DMA_MANAGEMENT, align 8
  %shr6 = lshr i32 %27, 2
  %add.ptr7 = getelementptr i32, ptr %25, i32 %shr6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %23) #8, !srcloc !146
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %dec
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smi_port_irq(ptr noundef %port, i32 noundef %int_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_dmaInterruptCH0 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 15
  %0 = ptrtoint ptr %_dmaInterruptCH0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_dmaInterruptCH0, align 4
  %_dmaInterruptCH1 = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 16
  %2 = ptrtoint ptr %_dmaInterruptCH1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_dmaInterruptCH1, align 8
  %or = or i32 %3, %1
  %and = and i32 %or, %int_status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %_dmaInterruptCH0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %_dmaInterruptCH0, align 4
  %8 = ptrtoint ptr %_dmaInterruptCH1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_dmaInterruptCH1, align 8
  %or.i = or i32 %9, %7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %lmmio.i = getelementptr inbounds %struct.smi_dev, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %12, i32 518
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #8, !srcloc !146
  %_int_status = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 17
  %13 = ptrtoint ptr %_int_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %int_status, ptr %_int_status, align 4
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %_dmaInterruptCH0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %_dmaInterruptCH0, align 4
  %18 = ptrtoint ptr %_dmaInterruptCH1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_dmaInterruptCH1, align 8
  %or.i9 = or i32 %19, %17
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i9) #8
  %lmmio.i10 = getelementptr inbounds %struct.smi_dev, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %lmmio.i10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio.i10, align 4
  %add.ptr.i11 = getelementptr i32, ptr %22, i32 515
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %20) #8, !srcloc !146
  %state.i = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 18, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet = getelementptr inbounds %struct.smi_port, ptr %port, i32 0, i32 18
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %handled.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.then.i ]
  ret i32 %handled.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smi_ir_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !114, !115, !117, !119, !121, !122, !123, !125, !127, !129, !131, !133, !134, !135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype383, !1, !"__UNIQUE_ID_adapter_nrtype383", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr384, !1, !"__UNIQUE_ID_adapter_nr384", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_smipcie__392_1120_smipcie_driver_init6, !5, !"__initcall__kmod_smipcie__392_1120_smipcie_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1120, i32 1}
!6 = !{ptr @__exitcall_smipcie_driver_exit, !5, !"__exitcall_smipcie_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author393, !8, !"__UNIQUE_ID_author393", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1122, i32 1}
!9 = !{ptr @__UNIQUE_ID_description394, !10, !"__UNIQUE_ID_description394", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1123, i32 1}
!11 = !{ptr @__UNIQUE_ID_file395, !12, !"__UNIQUE_ID_file395", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1124, i32 1}
!13 = !{ptr @__UNIQUE_ID_license396, !12, !"__UNIQUE_ID_license396", i1 false, i1 false}
!14 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!15 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!16 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!17 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1114, i32 10}
!20 = !{ptr @smipcie_driver, !21, !"smipcie_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1113, i32 26}
!22 = !{ptr @smi_id_table, !23, !"smi_id_table", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1104, i32 35}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1060, i32 10}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1065, i32 12}
!28 = !{ptr @dvbsky_s950_cfg, !29, !"dvbsky_s950_cfg", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1058, i32 34}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1070, i32 10}
!32 = !{ptr @dvbsky_s952_cfg, !33, !"dvbsky_s952_cfg", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1068, i32 34}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1080, i32 10}
!36 = !{ptr @dvbsky_t9580_cfg, !37, !"dvbsky_t9580_cfg", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1078, i32 34}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1090, i32 10}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1095, i32 12}
!42 = !{ptr @technotrend_s2_4200_cfg, !43, !"technotrend_s2_4200_cfg", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1088, i32 34}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 958, i32 2}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @smi_probe._entry, !45, !"_entry", i1 false, i1 false}
!51 = !{ptr @smi_probe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1004, i32 3}
!54 = !{ptr @smi_probe._entry.13, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @smi_probe._entry_ptr.15, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 1008, i32 20}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 185, i32 32}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 207, i32 32}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 369, i32 2}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @smi_port_init.__UNIQUE_ID_ddebug389, !63, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 408, i32 4}
!68 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @smi_port_init._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @smi_port_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 421, i32 4}
!73 = !{ptr @smi_port_init._entry.23, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @smi_port_init._entry_ptr.25, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 297, i32 3}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @smi_dma_xfer.__UNIQUE_ID_ddebug385, !76, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 309, i32 4}
!81 = !{ptr @smi_dma_xfer.__UNIQUE_ID_ddebug386, !80, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 320, i32 3}
!84 = !{ptr @smi_dma_xfer.__UNIQUE_ID_ddebug387, !83, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 332, i32 4}
!87 = !{ptr @smi_dma_xfer.__UNIQUE_ID_ddebug388, !86, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 852, i32 2}
!90 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @smi_dvb_init.__UNIQUE_ID_ddebug391, !89, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 855, i32 35}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 859, i32 3}
!96 = !{ptr @smi_dvb_init._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @smi_dvb_init._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 862, i32 42}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 684, i32 2}
!102 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @smi_fe_init.__UNIQUE_ID_ddebug390, !101, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 713, i32 2}
!106 = !{ptr @smi_fe_init._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @smi_fe_init._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 539, i32 13}
!110 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @smi_dvbsky_m88ds3103_fe_attach._entry, !109, !"_entry", i1 false, i1 false}
!114 = !{ptr @smi_dvbsky_m88ds3103_fe_attach._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 547, i32 27}
!117 = !{ptr @smi_dvbsky_m88ds3103_cfg, !118, !"smi_dvbsky_m88ds3103_cfg", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 512, i32 38}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 595, i32 13}
!121 = !{ptr @smi_dvbsky_m88rs6000_fe_attach._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @smi_dvbsky_m88rs6000_fe_attach._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 603, i32 27}
!125 = !{ptr @smi_dvbsky_m88rs6000_cfg, !126, !"smi_dvbsky_m88rs6000_cfg", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 568, i32 38}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 645, i32 28}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 662, i32 28}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/smipcie/smipcie-main.c", i32 250, i32 3}
!133 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @smi_read_eeprom._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @smi_read_eeprom._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2158333494}
!146 = !{i64 6862945}
!147 = !{i64 6863363}
!148 = !{i64 2158246140}
!149 = !{i64 2158246511}
!150 = !{i64 2158247395}
!151 = !{i64 2158247751}
!152 = !{i64 2158248638}
!153 = !{i64 2158248994}
!154 = !{i64 2158249881}
!155 = !{i64 2158250237}
!156 = !{i64 2158251124}
!157 = !{i64 2158251480}
!158 = !{i64 2158252075}
!159 = !{i64 2158252965}
!160 = !{i64 2158253313}
!161 = !{i64 2158254920}
!162 = !{i64 2158256009}
!163 = !{i64 2158257482}
!164 = !{i64 2158258589}
!165 = !{i64 2158259226}
!166 = !{i64 2158259513}
!167 = !{i64 2158260288}
!168 = !{i64 2158260575}
!169 = !{i64 2158308550}
!170 = !{i64 2158266746}
!171 = !{i64 2158267801}
!172 = !{i64 2158273828}
!173 = !{i64 2158274883}
!174 = !{i64 2158276195}
!175 = !{i64 2158277236}
!176 = !{i64 2158278396}
!177 = !{i64 2158279650}
!178 = !{i64 2158280691}
!179 = !{i64 2158281851}
!180 = !{i64 2149026981, i64 2149026986, i64 2149026999, i64 2149027043, i64 2149027077, i64 2149027098}
!181 = !{i64 2158284378}
!182 = !{i64 2148382689, i64 2148382715, i64 2148382744, i64 2148382778, i64 2148382809, i64 2148382832}
!183 = !{i64 2154555611}
!184 = !{i64 2154556253}
!185 = !{!"auto-init"}
!186 = !{i64 2158288121}
!187 = !{i64 2158291344}
!188 = !{i64 2158297268}
!189 = !{i64 2158300298}
!190 = !{i64 2158285154}
!191 = !{i64 2158318658}
!192 = !{i64 2158319006}
!193 = !{i64 2158319580}
!194 = !{i64 2158320146}
!195 = !{i64 2158320727}
!196 = !{i64 2158321301}
!197 = !{i64 2158321867}
!198 = !{i64 2158285930}
!199 = !{i64 2158322429}
!200 = !{i64 2154556600}
!201 = !{i64 2148385154, i64 2148385180, i64 2148385209, i64 2148385243, i64 2148385274, i64 2148385297}
!202 = !{i64 2158324056}
!203 = !{i64 2158325165}
