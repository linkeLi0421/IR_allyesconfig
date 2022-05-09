; ModuleID = '/llk/IR_all_yes/drivers/media/pci/pluto2/pluto2.c_pt.bc'
source_filename = "../drivers/media/pci/pluto2/pluto2.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tda1004x_config = type { i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.pluto = type { ptr, ptr, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_adapter, %struct.dvb_demux, ptr, %struct.dvb_net, i32, i32, %struct.i2c_algo_bit_data, %struct.i2c_adapter, i32, i32, i32, i32, [1504 x i8], [4096 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.dvb_demux_feed = type { %union.anon.136, %union.anon.137, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.136 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.138], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.138 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.139 }>
%union.anon.139 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_adapter_nr = internal constant [18 x i8] c"pluto2.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype383 = internal constant [42 x i8] c"pluto2.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr384 = internal constant [43 x i8] c"pluto2.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_pluto2__385_783_pluto2_driver_init6 = internal global ptr @pluto2_driver_init, section ".initcall6.init", align 4
@pluto2_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pluto2_id_table, ptr @pluto2_probe, ptr @pluto2_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pluto2_driver_exit = internal global ptr @pluto2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author386 = internal constant [51 x i8] c"pluto2.author=Andreas Oberritter <obi@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description387 = internal constant [33 x i8] c"pluto2.description=Pluto2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file388 = internal constant [44 x i8] c"pluto2.file=drivers/media/pci/pluto2/pluto2\00", section ".modinfo", align 1
@__UNIQUE_ID_license389 = internal constant [19 x i8] c"pluto2.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pluto2\00", [25 x i8] zeroinitializer }, align 32
@pluto2_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 1074, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pluto_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"card has hung or been ejected.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pluto_irq\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/pluto2/pluto2.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pluto_irq._entry_ptr = internal global ptr @pluto_irq._entry, section ".printk_index", align 4
@pluto_irq._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"overflow irq (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@pluto_irq._entry_ptr.8 = internal global ptr @pluto_irq._entry.6, section ".printk_index", align 4
@pluto_dma_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 299, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"resetting TS because of invalid packet counter\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pluto_dma_end\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@pluto_dma_end._entry_ptr = internal global ptr @pluto_dma_end._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pluto_read_rev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 529, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"board revision %d.%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pluto_read_rev\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pluto_read_rev._entry_ptr = internal global ptr @pluto_read_rev._entry, section ".printk_index", align 4
@pluto_read_serial._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 559, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S/N \00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pluto_read_serial\00", [46 x i8] zeroinitializer }, align 32
@pluto_read_serial._entry_ptr = internal global ptr @pluto_read_serial._entry, section ".printk_index", align 4
@pluto_read_serial._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%c\00", [27 x i8] zeroinitializer }, align 32
@pluto_read_serial._entry_ptr.21 = internal global ptr @pluto_read_serial._entry.19, section ".printk_index", align 4
@pluto_read_serial._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@pluto_read_serial._entry_ptr.24 = internal global ptr @pluto_read_serial._entry.22, section ".printk_index", align 4
@pluto_read_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 546, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAC %pM\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pluto_read_mac\00", [17 x i8] zeroinitializer }, align 32
@pluto_read_mac._entry_ptr = internal global ptr @pluto_read_mac._entry, section ".printk_index", align 4
@pluto2_fe_config = internal global { %struct.tda1004x_config, [32 x i8] } { %struct.tda1004x_config { i8 8, i8 1, i8 0, i32 0, i32 1, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @pluto2_request_firmware }, [32 x i8] zeroinitializer }, align 32
@frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not attach frontend\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frontend_init\00", [18 x i8] zeroinitializer }, align 32
@frontend_init._entry_ptr = internal global ptr @frontend_init._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"pluto2_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 776, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 30, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 783, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"pluto2_id_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 763, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 329, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 342, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 299, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 326, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 528, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 559, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 566, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 571, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 546, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"pluto2_fe_config\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 494, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [37 x i8] c"../drivers/media/pci/pluto2/pluto2.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 510, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_adapter_nr384, ptr @__UNIQUE_ID_adapter_nrtype383, ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_description387, ptr @__UNIQUE_ID_file388, ptr @__UNIQUE_ID_license389, ptr @__exitcall_pluto2_driver_exit, ptr @__initcall__kmod_pluto2__385_783_pluto2_driver_init6, ptr @__param_adapter_nr, ptr @frontend_init._entry, ptr @frontend_init._entry_ptr, ptr @pluto2_driver_exit, ptr @pluto_dma_end._entry, ptr @pluto_dma_end._entry_ptr, ptr @pluto_irq._entry, ptr @pluto_irq._entry.6, ptr @pluto_irq._entry_ptr, ptr @pluto_irq._entry_ptr.8, ptr @pluto_read_mac._entry, ptr @pluto_read_mac._entry_ptr, ptr @pluto_read_rev._entry, ptr @pluto_read_rev._entry_ptr, ptr @pluto_read_serial._entry, ptr @pluto_read_serial._entry.19, ptr @pluto_read_serial._entry.22, ptr @pluto_read_serial._entry_ptr, ptr @pluto_read_serial._entry_ptr.21, ptr @pluto_read_serial._entry_ptr.24, ptr @pluto2_driver, ptr @adapter_nr, ptr @.str, ptr @pluto2_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @pluto2_fe_config, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto2_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto2_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto_irq._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto_dma_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto_read_rev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto_read_serial._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto_read_serial._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto_read_serial._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto_read_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pluto2_fe_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pluto2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pluto2_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pluto2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @pluto2_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pluto2_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 9120, i32 noundef 3520, i32 noundef 2) #10
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call1.i.i.i, align 4096
  %call2 = tail call i32 @pci_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.err_kfree_crit_edge, label %if.end4

if.end.err_kfree_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 108, i32 noundef 32768) #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call6 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.err_pci_disable_device_crit_edge, label %if.end9

if.end4.err_pci_disable_device_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pci_disable_device

if.end9:                                          ; preds = %if.end4
  tail call void @pci_set_master(ptr noundef %pdev) #7
  %call10 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.err_pci_disable_device_crit_edge, label %if.end13

if.end9.err_pci_disable_device_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pci_disable_device

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 64) #7
  %io_mem = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %io_mem to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call14, ptr %io_mem, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end13.err_pci_release_regions_crit_edge, label %if.end18

if.end13.err_pci_release_regions_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pci_release_regions

if.end18:                                         ; preds = %if.end13
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %4, ptr noundef nonnull @pluto_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20 = icmp slt i32 %call.i, 0
  br i1 %cmp20, label %if.end18.err_pci_iounmap_crit_edge, label %if.end22

if.end18.err_pci_iounmap_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pci_iounmap

if.end22:                                         ; preds = %if.end18
  %5 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %6, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #7, !srcloc !84
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and.i.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end22.pluto_reset_frontend.exit.i_crit_edge, label %if.then.i.i

if.end22.pluto_reset_frontend.exit.i_crit_edge:   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %pluto_reset_frontend.exit.i

if.then.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = and i32 %8, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %and1.i.i) #7
  %10 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_mem, align 4
  %arrayidx.i12.i.i = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i.i, i32 %9) #7, !srcloc !87
  br label %pluto_reset_frontend.exit.i

pluto_reset_frontend.exit.i:                      ; preds = %if.then.i.i, %if.end22.pluto_reset_frontend.exit.i_crit_edge
  %val.0.i.i = phi i32 [ %and1.i.i, %if.then.i.i ], [ %8, %if.end22.pluto_reset_frontend.exit.i_crit_edge ]
  %or.i.i = or i32 %val.0.i.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %13 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_mem, align 4
  %arrayidx.i14.i.i = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i14.i.i, i32 %12) #7, !srcloc !87
  %15 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i = getelementptr i8, ptr %16, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %18 = or i32 %17, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_mem, align 4
  %arrayidx3.i.i = getelementptr i8, ptr %20, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i.i, i32 %18) #7, !srcloc !87
  %21 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_mem, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %24 = and i32 %23, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_mem, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !87
  %27 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call1.i.i.i, align 4096
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %dma_buf.i.i = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %dma_buf.i.i) #7
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %pluto_reset_frontend.exit.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.pluto_dma_map.exit.i_crit_edge, label %if.then.i.i.i, !prof !90

land.rhs.i.i.i.pluto_dma_map.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pluto_dma_map.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i.i) #7
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %32, %if.end.i.i.i.i ], [ %30, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #7
  br label %pluto_dma_map.exit.i

if.end39.i.i.i:                                   ; preds = %pluto_reset_frontend.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %dma_buf.i.i, i32 noundef 1504) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %dma_buf.i.i to i32
  %sub.i.i.i = add i32 %34, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %33, i32 %shr.i.i.i
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef 3520, i32 noundef 1504, i32 noundef 2, i32 noundef 0) #7
  br label %pluto_dma_map.exit.i

pluto_dma_map.exit.i:                             ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.pluto_dma_map.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.pluto_dma_map.exit.i_crit_edge ]
  %dma_addr.i.i = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 16
  %35 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i.i, ptr %dma_addr.i.i, align 4
  %36 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call1.i.i.i, align 4096
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev2.i.i, i32 noundef %retval.0.i.i.i) #7
  %38 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_addr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %41 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i7.i = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i7.i, i32 %40) #7, !srcloc !87
  %43 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i9.i = getelementptr i8, ptr %44, i32 36
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i9.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %46 = and i32 %45, -2138112513
  %47 = or i32 %46, 70320128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i.i.i = getelementptr i8, ptr %49, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i.i, i32 %47) #7, !srcloc !87
  %50 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i11.i = getelementptr i8, ptr %51, i32 36
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i11.i) #7, !srcloc !84
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and.i12.i = and i32 %53, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %tobool.not.i13.i, label %pluto_dma_map.exit.i.pluto_hw_init.exit_crit_edge, label %if.then.i17.i

pluto_dma_map.exit.i.pluto_hw_init.exit_crit_edge: ; preds = %pluto_dma_map.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pluto_hw_init.exit

if.then.i17.i:                                    ; preds = %pluto_dma_map.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i14.i = and i32 %53, -32769
  %and.i.i15.i = and i32 %53, -32896
  %or.i.i.i = or i32 %and.i.i15.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  %55 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i.i16.i = getelementptr i8, ptr %56, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i16.i, i32 %54) #7, !srcloc !87
  br label %pluto_hw_init.exit

pluto_hw_init.exit:                               ; preds = %if.then.i17.i, %pluto_dma_map.exit.i.pluto_hw_init.exit_crit_edge
  %val.0.i18.i = phi i32 [ %and1.i14.i, %if.then.i17.i ], [ %53, %pluto_dma_map.exit.i.pluto_hw_init.exit_crit_edge ]
  %or.i19.i = and i32 %val.0.i18.i, -32896
  %or.i12.i.i = or i32 %or.i19.i, 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i12.i.i) #7
  %58 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i14.i.i = getelementptr i8, ptr %59, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i14.i.i, i32 %57) #7, !srcloc !87
  %i2c_adap = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 12
  %driver_data.i.i201 = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 12, i32 9, i32 8
  %60 = ptrtoint ptr %driver_data.i.i201 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call1.i.i.i, ptr %driver_data.i.i201, align 4
  %name = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 12, i32 12
  %call28 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #7
  %61 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %i2c_adap, align 32
  %parent = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 12, i32 9, i32 1
  %62 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dev, ptr %parent, align 16
  %i2c_bit = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 11
  %algo_data = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 12, i32 3
  %63 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %i2c_bit, ptr %algo_data, align 4
  %64 = ptrtoint ptr %i2c_bit to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call1.i.i.i, ptr %i2c_bit, align 4
  %setsda = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 11, i32 1
  %65 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @pluto_setsda, ptr %setsda, align 8
  %setscl = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 11, i32 2
  %66 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @pluto_setscl, ptr %setscl, align 4
  %getsda = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 11, i32 3
  %67 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @pluto_getsda, ptr %getsda, align 64
  %getscl = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 11, i32 4
  %68 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @pluto_getscl, ptr %getscl, align 4
  %udelay = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 11, i32 7
  %69 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 10, ptr %udelay, align 16
  %timeout = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 11, i32 8
  %70 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 10, ptr %timeout, align 4
  %71 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_mem, align 4
  %arrayidx.i3.i = getelementptr i8, ptr %72, i32 60
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i3.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %74 = or i32 %73, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_mem, align 4
  %arrayidx3.i.i202 = getelementptr i8, ptr %76, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i.i202, i32 %74) #7, !srcloc !87
  %77 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %io_mem, align 4
  %arrayidx.i22.i = getelementptr i8, ptr %78, i32 60
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i22.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %80 = or i32 %79, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %81 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io_mem, align 4
  %arrayidx3.i.i203 = getelementptr i8, ptr %82, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i.i203, i32 %80) #7, !srcloc !87
  %i2cbug.i = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 13
  %83 = ptrtoint ptr %i2cbug.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i2cbug.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i = icmp eq i32 %84, 0
  %. = zext i1 %cmp.i to i32
  %85 = ptrtoint ptr %i2cbug.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %., ptr %i2cbug.i, align 16
  %call42 = tail call i32 @i2c_bit_add_bus(ptr noundef %i2c_adap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %pluto_hw_init.exit.err_pluto_hw_exit_crit_edge, label %if.end45

pluto_hw_init.exit.err_pluto_hw_exit_crit_edge:   ; preds = %pluto_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pluto_hw_exit

if.end45:                                         ; preds = %pluto_hw_init.exit
  %dvb_adapter46 = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 5
  %call48 = tail call i32 @dvb_register_adapter(ptr noundef %dvb_adapter46, ptr noundef nonnull @.str, ptr noundef null, ptr noundef %dev, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end45.err_i2c_del_adapter_crit_edge, label %if.end51

if.end45.err_i2c_del_adapter_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_i2c_del_adapter

if.end51:                                         ; preds = %if.end45
  %86 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i204 = getelementptr i8, ptr %87, i32 40
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i204) #7, !srcloc !84
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %90 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call1.i.i.i, align 4096
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %shr.i = lshr i32 %89, 12
  %and1.i = and i32 %shr.i, 15
  %and.i = lshr i32 %89, 4
  %and3.i = and i32 %and.i, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %and1.i, i32 noundef %and3.i) #11
  %92 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call1.i.i.i, align 4096
  %call.i205 = tail call ptr @pci_iomap(ptr noundef %93, i32 noundef 1, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i205, null
  br i1 %tobool.not.i, label %if.end51.pluto_read_serial.exit_crit_edge, label %do.end.i

if.end51.pluto_read_serial.exit_crit_edge:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %pluto_read_serial.exit

do.end.i:                                         ; preds = %if.end51
  %dev.i206 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i206, ptr noundef nonnull @.str.17) #11
  br label %for.body.i

for.body.i:                                       ; preds = %do.end12.3.i.for.body.i_crit_edge, %do.end.i
  %i.05.i = phi i32 [ 224, %do.end.i ], [ %add17.i, %do.end12.3.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call.i205, i32 %i.05.i
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #7, !srcloc !84
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %and.i207 = and i32 %95, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i207)
  %cmp7.i = icmp eq i32 %and.i207, 255
  br i1 %cmp7.i, label %for.body.i.do.end21.i_crit_edge, label %do.end12.i

for.body.i.do.end21.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

do.end12.i:                                       ; preds = %for.body.i
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and.i207) #11
  %shr.i208 = lshr i32 %95, 8
  %and.1.i = and i32 %shr.i208, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.1.i)
  %cmp7.1.i = icmp eq i32 %and.1.i, 255
  br i1 %cmp7.1.i, label %do.end12.i.do.end21.i_crit_edge, label %do.end12.1.i

do.end12.i.do.end21.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

do.end12.1.i:                                     ; preds = %do.end12.i
  %call15.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and.1.i) #11
  %shr.1.i = lshr i32 %95, 16
  %and.2.i = and i32 %shr.1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.2.i)
  %cmp7.2.i = icmp eq i32 %and.2.i, 255
  br i1 %cmp7.2.i, label %do.end12.1.i.do.end21.i_crit_edge, label %do.end12.2.i

do.end12.1.i.do.end21.i_crit_edge:                ; preds = %do.end12.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

do.end12.2.i:                                     ; preds = %do.end12.1.i
  %call15.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and.2.i) #11
  %shr.2.i = lshr i32 %95, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr.2.i)
  %cmp7.3.i = icmp eq i32 %shr.2.i, 255
  br i1 %cmp7.3.i, label %do.end12.2.i.do.end21.i_crit_edge, label %do.end12.3.i

do.end12.2.i.do.end21.i_crit_edge:                ; preds = %do.end12.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

do.end12.3.i:                                     ; preds = %do.end12.2.i
  %call15.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %shr.2.i) #11
  %add17.i = add nuw nsw i32 %i.05.i, 4
  %cmp.i209 = icmp ult i32 %i.05.i, 252
  br i1 %cmp.i209, label %do.end12.3.i.for.body.i_crit_edge, label %do.end12.3.i.do.end21.i_crit_edge

do.end12.3.i.do.end21.i_crit_edge:                ; preds = %do.end12.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

do.end12.3.i.for.body.i_crit_edge:                ; preds = %do.end12.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end21.i:                                       ; preds = %do.end12.3.i.do.end21.i_crit_edge, %do.end12.2.i.do.end21.i_crit_edge, %do.end12.1.i.do.end21.i_crit_edge, %do.end12.i.do.end21.i_crit_edge, %for.body.i.do.end21.i_crit_edge
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  tail call void @pci_iounmap(ptr noundef %93, ptr noundef nonnull %call.i205) #7
  br label %pluto_read_serial.exit

pluto_read_serial.exit:                           ; preds = %do.end21.i, %if.end51.pluto_read_serial.exit_crit_edge
  %proposed_mac = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 5, i32 4
  %96 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %io_mem, align 4
  %arrayidx.i.i211 = getelementptr i8, ptr %97, i32 44
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i211) #7, !srcloc !84
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %shr.i212 = lshr i32 %99, 8
  %conv.i = trunc i32 %shr.i212 to i8
  %100 = ptrtoint ptr %proposed_mac to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv.i, ptr %proposed_mac, align 32
  %conv3.i = trunc i32 %99 to i8
  %arrayidx4.i = getelementptr %struct.pluto, ptr %call1.i.i.i, i32 0, i32 5, i32 4, i32 1
  %101 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %102 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %io_mem, align 4
  %arrayidx.i38.i = getelementptr i8, ptr %103, i32 48
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i38.i) #7, !srcloc !84
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %shr6.i = lshr i32 %105, 8
  %conv8.i = trunc i32 %shr6.i to i8
  %arrayidx9.i = getelementptr %struct.pluto, ptr %call1.i.i.i, i32 0, i32 5, i32 4, i32 2
  %106 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv8.i, ptr %arrayidx9.i, align 2
  %conv12.i = trunc i32 %105 to i8
  %arrayidx13.i = getelementptr %struct.pluto, ptr %call1.i.i.i, i32 0, i32 5, i32 4, i32 3
  %107 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv12.i, ptr %arrayidx13.i, align 1
  %108 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %io_mem, align 4
  %arrayidx.i40.i = getelementptr i8, ptr %109, i32 52
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i40.i) #7, !srcloc !84
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %shr15.i = lshr i32 %111, 8
  %conv17.i = trunc i32 %shr15.i to i8
  %arrayidx18.i = getelementptr %struct.pluto, ptr %call1.i.i.i, i32 0, i32 5, i32 4, i32 4
  %112 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv17.i, ptr %arrayidx18.i, align 4
  %conv21.i = trunc i32 %111 to i8
  %arrayidx22.i = getelementptr %struct.pluto, ptr %call1.i.i.i, i32 0, i32 5, i32 4, i32 5
  %113 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv21.i, ptr %arrayidx22.i, align 1
  %114 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call1.i.i.i, align 4096
  %dev.i213 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i213, ptr noundef nonnull @.str.25, ptr noundef %proposed_mac) #11
  %demux = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 6
  %filternum = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 6, i32 2
  %116 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 256, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 6, i32 3
  %117 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 256, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 6, i32 4
  %118 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @pluto_start_feed, ptr %start_feed, align 16
  %stop_feed = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 6, i32 5
  %119 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @pluto_stop_feed, ptr %stop_feed, align 4
  %120 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 13, ptr %demux, align 256
  %call56 = tail call i32 @dvb_dmx_init(ptr noundef %demux) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %pluto_read_serial.exit.err_dvb_unregister_adapter_crit_edge, label %if.end59

pluto_read_serial.exit.err_dvb_unregister_adapter_crit_edge: ; preds = %pluto_read_serial.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_dvb_unregister_adapter

if.end59:                                         ; preds = %pluto_read_serial.exit
  %hw_frontend = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 2
  %source = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 2, i32 1
  %121 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %source, align 16
  %mem_frontend = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 3
  %source61 = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 3, i32 1
  %122 = ptrtoint ptr %source61 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %source61, align 4
  %dmxdev = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 4
  %filternum62 = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 4, i32 4
  %123 = ptrtoint ptr %filternum62 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 8, ptr %filternum62, align 16
  %demux64 = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 4, i32 3
  %124 = ptrtoint ptr %demux64 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %demux, ptr %demux64, align 4
  %call66 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %dvb_adapter46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end59.err_dvb_dmx_release_crit_edge, label %if.end69

if.end59.err_dvb_dmx_release_crit_edge:           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_dvb_dmx_release

if.end69:                                         ; preds = %if.end59
  %add_frontend = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 6, i32 0, i32 10
  %125 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add_frontend, align 8
  %call71 = tail call i32 %126(ptr noundef %demux, ptr noundef %hw_frontend) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end69.err_dvb_dmxdev_release_crit_edge, label %if.end74

if.end69.err_dvb_dmxdev_release_crit_edge:        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_dvb_dmxdev_release

if.end74:                                         ; preds = %if.end69
  %127 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add_frontend, align 8
  %call77 = tail call i32 %128(ptr noundef %demux, ptr noundef %mem_frontend) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.end74.err_remove_hw_frontend_crit_edge, label %if.end80

if.end74.err_remove_hw_frontend_crit_edge:        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_remove_hw_frontend

if.end80:                                         ; preds = %if.end74
  %connect_frontend = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 6, i32 0, i32 13
  %129 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %connect_frontend, align 4
  %call82 = tail call i32 %130(ptr noundef %demux, ptr noundef %hw_frontend) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end80.err_remove_mem_frontend_crit_edge, label %if.end85

if.end80.err_remove_mem_frontend_crit_edge:       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_remove_mem_frontend

if.end85:                                         ; preds = %if.end80
  %call86 = tail call fastcc i32 @frontend_init(ptr noundef %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %err_disconnect_frontend, label %if.end89

if.end89:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %dvbnet = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 8
  %call90 = tail call i32 @dvb_net_init(ptr noundef %dvb_adapter46, ptr noundef %dvbnet, ptr noundef %demux) #7
  br label %out

out:                                              ; preds = %err_kfree, %if.end89, %entry.out_crit_edge
  %ret.0 = phi i32 [ %ret.12, %err_kfree ], [ %call86, %if.end89 ], [ -12, %entry.out_crit_edge ]
  ret i32 %ret.0

err_disconnect_frontend:                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %disconnect_frontend = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 6, i32 0, i32 14
  %131 = ptrtoint ptr %disconnect_frontend to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %disconnect_frontend, align 8
  %call91 = tail call i32 %132(ptr noundef %demux) #7
  br label %err_remove_mem_frontend

err_remove_mem_frontend:                          ; preds = %err_disconnect_frontend, %if.end80.err_remove_mem_frontend_crit_edge
  %ret.1 = phi i32 [ %call82, %if.end80.err_remove_mem_frontend_crit_edge ], [ %call86, %err_disconnect_frontend ]
  %remove_frontend = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 6, i32 0, i32 11
  %133 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %remove_frontend, align 4
  %call93 = tail call i32 %134(ptr noundef %demux, ptr noundef %mem_frontend) #7
  br label %err_remove_hw_frontend

err_remove_hw_frontend:                           ; preds = %err_remove_mem_frontend, %if.end74.err_remove_hw_frontend_crit_edge
  %ret.2 = phi i32 [ %call77, %if.end74.err_remove_hw_frontend_crit_edge ], [ %ret.1, %err_remove_mem_frontend ]
  %remove_frontend94 = getelementptr inbounds %struct.pluto, ptr %call1.i.i.i, i32 0, i32 6, i32 0, i32 11
  %135 = ptrtoint ptr %remove_frontend94 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %remove_frontend94, align 4
  %call96 = tail call i32 %136(ptr noundef %demux, ptr noundef %hw_frontend) #7
  br label %err_dvb_dmxdev_release

err_dvb_dmxdev_release:                           ; preds = %err_remove_hw_frontend, %if.end69.err_dvb_dmxdev_release_crit_edge
  %ret.3 = phi i32 [ %call71, %if.end69.err_dvb_dmxdev_release_crit_edge ], [ %ret.2, %err_remove_hw_frontend ]
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #7
  br label %err_dvb_dmx_release

err_dvb_dmx_release:                              ; preds = %err_dvb_dmxdev_release, %if.end59.err_dvb_dmx_release_crit_edge
  %ret.4 = phi i32 [ %call66, %if.end59.err_dvb_dmx_release_crit_edge ], [ %ret.3, %err_dvb_dmxdev_release ]
  tail call void @dvb_dmx_release(ptr noundef %demux) #7
  br label %err_dvb_unregister_adapter

err_dvb_unregister_adapter:                       ; preds = %err_dvb_dmx_release, %pluto_read_serial.exit.err_dvb_unregister_adapter_crit_edge
  %ret.5 = phi i32 [ %call56, %pluto_read_serial.exit.err_dvb_unregister_adapter_crit_edge ], [ %ret.4, %err_dvb_dmx_release ]
  %call98 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter46) #7
  br label %err_i2c_del_adapter

err_i2c_del_adapter:                              ; preds = %err_dvb_unregister_adapter, %if.end45.err_i2c_del_adapter_crit_edge
  %ret.6 = phi i32 [ %call48, %if.end45.err_i2c_del_adapter_crit_edge ], [ %ret.5, %err_dvb_unregister_adapter ]
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #7
  br label %err_pluto_hw_exit

err_pluto_hw_exit:                                ; preds = %err_i2c_del_adapter, %pluto_hw_init.exit.err_pluto_hw_exit_crit_edge
  %ret.7 = phi i32 [ %call42, %pluto_hw_init.exit.err_pluto_hw_exit_crit_edge ], [ %ret.6, %err_i2c_del_adapter ]
  tail call fastcc void @pluto_hw_exit(ptr noundef %call1.i.i.i)
  %137 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %irq, align 4
  %call101 = tail call ptr @free_irq(i32 noundef %138, ptr noundef %call1.i.i.i) #7
  br label %err_pci_iounmap

err_pci_iounmap:                                  ; preds = %err_pluto_hw_exit, %if.end18.err_pci_iounmap_crit_edge
  %ret.9 = phi i32 [ %call.i, %if.end18.err_pci_iounmap_crit_edge ], [ %ret.7, %err_pluto_hw_exit ]
  %139 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %io_mem, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %140) #7
  br label %err_pci_release_regions

err_pci_release_regions:                          ; preds = %err_pci_iounmap, %if.end13.err_pci_release_regions_crit_edge
  %ret.10 = phi i32 [ %ret.9, %err_pci_iounmap ], [ -5, %if.end13.err_pci_release_regions_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  br label %err_pci_disable_device

err_pci_disable_device:                           ; preds = %err_pci_release_regions, %if.end9.err_pci_disable_device_crit_edge, %if.end4.err_pci_disable_device_crit_edge
  %ret.11 = phi i32 [ %call6, %if.end4.err_pci_disable_device_crit_edge ], [ %call10, %if.end9.err_pci_disable_device_crit_edge ], [ %ret.10, %err_pci_release_regions ]
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  br label %err_kfree

err_kfree:                                        ; preds = %err_pci_disable_device, %if.end.err_kfree_crit_edge
  %ret.12 = phi i32 [ %call2, %if.end.err_kfree_crit_edge ], [ %ret.11, %err_pci_disable_device ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #7
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pluto2_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %demux = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 6
  %close = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 6, i32 0, i32 4
  %2 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %close, align 4
  %call3 = tail call i32 %3(ptr noundef %demux) #7
  %dvbnet = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 8
  tail call void @dvb_net_release(ptr noundef %dvbnet) #7
  %fe = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dvb_adapter1 = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 5
  %disconnect_frontend = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 6, i32 0, i32 14
  %6 = ptrtoint ptr %disconnect_frontend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disconnect_frontend, align 4
  %call6 = tail call i32 %7(ptr noundef %demux) #7
  %remove_frontend = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 6, i32 0, i32 11
  %8 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remove_frontend, align 4
  %mem_frontend = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 3
  %call7 = tail call i32 %9(ptr noundef %demux, ptr noundef %mem_frontend) #7
  %10 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remove_frontend, align 4
  %hw_frontend = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 2
  %call9 = tail call i32 %11(ptr noundef %demux, ptr noundef %hw_frontend) #7
  %dmxdev = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 4
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #7
  tail call void @dvb_dmx_release(ptr noundef %demux) #7
  %call10 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adapter1) #7
  %i2c_adap = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 12
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #7
  tail call fastcc void @pluto_hw_exit(ptr noundef %1)
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call11 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %1) #7
  %io_mem = getelementptr inbounds %struct.pluto, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %io_mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_mem, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %15) #7
  tail call void @pci_release_regions(ptr noundef %pdev) #7
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pluto_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mem.i = getelementptr inbounds %struct.pluto, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #7, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and = and i32 %3, 67584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %dead = getelementptr inbounds %struct.pluto, ptr %dev_id, i32 0, i32 15
  %4 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dead, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %do.end, label %if.then1.if.end4_crit_edge

if.then1.if.end4_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then1.if.end4_crit_edge
  %8 = ptrtoint ptr %dead to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dead, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  %shr = lshr i32 %3, 24
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %dma_addr.i = getelementptr inbounds %struct.pluto, ptr %dev_id, i32 0, i32 16
  %11 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i, i32 noundef %12, i32 noundef 1504, i32 noundef 2) #7
  %13 = add nsw i32 %shr, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %13)
  %14 = icmp ult i32 %13, -8
  br i1 %14, label %if.then9.while.cond.i_crit_edge, label %if.then9.pluto_dma_end.exit_crit_edge

if.then9.pluto_dma_end.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %pluto_dma_end.exit

if.then9.while.cond.i_crit_edge:                  ; preds = %if.then9
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then9.while.cond.i_crit_edge
  %i.0.i = phi i32 [ %add.i, %while.cond.i.while.cond.i_crit_edge ], [ 0, %if.then9.while.cond.i_crit_edge ]
  %arrayidx.i52 = getelementptr %struct.pluto, ptr %dev_id, i32 0, i32 17, i32 %i.0.i
  %15 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i52, align 1
  %cmp2.i = icmp eq i8 %16, 71
  %add.i = add i32 %i.0.i, 188
  br i1 %cmp2.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %div.i = udiv i32 %i.0.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp4.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp4.i, label %if.then6.i, label %while.end.i.pluto_dma_end.exit_crit_edge

while.end.i.pluto_dma_end.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pluto_dma_end.exit

if.then6.i:                                       ; preds = %while.end.i
  %17 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %18, i32 36
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #7, !srcloc !84
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and.i.i = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then6.i.pluto_reset_ts.exit.i_crit_edge, label %if.then.i.i

if.then6.i.pluto_reset_ts.exit.i_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pluto_reset_ts.exit.i

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = and i32 %20, -32769
  %and.i.i.i = and i32 %20, -32896
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  %22 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i.i.i.i = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i.i, i32 %21) #7, !srcloc !87
  br label %pluto_reset_ts.exit.i

pluto_reset_ts.exit.i:                            ; preds = %if.then.i.i, %if.then6.i.pluto_reset_ts.exit.i_crit_edge
  %val.0.i.i = phi i32 [ %and1.i.i, %if.then.i.i ], [ %20, %if.then6.i.pluto_reset_ts.exit.i_crit_edge ]
  %or.i.i = and i32 %val.0.i.i, -32896
  %or.i12.i.i = or i32 %or.i.i, 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i12.i.i) #7
  %25 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i.i14.i.i = getelementptr i8, ptr %26, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i14.i.i, i32 %24) #7, !srcloc !87
  %27 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_id, align 8
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev8.i, ptr noundef nonnull @.str.9) #11
  br label %pluto_dma_end.exit

pluto_dma_end.exit:                               ; preds = %pluto_reset_ts.exit.i, %while.end.i.pluto_dma_end.exit_crit_edge, %if.then9.pluto_dma_end.exit_crit_edge
  %nbpackets.addr.0.i = phi i32 [ %shr, %if.then9.pluto_dma_end.exit_crit_edge ], [ 0, %pluto_reset_ts.exit.i ], [ %div.i, %while.end.i.pluto_dma_end.exit_crit_edge ]
  %demux.i = getelementptr inbounds %struct.pluto, ptr %dev_id, i32 0, i32 6
  %dma_buf10.i = getelementptr inbounds %struct.pluto, ptr %dev_id, i32 0, i32 17
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %demux.i, ptr noundef %dma_buf10.i, i32 noundef %nbpackets.addr.0.i) #7
  %mul.i = mul nuw i32 %nbpackets.addr.0.i, 188
  %29 = call ptr @memset(ptr %dma_buf10.i, i32 0, i32 %mul.i)
  %30 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %33 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i.i33.i = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i33.i, i32 %32) #7, !srcloc !87
  %35 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_id, align 8
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev14.i, i32 noundef %38, i32 noundef 1504, i32 noundef 2) #7
  %and11 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %pluto_dma_end.exit.if.end14_crit_edge, label %if.then13

pluto_dma_end.exit.if.end14_crit_edge:            ; preds = %pluto_dma_end.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %pluto_dma_end.exit
  call void @__sanitizer_cov_trace_pc() #9
  %overflow = getelementptr inbounds %struct.pluto, ptr %dev_id, i32 0, i32 14
  %39 = ptrtoint ptr %overflow to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %overflow, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %overflow, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %pluto_dma_end.exit.if.end14_crit_edge
  %overflow15 = getelementptr inbounds %struct.pluto, ptr %dev_id, i32 0, i32 14
  %41 = ptrtoint ptr %overflow15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %overflow15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool16.not = icmp eq i32 %42, 0
  br i1 %tobool16.not, label %if.end14.if.end32_crit_edge, label %do.end20

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_id, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.7, i32 noundef %42) #11
  tail call fastcc void @pluto_reset_ts(ptr noundef %dev_id, i32 noundef 1)
  %45 = ptrtoint ptr %overflow15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %overflow15, align 4
  br label %if.end32

if.else:                                          ; preds = %if.end6
  %and26 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else.if.end32_crit_edge, label %if.then28

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %overflow29 = getelementptr inbounds %struct.pluto, ptr %dev_id, i32 0, i32 14
  %46 = ptrtoint ptr %overflow29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %overflow29, align 4
  %inc30 = add i32 %47, 1
  store i32 %inc30, ptr %overflow29, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.else.if.end32_crit_edge, %do.end20, %if.end14.if.end32_crit_edge
  %or = and i32 %3, -384
  %or.i = or i32 %or, 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %49 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %50, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %48) #7, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 1, %if.end32 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pluto_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %io_mem.i2 = getelementptr inbounds %struct.pluto, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %io_mem.i2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_mem.i2, align 4
  %arrayidx.i3 = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = or i32 %2, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %io_mem.i2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_mem.i2, align 4
  %arrayidx3.i = getelementptr i8, ptr %5, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i, i32 %3) #7, !srcloc !87
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = and i32 %2, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %io_mem.i2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_mem.i2, align 4
  %arrayidx3.i5 = getelementptr i8, ptr %8, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i5, i32 %6) #7, !srcloc !87
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pluto_setscl(ptr nocapture noundef %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %io_mem.i21 = getelementptr inbounds %struct.pluto, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %io_mem.i21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_mem.i21, align 4
  %arrayidx.i22 = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = or i32 %2, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %io_mem.i21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_mem.i21, align 4
  %arrayidx3.i = getelementptr i8, ptr %5, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i, i32 %3) #7, !srcloc !87
  %i2cbug = getelementptr inbounds %struct.pluto, ptr %data, i32 0, i32 13
  %6 = ptrtoint ptr %i2cbug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2cbug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.else:                                          ; preds = %entry
  %8 = and i32 %2, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %io_mem.i21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_mem.i21, align 4
  %arrayidx3.i24 = getelementptr i8, ptr %10, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i24, i32 %8) #7, !srcloc !87
  %i2cbug7 = getelementptr inbounds %struct.pluto, ptr %data, i32 0, i32 13
  %11 = ptrtoint ptr %i2cbug7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2cbug7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp8 = icmp eq i32 %12, 1
  br i1 %cmp8, label %if.then9, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %i2cbug to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %i2cbug, align 8
  br label %if.end12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %io_mem.i21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_mem.i21, align 4
  %arrayidx.i3.i = getelementptr i8, ptr %15, i32 60
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i3.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %17 = or i32 %16, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %io_mem.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_mem.i21, align 4
  %arrayidx3.i.i = getelementptr i8, ptr %19, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i.i, i32 %17) #7, !srcloc !87
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %i2cbug11 = getelementptr inbounds %struct.pluto, ptr %data, i32 0, i32 13
  %20 = ptrtoint ptr %i2cbug11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %i2cbug11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pluto_getsda(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mem.i = getelementptr inbounds %struct.pluto, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #7, !srcloc !84
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and = and i32 %3, 64
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pluto_getscl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mem.i = getelementptr inbounds %struct.pluto, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #7, !srcloc !84
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and = and i32 %3, 128
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pluto_start_feed(ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux.i, align 4
  %users = getelementptr i8, ptr %1, i32 816
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %io_mem.i = getelementptr i8, ptr %1, i32 -1276
  %4 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_mem.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %7 = and i32 %6, -2097409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_mem.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !87
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %f, i32 0, i32 6
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %11)
  %cmp1 = icmp ult i16 %11, 8192
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %f, i32 0, i32 16
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp3 = icmp ult i32 %13, 8
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %13, 2
  %14 = or i16 %11, -32768
  %or = zext i16 %14 to i32
  %io_mem.i23 = getelementptr i8, ptr %1, i32 -1276
  %15 = ptrtoint ptr %io_mem.i23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_mem.i23, align 4
  %arrayidx.i = getelementptr i8, ptr %16, i32 %shl
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %18 = and i32 %17, 6356991
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %or.i = or i32 %19, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %21 = ptrtoint ptr %io_mem.i23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_mem.i23, align 4
  %arrayidx3.i = getelementptr i8, ptr %22, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i, i32 %20) #7, !srcloc !87
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %full_ts_users = getelementptr i8, ptr %1, i32 812
  %23 = ptrtoint ptr %full_ts_users to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %full_ts_users, align 4
  %inc9 = add i32 %24, 1
  store i32 %inc9, ptr %full_ts_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp10 = icmp eq i32 %24, 0
  br i1 %cmp10, label %if.then12, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %io_mem.i25 = getelementptr i8, ptr %1, i32 -1276
  %25 = ptrtoint ptr %io_mem.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_mem.i25, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %28 = or i32 %27, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %io_mem.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_mem.i25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !87
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else.if.end14_crit_edge, %if.then5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pluto_stop_feed(ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux.i, align 4
  %users = getelementptr i8, ptr %1, i32 816
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %io_mem.i = getelementptr i8, ptr %1, i32 -1276
  %4 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_mem.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %7 = or i32 %6, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_mem.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !87
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %f, i32 0, i32 6
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %11)
  %cmp1 = icmp ult i16 %11, 8192
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %f, i32 0, i32 16
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp3 = icmp ult i32 %13, 8
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %13, 2
  %io_mem.i20 = getelementptr i8, ptr %1, i32 -1276
  %14 = ptrtoint ptr %io_mem.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_mem.i20, align 4
  %arrayidx.i = getelementptr i8, ptr %15, i32 %shl
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %17 = and i32 %16, 6356991
  %18 = or i32 %17, -14745600
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %io_mem.i20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_mem.i20, align 4
  %arrayidx3.i = getelementptr i8, ptr %20, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i, i32 %18) #7, !srcloc !87
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %full_ts_users = getelementptr i8, ptr %1, i32 812
  %21 = ptrtoint ptr %full_ts_users to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %full_ts_users, align 4
  %dec7 = add i32 %22, -1
  store i32 %dec7, ptr %full_ts_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec7)
  %cmp8 = icmp eq i32 %dec7, 0
  br i1 %cmp8, label %if.then10, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %io_mem.i23 = getelementptr i8, ptr %1, i32 -1276
  %23 = ptrtoint ptr %io_mem.i23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_mem.i23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %26 = and i32 %25, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %io_mem.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_mem.i23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !87
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else.if.end12_crit_edge, %if.then5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @frontend_init(ptr noundef %pluto) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.pluto, ptr %pluto, i32 0, i32 12
  %call = tail call ptr @tda10046_attach(ptr noundef nonnull @pluto2_fe_config, ptr noundef %i2c_adap) #7
  %fe = getelementptr inbounds %struct.pluto, ptr %pluto, i32 0, i32 7
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %fe, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %pluto to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pluto, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %call, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @lg_tdtpe001p_tuner_set_params, ptr %set_params, align 4
  %dvb_adapter = getelementptr inbounds %struct.pluto, ptr %pluto, i32 0, i32 5
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe, align 8
  %call4 = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adapter, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %6 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe, align 8
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.then5.cleanup_crit_edge, label %if.then9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call4, %if.then9 ], [ %call4, %if.then5.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
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
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pluto_hw_exit(ptr nocapture noundef readonly %pluto) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mem.i.i = getelementptr inbounds %struct.pluto, ptr %pluto, i32 0, i32 1
  %0 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %3 = and i32 %2, -2138112513
  %4 = or i32 %3, 74514944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i, i32 %4) #7, !srcloc !87
  %7 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx.i.i6 = getelementptr i8, ptr %8, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i6) #7, !srcloc !84
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and.i = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.pluto_reset_ts.exit_crit_edge, label %if.then.i

entry.pluto_reset_ts.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pluto_reset_ts.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i32 %10, -32896
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %12 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx.i.i.i7 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i7, i32 %11) #7, !srcloc !87
  br label %pluto_reset_ts.exit

pluto_reset_ts.exit:                              ; preds = %if.then.i, %entry.pluto_reset_ts.exit_crit_edge
  %14 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %15, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %17 = and i32 %16, -184549377
  %18 = or i32 %17, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %20, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i, i32 %18) #7, !srcloc !87
  %21 = ptrtoint ptr %pluto to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pluto, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %dma_addr.i = getelementptr inbounds %struct.pluto, ptr %pluto, i32 0, i32 16
  %23 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %24, i32 noundef 1504, i32 noundef 2, i32 noundef 0) #7
  %25 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx.i.i10 = getelementptr i8, ptr %26, i32 40
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i10) #7, !srcloc !84
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and.i11 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %pluto_reset_ts.exit.pluto_reset_frontend.exit_crit_edge, label %if.then.i14

pluto_reset_ts.exit.pluto_reset_frontend.exit_crit_edge: ; preds = %pluto_reset_ts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pluto_reset_frontend.exit

if.then.i14:                                      ; preds = %pluto_reset_ts.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i13 = and i32 %28, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %and1.i13) #7
  %30 = ptrtoint ptr %io_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_mem.i.i, align 4
  %arrayidx.i12.i = getelementptr i8, ptr %31, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i, i32 %29) #7, !srcloc !87
  br label %pluto_reset_frontend.exit

pluto_reset_frontend.exit:                        ; preds = %if.then.i14, %pluto_reset_ts.exit.pluto_reset_frontend.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pluto_reset_ts(ptr nocapture noundef readonly %pluto, i32 noundef %reenable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_mem.i = getelementptr inbounds %struct.pluto, ptr %pluto, i32 0, i32 1
  %0 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #7, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and1 = and i32 %3, -32769
  %and.i = and i32 %3, -32896
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %5 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %4) #7, !srcloc !87
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %and1, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reenable)
  %tobool2.not = icmp eq i32 %reenable, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or = and i32 %val.0, -32896
  %or.i12 = or i32 %or, 32772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i12) #7
  %8 = ptrtoint ptr %io_mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_mem.i, align 4
  %arrayidx.i.i14 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i14, i32 %7) #7, !srcloc !87
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tda10046_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_tdtpe001p_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds i8, ptr %buf, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1
  %9 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dtv_property_cache, align 4
  %mul = mul i32 %10, 3
  %add.i = add i32 %mul, 250000
  %div1.i = udiv i32 %add.i, 500000
  %add = add nuw nsw i32 %div1.i, 217
  %shr = lshr i32 %add, 8
  %11 = trunc i32 %shr to i8
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %buf, align 1
  %conv4 = trunc i32 %add to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 611000000, i32 %10)
  %cmp = icmp ult i32 %10, 611000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 811000000, i32 %10)
  %cmp10 = icmp ult i32 %10, 811000000
  %.66 = select i1 %cmp10, i8 -68, i8 -12
  %.sink = select i1 %cmp, i8 -76, i8 %.66
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 350000000, i32 %10)
  %cmp18 = icmp ult i32 %10, 350000000
  %. = select i1 %cmp18, i8 2, i8 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %., ptr %6, align 1
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %16 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %17)
  %cmp25 = icmp eq i32 %17, 8000000
  br i1 %cmp25, label %if.then27, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = or i8 %., 8
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %6, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %entry.if.end31_crit_edge
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags, align 2
  %buf32 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %22 = ptrtoint ptr %buf32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf, ptr %buf32, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %23 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 4, ptr %len, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %24 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.end31.if.end37_crit_edge, label %if.then33

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 %25(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end31.if.end37_crit_edge
  %i2c_adap = getelementptr i8, ptr %1, i32 1112
  %call38 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp43 = icmp eq i32 %call38, 0
  %.65 = select i1 %cmp43, i32 -121, i32 0
  %retval.0 = select i1 %cmp39, i32 %call38, i32 %.65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pluto2_request_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1032
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call1 = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %name, ptr noundef %dev) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype383, !1, !"__UNIQUE_ID_adapter_nrtype383", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr384, !1, !"__UNIQUE_ID_adapter_nr384", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_pluto2__385_783_pluto2_driver_init6, !5, !"__initcall__kmod_pluto2__385_783_pluto2_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 783, i32 1}
!6 = !{ptr @__exitcall_pluto2_driver_exit, !5, !"__exitcall_pluto2_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author386, !8, !"__UNIQUE_ID_author386", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 785, i32 1}
!9 = !{ptr @__UNIQUE_ID_description387, !10, !"__UNIQUE_ID_description387", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 786, i32 1}
!11 = !{ptr @__UNIQUE_ID_file388, !12, !"__UNIQUE_ID_file388", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 787, i32 1}
!13 = !{ptr @__UNIQUE_ID_license389, !12, !"__UNIQUE_ID_license389", i1 false, i1 false}
!14 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!15 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!16 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!17 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pluto2_driver, !19, !"pluto2_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 776, i32 26}
!20 = !{ptr @pluto2_id_table, !21, !"pluto2_id_table", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 763, i32 35}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 329, i32 4}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pluto_irq._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @pluto_irq._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 342, i32 4}
!32 = !{ptr @pluto_irq._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pluto_irq._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 299, i32 4}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pluto_dma_end._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @pluto_dma_end._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 528, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pluto_read_rev._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @pluto_read_rev._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 559, i32 2}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pluto_read_serial._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @pluto_read_serial._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 566, i32 4}
!57 = !{ptr @pluto_read_serial._entry.19, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @pluto_read_serial._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 571, i32 2}
!61 = !{ptr @pluto_read_serial._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pluto_read_serial._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 546, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pluto_read_mac._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @pluto_read_mac._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 510, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @frontend_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @frontend_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @pluto2_fe_config, !74, !"pluto2_fe_config", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/pluto2/pluto2.c", i32 494, i32 31}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 6840634}
!85 = !{i64 2158076760}
!86 = !{i64 2158077145}
!87 = !{i64 6840216}
!88 = !{i64 2158077985}
!89 = !{i64 2158078201}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2158091860}
