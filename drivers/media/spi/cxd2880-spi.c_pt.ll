; ModuleID = '/llk/IR_all_yes/drivers/media/spi/cxd2880-spi.c_pt.bc'
source_filename = "../drivers/media/spi/cxd2880-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cxd2880_config = type { ptr, ptr }
%struct.cxd2880_dvb_spi = type { %struct.dvb_frontend, %struct.dvb_adapter, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, ptr, ptr, %struct.mutex, i32, i32, ptr, ptr, %struct.cxd2880_pid_filter_config }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cxd2880_pid_filter_config = type { i8, [32 x %struct.cxd2880_pid_config] }
%struct.cxd2880_pid_config = type { i8, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dvb_demux_feed = type { %union.anon.91, %union.anon.92, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.91 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.92 = type { ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__param_str_adapter_nr = internal constant [23 x i8] c"cxd2880_spi.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype298 = internal constant [47 x i8] c"cxd2880_spi.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr299 = internal constant [48 x i8] c"cxd2880_spi.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_cxd2880_spi__305_665_cxd2880_spi_driver_init6 = internal global ptr @cxd2880_spi_driver_init, section ".initcall6.init", align 4
@cxd2880_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @cxd2880_spi_id, ptr @cxd2880_spi_probe, ptr @cxd2880_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cxd2880_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cxd2880_spi_driver_exit = internal global ptr @cxd2880_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description306 = internal constant [79 x i8] c"cxd2880_spi.description=Sony CXD2880 DVB-T2/T tuner + demod driver SPI adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [60 x i8] c"cxd2880_spi.author=Sony Semiconductor Solutions Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [47 x i8] c"cxd2880_spi.file=drivers/media/spi/cxd2880-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [27 x i8] c"cxd2880_spi.license=GPL v2\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@cxd2880_spi_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"cxd2880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cxd2880\00", [24 x i8] zeroinitializer }, align 32
@cxd2880_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,cxd2880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013cxd2880_spi: %s: invalid arg\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2880_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/spi/cxd2880-spi.c\00", [32 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry_ptr = internal global ptr @cxd2880_spi_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dvb_spi->spi_mutex\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CXD2880\00", [24 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013cxd2880_spi: %s: dvb_register_adapter() failed\0A\00", [46 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry_ptr.9 = internal global ptr @cxd2880_spi_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxd2880_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cxd2880_attach\00", [42 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cxd2880_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry_ptr.14 = internal global ptr @cxd2880_spi_probe._entry.12, section ".printk_index", align 4
@cxd2880_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013cxd2880_spi: %s: cxd2880_attach failed\0A\00", [54 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry_ptr.17 = internal global ptr @cxd2880_spi_probe._entry.15, section ".printk_index", align 4
@cxd2880_spi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013cxd2880_spi: %s: dvb_register_frontend() failed\0A\00", [45 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry_ptr.20 = internal global ptr @cxd2880_spi_probe._entry.18, section ".printk_index", align 4
@cxd2880_spi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013cxd2880_spi: %s: dvb_dmx_init() failed\0A\00", [54 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry_ptr.23 = internal global ptr @cxd2880_spi_probe._entry.21, section ".printk_index", align 4
@cxd2880_spi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cxd2880_spi: %s: dvb_dmxdev_init() failed\0A\00", [51 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry_ptr.26 = internal global ptr @cxd2880_spi_probe._entry.24, section ".printk_index", align 4
@cxd2880_spi_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013cxd2880_spi: %s: add_frontend() failed\0A\00", [54 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry_ptr.29 = internal global ptr @cxd2880_spi_probe._entry.27, section ".printk_index", align 4
@cxd2880_spi_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013cxd2880_spi: %s: connect_frontend() failed\0A\00", [50 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry_ptr.32 = internal global ptr @cxd2880_spi_probe._entry.30, section ".printk_index", align 4
@cxd2880_spi_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016cxd2880_spi: %s: Sony CXD2880 has successfully attached.\0A\00", [36 x i8] zeroinitializer }, align 32
@cxd2880_spi_probe._entry_ptr.35 = internal global ptr @cxd2880_spi_probe._entry.33, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cxd2880_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.36, ptr @.str.3, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxd2880_start_feed\00", [45 x i8] zeroinitializer }, align 32
@cxd2880_start_feed._entry_ptr = internal global ptr @cxd2880_start_feed._entry, section ".printk_index", align 4
@cxd2880_start_feed._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013cxd2880_spi: %s: feed->demux is NULL\0A\00", [56 x i8] zeroinitializer }, align 32
@cxd2880_start_feed._entry_ptr.39 = internal global ptr @cxd2880_start_feed._entry.37, section ".printk_index", align 4
@cxd2880_start_feed._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013cxd2880_spi: %s: Exceeded maximum PID count (32).\00", [44 x i8] zeroinitializer }, align 32
@cxd2880_start_feed._entry_ptr.42 = internal global ptr @cxd2880_start_feed._entry.40, section ".printk_index", align 4
@cxd2880_start_feed._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.3, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013cxd2880_spi: %s: Selected PID cannot be enabled.\0A\00", [44 x i8] zeroinitializer }, align 32
@cxd2880_start_feed._entry_ptr.45 = internal global ptr @cxd2880_start_feed._entry.43, section ".printk_index", align 4
@cxd2880_start_feed._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.3, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cxd2880_spi: %s: update pid filter failed\0A\00", [51 x i8] zeroinitializer }, align 32
@cxd2880_start_feed._entry_ptr.48 = internal global ptr @cxd2880_start_feed._entry.46, section ".printk_index", align 4
@cxd2880_start_feed.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.36, ptr @.str.3, ptr @.str.50, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cxd2880_spi\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"all PID feed (count = %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cxd2880_spi: %s: all PID feed (count = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@cxd2880_start_feed.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.36, ptr @.str.3, ptr @.str.52, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"store PID %d to #%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cxd2880_spi: %s: store PID %d to #%d\0A\00", [58 x i8] zeroinitializer }, align 32
@cxd2880_start_feed._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.36, ptr @.str.3, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013cxd2880_spi: %s: PID filter is full.\0A\00", [56 x i8] zeroinitializer }, align 32
@cxd2880_start_feed._entry_ptr.56 = internal global ptr @cxd2880_start_feed._entry.54, section ".printk_index", align 4
@cxd2880_start_feed._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.36, ptr @.str.3, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013cxd2880_spi: %s: ts buffer allocate failed\0A\00", [50 x i8] zeroinitializer }, align 32
@cxd2880_start_feed._entry_ptr.59 = internal global ptr @cxd2880_start_feed._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxd2880_ts_read\00", [16 x i8] zeroinitializer }, align 32
@cxd2880_start_feed._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.36, ptr @.str.3, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cxd2880_spi: %s: kthread_run failed\0A\00", [57 x i8] zeroinitializer }, align 32
@cxd2880_start_feed._entry_ptr.63 = internal global ptr @cxd2880_start_feed._entry.61, section ".printk_index", align 4
@cxd2880_start_feed.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.36, ptr @.str.3, ptr @.str.64, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"start feed (count %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cxd2880_spi: %s: start feed (count %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@cxd2880_update_pid_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cxd2880_spi: %s: invalid arg.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxd2880_update_pid_filter\00", [38 x i8] zeroinitializer }, align 32
@cxd2880_update_pid_filter._entry_ptr = internal global ptr @cxd2880_update_pid_filter._entry, section ".printk_index", align 4
@cxd2880_update_pid_filter._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013cxd2880_spi: %s: set_pid_filter failed\0A\00", [54 x i8] zeroinitializer }, align 32
@cxd2880_update_pid_filter._entry_ptr.70 = internal global ptr @cxd2880_update_pid_filter._entry.68, section ".printk_index", align 4
@cxd2880_set_pid_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.71, ptr @.str.3, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxd2880_set_pid_filter\00", [41 x i8] zeroinitializer }, align 32
@cxd2880_set_pid_filter._entry_ptr = internal global ptr @cxd2880_set_pid_filter._entry, section ".printk_index", align 4
@cxd2880_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.72, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2880_write_reg\00", [46 x i8] zeroinitializer }, align 32
@cxd2880_write_reg._entry_ptr = internal global ptr @cxd2880_write_reg._entry, section ".printk_index", align 4
@cxd2880_write_reg._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013cxd2880_spi: %s: data size > WRITE_MAX\0A\00", [54 x i8] zeroinitializer }, align 32
@cxd2880_write_reg._entry_ptr.75 = internal global ptr @cxd2880_write_reg._entry.73, section ".printk_index", align 4
@cxd2880_write_reg._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cxd2880_spi: %s: out of range\0A\00", [63 x i8] zeroinitializer }, align 32
@cxd2880_write_reg._entry_ptr.78 = internal global ptr @cxd2880_write_reg._entry.76, section ".printk_index", align 4
@cxd2880_write_reg._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.3, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013cxd2880_spi: %s: write spi failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cxd2880_write_reg._entry_ptr.81 = internal global ptr @cxd2880_write_reg._entry.79, section ".printk_index", align 4
@cxd2880_write_spi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.82, ptr @.str.3, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2880_write_spi\00", [46 x i8] zeroinitializer }, align 32
@cxd2880_write_spi._entry_ptr = internal global ptr @cxd2880_write_spi._entry, section ".printk_index", align 4
@cxd2880_ts_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.60, ptr @.str.3, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxd2880_ts_read._entry_ptr = internal global ptr @cxd2880_ts_read._entry, section ".printk_index", align 4
@cxd2880_ts_read._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.60, ptr @.str.3, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cxd2880_spi: %s: set_clear_ts_buffer failed\0A\00", [49 x i8] zeroinitializer }, align 32
@cxd2880_ts_read._entry_ptr.85 = internal global ptr @cxd2880_ts_read._entry.83, section ".printk_index", align 4
@cxd2880_ts_read._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.60, ptr @.str.3, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013cxd2880_spi: %s: spi_read_ts_buffer_info error\0A\00", [46 x i8] zeroinitializer }, align 32
@cxd2880_ts_read._entry_ptr.88 = internal global ptr @cxd2880_ts_read._entry.86, section ".printk_index", align 4
@cxd2880_spi_clear_ts_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013cxd2880_spi: %s: write spi failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cxd2880_spi_clear_ts_buffer\00", [36 x i8] zeroinitializer }, align 32
@cxd2880_spi_clear_ts_buffer._entry_ptr = internal global ptr @cxd2880_spi_clear_ts_buffer._entry, section ".printk_index", align 4
@cxd2880_spi_read_ts_buffer_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.91, ptr @.str.3, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cxd2880_spi_read_ts_buffer_info\00", [32 x i8] zeroinitializer }, align 32
@cxd2880_spi_read_ts_buffer_info._entry_ptr = internal global ptr @cxd2880_spi_read_ts_buffer_info._entry, section ".printk_index", align 4
@cxd2880_spi_read_ts_buffer_info._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.3, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cxd2880_spi: %s: spi_write_then_read failed\0A\00", [49 x i8] zeroinitializer }, align 32
@cxd2880_spi_read_ts_buffer_info._entry_ptr.94 = internal global ptr @cxd2880_spi_read_ts_buffer_info._entry.92, section ".printk_index", align 4
@cxd2880_spi_read_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.95, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxd2880_spi_read_ts\00", [44 x i8] zeroinitializer }, align 32
@cxd2880_spi_read_ts._entry_ptr = internal global ptr @cxd2880_spi_read_ts._entry, section ".printk_index", align 4
@cxd2880_spi_read_ts._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013cxd2880_spi: %s: packet num > 0xffff\0A\00", [56 x i8] zeroinitializer }, align 32
@cxd2880_spi_read_ts._entry_ptr.98 = internal global ptr @cxd2880_spi_read_ts._entry.96, section ".printk_index", align 4
@cxd2880_spi_read_ts._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013cxd2880_spi: %s: spi_sync failed\0A\00", [60 x i8] zeroinitializer }, align 32
@cxd2880_spi_read_ts._entry_ptr.101 = internal global ptr @cxd2880_spi_read_ts._entry.99, section ".printk_index", align 4
@cxd2880_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.102, ptr @.str.3, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2880_stop_feed\00", [46 x i8] zeroinitializer }, align 32
@cxd2880_stop_feed._entry_ptr = internal global ptr @cxd2880_stop_feed._entry, section ".printk_index", align 4
@cxd2880_stop_feed._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.102, ptr @.str.3, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxd2880_stop_feed._entry_ptr.104 = internal global ptr @cxd2880_stop_feed._entry.103, section ".printk_index", align 4
@cxd2880_stop_feed._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.102, ptr @.str.3, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cxd2880_spi: %s: no feed is started\0A\00", [57 x i8] zeroinitializer }, align 32
@cxd2880_stop_feed._entry_ptr.107 = internal global ptr @cxd2880_stop_feed._entry.105, section ".printk_index", align 4
@cxd2880_stop_feed._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.102, ptr @.str.3, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013cxd2880_spi: %s: PID %d not found\0A\00", [59 x i8] zeroinitializer }, align 32
@cxd2880_stop_feed._entry_ptr.110 = internal global ptr @cxd2880_stop_feed._entry.108, section ".printk_index", align 4
@cxd2880_stop_feed.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.102, ptr @.str.3, ptr @.str.111, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"removed PID %d from #%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cxd2880_spi: %s: removed PID %d from #%d\0A\00", [54 x i8] zeroinitializer }, align 32
@cxd2880_stop_feed._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.102, ptr @.str.3, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxd2880_stop_feed._entry_ptr.114 = internal global ptr @cxd2880_stop_feed._entry.113, section ".printk_index", align 4
@cxd2880_stop_feed._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.102, ptr @.str.3, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013cxd2880_spi: %s: kthread_stop failed. (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@cxd2880_stop_feed._entry_ptr.117 = internal global ptr @cxd2880_stop_feed._entry.115, section ".printk_index", align 4
@cxd2880_stop_feed.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.102, ptr @.str.3, ptr @.str.118, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stop feed ok.(count %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cxd2880_spi: %s: stop feed ok.(count %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@cxd2880_spi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cxd2880_spi: %s: cxd2880_spi remove ok.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxd2880_spi_remove\00", [45 x i8] zeroinitializer }, align 32
@cxd2880_spi_remove._entry_ptr = internal global ptr @cxd2880_spi_remove._entry, section ".printk_index", align 4
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"cxd2880_spi_driver\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 656, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 60, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"cxd2880_spi_id\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 650, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 658, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"cxd2880_spi_of_match\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 500, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 515, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 523, i32 63 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 537, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 543, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 548, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 552, i32 7 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 553, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 561, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 574, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 584, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 592, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 599, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 603, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 330, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 336, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 342, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 343, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 353, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 359, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 370, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 376, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 394, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 400, i32 37 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 404, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 416, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 241, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 261, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 204, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 89, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 93, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 98, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 112, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 68, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 276, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 282, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 291, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 190, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 163, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 170, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 127, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 131, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 150, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 428, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 434, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 440, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 451, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 465, i32 5 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 473, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 488, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 495, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private constant [35 x i8] c"../drivers/media/spi/cxd2880-spi.c\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 645, i32 2 }
@llvm.compiler.used = appending global [161 x ptr] [ptr @__UNIQUE_ID_adapter_nr299, ptr @__UNIQUE_ID_adapter_nrtype298, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_cxd2880_spi_driver_exit, ptr @__initcall__kmod_cxd2880_spi__305_665_cxd2880_spi_driver_init6, ptr @__param_adapter_nr, ptr @cxd2880_set_pid_filter._entry, ptr @cxd2880_set_pid_filter._entry_ptr, ptr @cxd2880_spi_clear_ts_buffer._entry, ptr @cxd2880_spi_clear_ts_buffer._entry_ptr, ptr @cxd2880_spi_driver_exit, ptr @cxd2880_spi_probe._entry, ptr @cxd2880_spi_probe._entry.12, ptr @cxd2880_spi_probe._entry.15, ptr @cxd2880_spi_probe._entry.18, ptr @cxd2880_spi_probe._entry.21, ptr @cxd2880_spi_probe._entry.24, ptr @cxd2880_spi_probe._entry.27, ptr @cxd2880_spi_probe._entry.30, ptr @cxd2880_spi_probe._entry.33, ptr @cxd2880_spi_probe._entry.7, ptr @cxd2880_spi_probe._entry_ptr, ptr @cxd2880_spi_probe._entry_ptr.14, ptr @cxd2880_spi_probe._entry_ptr.17, ptr @cxd2880_spi_probe._entry_ptr.20, ptr @cxd2880_spi_probe._entry_ptr.23, ptr @cxd2880_spi_probe._entry_ptr.26, ptr @cxd2880_spi_probe._entry_ptr.29, ptr @cxd2880_spi_probe._entry_ptr.32, ptr @cxd2880_spi_probe._entry_ptr.35, ptr @cxd2880_spi_probe._entry_ptr.9, ptr @cxd2880_spi_read_ts._entry, ptr @cxd2880_spi_read_ts._entry.96, ptr @cxd2880_spi_read_ts._entry.99, ptr @cxd2880_spi_read_ts._entry_ptr, ptr @cxd2880_spi_read_ts._entry_ptr.101, ptr @cxd2880_spi_read_ts._entry_ptr.98, ptr @cxd2880_spi_read_ts_buffer_info._entry, ptr @cxd2880_spi_read_ts_buffer_info._entry.92, ptr @cxd2880_spi_read_ts_buffer_info._entry_ptr, ptr @cxd2880_spi_read_ts_buffer_info._entry_ptr.94, ptr @cxd2880_spi_remove._entry, ptr @cxd2880_spi_remove._entry_ptr, ptr @cxd2880_start_feed._entry, ptr @cxd2880_start_feed._entry.37, ptr @cxd2880_start_feed._entry.40, ptr @cxd2880_start_feed._entry.43, ptr @cxd2880_start_feed._entry.46, ptr @cxd2880_start_feed._entry.54, ptr @cxd2880_start_feed._entry.57, ptr @cxd2880_start_feed._entry.61, ptr @cxd2880_start_feed._entry_ptr, ptr @cxd2880_start_feed._entry_ptr.39, ptr @cxd2880_start_feed._entry_ptr.42, ptr @cxd2880_start_feed._entry_ptr.45, ptr @cxd2880_start_feed._entry_ptr.48, ptr @cxd2880_start_feed._entry_ptr.56, ptr @cxd2880_start_feed._entry_ptr.59, ptr @cxd2880_start_feed._entry_ptr.63, ptr @cxd2880_stop_feed._entry, ptr @cxd2880_stop_feed._entry.103, ptr @cxd2880_stop_feed._entry.105, ptr @cxd2880_stop_feed._entry.108, ptr @cxd2880_stop_feed._entry.113, ptr @cxd2880_stop_feed._entry.115, ptr @cxd2880_stop_feed._entry_ptr, ptr @cxd2880_stop_feed._entry_ptr.104, ptr @cxd2880_stop_feed._entry_ptr.107, ptr @cxd2880_stop_feed._entry_ptr.110, ptr @cxd2880_stop_feed._entry_ptr.114, ptr @cxd2880_stop_feed._entry_ptr.117, ptr @cxd2880_ts_read._entry, ptr @cxd2880_ts_read._entry.83, ptr @cxd2880_ts_read._entry.86, ptr @cxd2880_ts_read._entry_ptr, ptr @cxd2880_ts_read._entry_ptr.85, ptr @cxd2880_ts_read._entry_ptr.88, ptr @cxd2880_update_pid_filter._entry, ptr @cxd2880_update_pid_filter._entry.68, ptr @cxd2880_update_pid_filter._entry_ptr, ptr @cxd2880_update_pid_filter._entry_ptr.70, ptr @cxd2880_write_reg._entry, ptr @cxd2880_write_reg._entry.73, ptr @cxd2880_write_reg._entry.76, ptr @cxd2880_write_reg._entry.79, ptr @cxd2880_write_reg._entry_ptr, ptr @cxd2880_write_reg._entry_ptr.75, ptr @cxd2880_write_reg._entry_ptr.78, ptr @cxd2880_write_reg._entry_ptr.81, ptr @cxd2880_write_spi._entry, ptr @cxd2880_write_spi._entry_ptr, ptr @cxd2880_spi_driver, ptr @adapter_nr, ptr @cxd2880_spi_id, ptr @.str, ptr @cxd2880_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cxd2880_spi_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_start_feed._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_start_feed._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_start_feed._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_start_feed._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_start_feed._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_start_feed._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_start_feed._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_update_pid_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_update_pid_filter._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_pid_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_write_reg._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_write_reg._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_write_reg._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_write_spi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_ts_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_ts_read._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_ts_read._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_clear_ts_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_read_ts_buffer_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_read_ts_buffer_info._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_read_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_read_ts._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_read_ts._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_stop_feed._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_stop_feed._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_stop_feed._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_stop_feed._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_stop_feed._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_spi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @cxd2880_spi_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxd2880_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @cxd2880_spi_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %config = alloca %struct.cxd2880_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %config, align 4, !annotation !236
  %1 = getelementptr inbounds %struct.cxd2880_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !236
  %tobool.not = icmp eq ptr %spi, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 3176) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_regulator_get_optional(ptr noundef nonnull %spi, ptr noundef nonnull @.str.4) #8
  %vcc_supply = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %vcc_supply to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %vcc_supply, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  %cmp = icmp eq ptr %call5, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then8.fail_regulator_crit_edge, label %if.end12

if.then8.fail_regulator_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_regulator

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %vcc_supply to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vcc_supply, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end4
  %call15 = tail call i32 @regulator_enable(ptr noundef %call5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.else.fail_regulator_crit_edge

if.else.fail_regulator_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_regulator

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.end12
  %spi20 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %spi20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %spi20, align 8
  %spi_mutex = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %spi_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @cxd2880_spi_probe.__key) #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spi, ptr %config, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spi_mutex, ptr %1, align 4
  %adapter = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 1
  %call28 = tail call i32 @dvb_register_adapter(ptr noundef %adapter, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef nonnull %spi, ptr noundef nonnull @adapter_nr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #11
  br label %fail_adapter

if.end36:                                         ; preds = %if.end19
  %call37 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #8
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %cond.end, label %if.end36.if.then42_crit_edge

if.end36.if.then42_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

cond.end:                                         ; preds = %if.end36
  %call39 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11) #8
  %call40 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #8
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %do.end50, label %cond.end.if.then42_crit_edge

cond.end.if.then42_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.then42:                                        ; preds = %cond.end.if.then42_crit_edge, %if.end36.if.then42_crit_edge
  %cond222 = phi ptr [ %call40, %cond.end.if.then42_crit_edge ], [ %call37, %if.end36.if.then42_crit_edge ]
  %call43 = call ptr %cond222(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %config) #8
  %cmp44 = icmp eq ptr %call43, null
  br i1 %cmp44, label %if.then45, label %if.end62

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.10) #8
  br label %do.end59

do.end50:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %do.end59

do.end59:                                         ; preds = %do.end50, %if.then45
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #11
  br label %fail_attach

if.end62:                                         ; preds = %if.then42
  %call65 = call i32 @dvb_register_frontend(ptr noundef %adapter, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end70, label %if.end73

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2) #11
  br label %fail_frontend

if.end73:                                         ; preds = %if.end62
  %demux = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %demux, align 8
  %priv = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %priv, align 4
  %filternum = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cxd2880_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cxd2880_stop_feed, ptr %stop_feed, align 4
  %call80 = call i32 @dvb_dmx_init(ptr noundef %demux) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %do.end85, label %if.end88

do.end85:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2) #11
  br label %fail_dmx

if.end88:                                         ; preds = %if.end73
  %dmxdev = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 3
  %filternum89 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %filternum89 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %filternum89, align 8
  %demux93 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %demux93 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %demux, ptr %demux93, align 4
  %capabilities95 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 3, i32 5
  %18 = ptrtoint ptr %capabilities95 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %capabilities95, align 4
  %call98 = call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %do.end103, label %if.end106

do.end103:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2) #11
  br label %fail_dmxdev

if.end106:                                        ; preds = %if.end88
  %dmx_fe = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 4
  %source = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %source, align 8
  %add_frontend = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 10
  %20 = ptrtoint ptr %add_frontend to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add_frontend, align 8
  %call112 = call i32 %21(ptr noundef %demux, ptr noundef %dmx_fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %do.end117, label %if.end120

do.end117:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2) #11
  br label %fail_dmx_fe

if.end120:                                        ; preds = %if.end106
  %connect_frontend = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 13
  %22 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %connect_frontend, align 4
  %call126 = call i32 %23(ptr noundef %demux, ptr noundef %dmx_fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %do.end131, label %do.end137

do.end131:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2) #11
  %remove_frontend = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 11
  %24 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remove_frontend, align 4
  %call145 = call i32 %25(ptr noundef %demux, ptr noundef %dmx_fe) #8
  br label %fail_dmx_fe

do.end137:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2) #11
  br label %cleanup

fail_dmx_fe:                                      ; preds = %do.end131, %do.end117
  %ret.0 = phi i32 [ %call112, %do.end117 ], [ %call126, %do.end131 ]
  call void @dvb_dmxdev_release(ptr noundef %dmxdev) #8
  br label %fail_dmxdev

fail_dmxdev:                                      ; preds = %fail_dmx_fe, %do.end103
  %ret.1 = phi i32 [ %call98, %do.end103 ], [ %ret.0, %fail_dmx_fe ]
  call void @dvb_dmx_release(ptr noundef %demux) #8
  br label %fail_dmx

fail_dmx:                                         ; preds = %fail_dmxdev, %do.end85
  %ret.2 = phi i32 [ %call80, %do.end85 ], [ %ret.1, %fail_dmxdev ]
  %call149 = call i32 @dvb_unregister_frontend(ptr noundef nonnull %call7.i.i) #8
  br label %fail_frontend

fail_frontend:                                    ; preds = %fail_dmx, %do.end70
  %ret.3 = phi i32 [ %call65, %do.end70 ], [ %ret.2, %fail_dmx ]
  call void @dvb_frontend_detach(ptr noundef nonnull %call7.i.i) #8
  br label %fail_attach

fail_attach:                                      ; preds = %fail_frontend, %do.end59
  %ret.4 = phi i32 [ %ret.3, %fail_frontend ], [ -19, %do.end59 ]
  %call152 = call i32 @dvb_unregister_adapter(ptr noundef %adapter) #8
  br label %fail_adapter

fail_adapter:                                     ; preds = %fail_attach, %do.end33
  %ret.5 = phi i32 [ %call28, %do.end33 ], [ %ret.4, %fail_attach ]
  %26 = ptrtoint ptr %vcc_supply to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vcc_supply, align 8
  %tobool154.not = icmp eq ptr %27, null
  br i1 %tobool154.not, label %fail_adapter.fail_regulator_crit_edge, label %if.then155

fail_adapter.fail_regulator_crit_edge:            ; preds = %fail_adapter
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_regulator

if.then155:                                       ; preds = %fail_adapter
  call void @__sanitizer_cov_trace_pc() #10
  %call157 = call i32 @regulator_disable(ptr noundef nonnull %27) #8
  br label %fail_regulator

fail_regulator:                                   ; preds = %if.then155, %fail_adapter.fail_regulator_crit_edge, %if.else.fail_regulator_crit_edge, %if.then8.fail_regulator_crit_edge
  %ret.6 = phi i32 [ %ret.5, %if.then155 ], [ %ret.5, %fail_adapter.fail_regulator_crit_edge ], [ %call15, %if.else.fail_regulator_crit_edge ], [ -517, %if.then8.fail_regulator_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_regulator, %do.end137, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.6, %fail_regulator ], [ 0, %do.end137 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_spi_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %demux = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %1, i32 0, i32 2
  %remove_frontend = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %1, i32 0, i32 2, i32 0, i32 11
  %2 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove_frontend, align 4
  %dmx_fe = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %1, i32 0, i32 4
  %call3 = tail call i32 %3(ptr noundef %demux, ptr noundef %dmx_fe) #8
  %dmxdev = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %1, i32 0, i32 3
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #8
  tail call void @dvb_dmx_release(ptr noundef %demux) #8
  %call5 = tail call i32 @dvb_unregister_frontend(ptr noundef %1) #8
  tail call void @dvb_frontend_detach(ptr noundef %1) #8
  %adapter = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %1, i32 0, i32 1
  %call7 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #8
  %vcc_supply = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %vcc_supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc_supply, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_start_feed(ptr noundef readonly %feed) #2 align 64 {
entry:
  %tmpcfg.i = alloca %struct.cxd2880_pid_filter_config, align 2
  %cfgtmp = alloca %struct.cxd2880_pid_filter_config, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %feed, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36) #11
  br label %cleanup160

if.end:                                           ; preds = %entry
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #11
  br label %cleanup160

if.end9:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %feed_count = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %feed_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %feed_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp = icmp eq i32 %5, 32
  br i1 %cmp, label %do.end13, label %if.end21

do.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36) #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.36) #11
  br label %cleanup160

if.end21:                                         ; preds = %if.end9
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %7)
  %cmp22 = icmp eq i16 %7, 8192
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  %all_pid_feed_count = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %all_pid_feed_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %all_pid_feed_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp25 = icmp eq i32 %9, 0
  br i1 %cmp25, label %if.then27, label %if.then24.if.end37_crit_edge

if.then24.if.end37_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then27:                                        ; preds = %if.then24
  %filter_config = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 12
  %tobool.not.i = icmp eq ptr %3, null
  %tobool1.not.i = icmp eq ptr %filter_config, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) #11
  br label %do.end33

if.end.i:                                         ; preds = %if.then27
  %spi_mutex.i = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %spi_mutex.i, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %tmpcfg.i) #8
  %10 = call ptr @memset(ptr %tmpcfg.i, i32 0, i32 130)
  %11 = ptrtoint ptr %tmpcfg.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %tmpcfg.i, align 2
  %pid_config.i = getelementptr inbounds %struct.cxd2880_pid_filter_config, ptr %tmpcfg.i, i32 0, i32 1
  %12 = ptrtoint ptr %pid_config.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %pid_config.i, align 2
  %pid.i = getelementptr inbounds %struct.cxd2880_pid_filter_config, ptr %tmpcfg.i, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %pid.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 8191, ptr %pid.i, align 2
  %spi.i = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi.i, align 8
  %call6.i = call fastcc i32 @cxd2880_set_pid_filter(ptr noundef %15, ptr noundef nonnull %tmpcfg.i) #8
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %tmpcfg.i) #8
  call void @mutex_unlock(ptr noundef %spi_mutex.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool11.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end37_crit_edge, label %do.end15.i

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67) #11
  br label %do.end33

do.end33:                                         ; preds = %do.end15.i, %do.end.i
  %retval.0.i210.ph = phi i32 [ %call6.i, %do.end15.i ], [ -22, %do.end.i ]
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.36) #11
  br label %cleanup160

if.end37:                                         ; preds = %if.end.i.if.end37_crit_edge, %if.then24.if.end37_crit_edge
  %16 = ptrtoint ptr %all_pid_feed_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %all_pid_feed_count, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %all_pid_feed_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_start_feed.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_start_feed, %if.then45)) #8
          to label %if.end102 [label %if.then45], !srcloc !237

if.then45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %all_pid_feed_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %all_pid_feed_count, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_start_feed.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.36, i32 noundef %19) #8
  br label %if.end102

if.else:                                          ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %cfgtmp) #8
  %filter_config50 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 12
  %20 = call ptr @memcpy(ptr %cfgtmp, ptr %filter_config50, i32 130)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else
  %i.0238 = phi i32 [ 0, %if.else ], [ %inc83, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cxd2880_pid_filter_config, ptr %cfgtmp, i32 0, i32 1, i32 %i.0238
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp54 = icmp eq i8 %22, 0
  br i1 %cmp54, label %if.then56, label %for.inc

if.then56:                                        ; preds = %for.body
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx, align 2
  %pid63 = getelementptr %struct.cxd2880_pid_filter_config, ptr %cfgtmp, i32 0, i32 1, i32 %i.0238, i32 1
  %24 = ptrtoint ptr %pid63 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %7, ptr %pid63, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_start_feed.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_start_feed, %for.end.thread)) #8
          to label %for.end [label %for.end.thread], !srcloc !237

for.end.thread:                                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pid, align 4
  %conv78 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_start_feed.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.36, i32 noundef %conv78, i32 noundef %i.0238) #8
  br label %if.end92

for.inc:                                          ; preds = %for.body
  %inc83 = add nuw nsw i32 %i.0238, 1
  %exitcond.not = icmp eq i32 %inc83, 32
  br i1 %exitcond.not, label %for.inc.do.end89_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end89_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end89

for.end:                                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.0238)
  %cmp84 = icmp eq i32 %i.0238, 32
  br i1 %cmp84, label %for.end.do.end89_crit_edge, label %for.end.if.end92_crit_edge

for.end.if.end92_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

for.end.do.end89_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end89

do.end89:                                         ; preds = %for.end.do.end89_crit_edge, %for.inc.do.end89_crit_edge
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.36) #11
  br label %cleanup.thread

if.end92:                                         ; preds = %for.end.if.end92_crit_edge, %for.end.thread
  %all_pid_feed_count93 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 9
  %27 = ptrtoint ptr %all_pid_feed_count93 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %all_pid_feed_count93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool94.not = icmp eq i32 %28, 0
  br i1 %tobool94.not, label %if.then95, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then95:                                        ; preds = %if.end92
  %tobool.not.i212 = icmp eq ptr %3, null
  br i1 %tobool.not.i212, label %do.end.i214, label %if.end.i216

do.end.i214:                                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  %call.i213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) #11
  br label %cleanup.thread

if.end.i216:                                      ; preds = %if.then95
  %spi_mutex.i215 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %spi_mutex.i215, i32 noundef 0) #8
  %spi7.i = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %spi7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spi7.i, align 8
  %call8.i = call fastcc i32 @cxd2880_set_pid_filter(ptr noundef %30, ptr noundef nonnull %cfgtmp) #8
  call void @mutex_unlock(ptr noundef %spi_mutex.i215) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool11.not.i217 = icmp eq i32 %call8.i, 0
  br i1 %tobool11.not.i217, label %if.end.i216.cleanup_crit_edge, label %do.end15.i219

if.end.i216.cleanup_crit_edge:                    ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end15.i219:                                    ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end15.i219, %do.end.i214, %do.end89
  %retval.0.ph = phi i32 [ %call8.i, %do.end15.i219 ], [ -22, %do.end.i214 ], [ -22, %do.end89 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %cfgtmp) #8
  br label %cleanup160

cleanup:                                          ; preds = %if.end.i216.cleanup_crit_edge, %if.end92.cleanup_crit_edge
  %31 = call ptr @memcpy(ptr %filter_config50, ptr %cfgtmp, i32 130)
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %cfgtmp) #8
  br label %if.end102

if.end102:                                        ; preds = %cleanup, %if.then45, %if.end37
  %32 = ptrtoint ptr %feed_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %feed_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp104 = icmp eq i32 %33, 0
  br i1 %cmp104, label %if.then106, label %if.end102.if.end140_crit_edge

if.end102.if.end140_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then106:                                       ; preds = %if.end102
  %call1.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 56400, i32 noundef 3265, i32 noundef 4) #13
  %ts_buf = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 11
  %34 = ptrtoint ptr %ts_buf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call1.i.i, ptr %ts_buf, align 4
  %tobool109.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool109.not, label %do.end113, label %if.end118

do.end113:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.36) #11
  %filter_config116 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 12
  %35 = call ptr @memset(ptr %filter_config116, i32 0, i32 130)
  %all_pid_feed_count117 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 9
  %36 = ptrtoint ptr %all_pid_feed_count117 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %all_pid_feed_count117, align 4
  br label %cleanup160

if.end118:                                        ; preds = %if.then106
  %call119 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cxd2880_ts_read, ptr noundef %3, i32 noundef -1, ptr noundef nonnull @.str.60) #8
  %cmp.i = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end130, label %if.end123

if.end123:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %call122 = call i32 @wake_up_process(ptr noundef %call119) #8
  %cxd2880_ts_read_thread = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %cxd2880_ts_read_thread to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call119, ptr %cxd2880_ts_read_thread, align 4
  br label %if.end140

do.end130:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %cxd2880_ts_read_thread233 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 5
  %38 = ptrtoint ptr %cxd2880_ts_read_thread233 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call119, ptr %cxd2880_ts_read_thread233, align 4
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.36) #11
  %39 = ptrtoint ptr %ts_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ts_buf, align 4
  call void @kfree(ptr noundef %40) #8
  %all_pid_feed_count136 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 9
  %41 = ptrtoint ptr %all_pid_feed_count136 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %all_pid_feed_count136, align 4
  %42 = call ptr @memset(ptr %ts_buf, i32 0, i32 134)
  %43 = ptrtoint ptr %cxd2880_ts_read_thread233 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cxd2880_ts_read_thread233, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %cleanup160

if.end140:                                        ; preds = %if.end123, %if.end102.if.end140_crit_edge
  %46 = ptrtoint ptr %feed_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %feed_count, align 8
  %inc142 = add i32 %47, 1
  store i32 %inc142, ptr %feed_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_start_feed.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_start_feed, %if.then155)) #8
          to label %cleanup160 [label %if.then155], !srcloc !237

if.then155:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %feed_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %feed_count, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_start_feed.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.36, i32 noundef %49) #8
  br label %cleanup160

cleanup160:                                       ; preds = %if.then155, %if.end140, %do.end130, %do.end113, %cleanup.thread, %do.end33, %do.end13, %do.end6, %do.end
  %retval.1 = phi i32 [ -22, %do.end13 ], [ %retval.0.i210.ph, %do.end33 ], [ %45, %do.end130 ], [ -12, %do.end113 ], [ -22, %do.end6 ], [ -22, %do.end ], [ 0, %if.then155 ], [ %retval.0.ph, %cleanup.thread ], [ 0, %if.end140 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_stop_feed(ptr noundef readonly %feed) #2 align 64 {
entry:
  %cfgtmp = alloca %struct.cxd2880_pid_filter_config, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %feed, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.102) #11
  br label %cleanup117

if.end:                                           ; preds = %entry
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.102) #11
  br label %cleanup117

if.end9:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %feed_count = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %feed_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %feed_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.102) #11
  br label %cleanup117

if.end17:                                         ; preds = %if.end9
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %7)
  %cmp = icmp eq i16 %7, 8192
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end17
  %all_pid_feed_count = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %all_pid_feed_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %all_pid_feed_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp20 = icmp slt i32 %9, 1
  br i1 %cmp20, label %do.end25, label %if.end30

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.102, i32 noundef 8192) #11
  br label %cleanup117

if.end30:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add nsw i32 %9, -1
  %10 = ptrtoint ptr %all_pid_feed_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %all_pid_feed_count, align 4
  br label %if.end77

if.else:                                          ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %cfgtmp) #8
  %filter_config = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 12
  %11 = call ptr @memcpy(ptr %cfgtmp, ptr %filter_config, i32 130)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else
  %i.0159 = phi i32 [ 0, %if.else ], [ %inc, %for.inc.for.body_crit_edge ]
  %pid36 = getelementptr %struct.cxd2880_pid_filter_config, ptr %cfgtmp, i32 0, i32 1, i32 %i.0159, i32 1
  %12 = ptrtoint ptr %pid36 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pid36, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %13)
  %cmp38 = icmp eq i16 %7, %13
  br i1 %cmp38, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.cxd2880_pid_filter_config, ptr %cfgtmp, i32 0, i32 1, i32 %i.0159
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp43.not = icmp eq i8 %15, 0
  br i1 %cmp43.not, label %land.lhs.true.for.inc_crit_edge, label %if.then45

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then45:                                        ; preds = %land.lhs.true
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx, align 2
  %17 = ptrtoint ptr %pid36 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %pid36, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_stop_feed.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_stop_feed, %for.end.thread)) #8
          to label %for.end [label %for.end.thread], !srcloc !237

for.end.thread:                                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pid, align 4
  %conv60 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_stop_feed.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.102, i32 noundef %conv60, i32 noundef %i.0159) #8
  %20 = call ptr @memcpy(ptr %filter_config, ptr %cfgtmp, i32 130)
  br label %if.end77.critedge

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.do.end71_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end71_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

for.end:                                          ; preds = %if.then45
  %21 = call ptr @memcpy(ptr %filter_config, ptr %cfgtmp, i32 130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.0159)
  %cmp66 = icmp eq i32 %i.0159, 32
  br i1 %cmp66, label %for.end.do.end71_crit_edge, label %for.end.if.end77.critedge_crit_edge

for.end.if.end77.critedge_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.critedge

for.end.do.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

do.end71:                                         ; preds = %for.end.do.end71_crit_edge, %for.inc.do.end71_crit_edge
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pid, align 4
  %conv74 = zext i16 %23 to i32
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.102, i32 noundef %conv74) #11
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %cfgtmp) #8
  br label %cleanup117

if.end77.critedge:                                ; preds = %for.end.if.end77.critedge_crit_edge, %for.end.thread
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %cfgtmp) #8
  br label %if.end77

if.end77:                                         ; preds = %if.end77.critedge, %if.end30
  %filter_config78 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 12
  %all_pid_feed_count79 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %all_pid_feed_count79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %all_pid_feed_count79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp80 = icmp sgt i32 %25, 0
  %call82 = tail call fastcc i32 @cxd2880_update_pid_filter(ptr noundef %3, ptr noundef %filter_config78, i1 noundef zeroext %cmp80)
  %26 = ptrtoint ptr %feed_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %feed_count, align 8
  %dec84 = add i32 %27, -1
  store i32 %dec84, ptr %feed_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec84)
  %cmp86 = icmp eq i32 %dec84, 0
  br i1 %cmp86, label %if.then88, label %if.end77.do.body100_crit_edge

if.end77.do.body100_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body100

if.then88:                                        ; preds = %if.end77
  %cxd2880_ts_read_thread = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %cxd2880_ts_read_thread to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cxd2880_ts_read_thread, align 4
  %call89 = tail call i32 @kthread_stop(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then88.if.end97_crit_edge, label %do.end94

if.then88.if.end97_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

do.end94:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.102, i32 noundef %call89) #11
  br label %if.end97

if.end97:                                         ; preds = %do.end94, %if.then88.if.end97_crit_edge
  %ret.0 = phi i32 [ %call89, %do.end94 ], [ %call82, %if.then88.if.end97_crit_edge ]
  %ts_buf = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %3, i32 0, i32 11
  %30 = ptrtoint ptr %ts_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ts_buf, align 4
  tail call void @kfree(ptr noundef %31) #8
  %32 = ptrtoint ptr %ts_buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %ts_buf, align 4
  br label %do.body100

do.body100:                                       ; preds = %if.end97, %if.end77.do.body100_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end97 ], [ %call82, %if.end77.do.body100_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_stop_feed.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_stop_feed, %if.then112)) #8
          to label %cleanup117 [label %if.then112], !srcloc !237

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %feed_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %feed_count, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_stop_feed.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.102, i32 noundef %34) #8
  br label %cleanup117

cleanup117:                                       ; preds = %if.then112, %do.body100, %do.end71, %do.end25, %do.end14, %do.end6, %do.end
  %retval.1 = phi i32 [ -22, %do.end25 ], [ -22, %do.end14 ], [ -22, %do.end6 ], [ -22, %do.end ], [ -22, %do.end71 ], [ %ret.1, %if.then112 ], [ %ret.1, %do.body100 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxd2880_update_pid_filter(ptr noundef %dvb_spi, ptr noundef %cfg, i1 noundef zeroext %is_all_pid_filter) unnamed_addr #2 align 64 {
entry:
  %tmpcfg = alloca %struct.cxd2880_pid_filter_config, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dvb_spi, null
  %tobool1.not = icmp eq ptr %cfg, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %spi_mutex = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %dvb_spi, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %spi_mutex, i32 noundef 0) #8
  br i1 %is_all_pid_filter, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %tmpcfg) #8
  %0 = call ptr @memset(ptr %tmpcfg, i32 0, i32 130)
  %1 = ptrtoint ptr %tmpcfg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %tmpcfg, align 2
  %pid_config = getelementptr inbounds %struct.cxd2880_pid_filter_config, ptr %tmpcfg, i32 0, i32 1
  %2 = ptrtoint ptr %pid_config to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %pid_config, align 2
  %pid = getelementptr inbounds %struct.cxd2880_pid_filter_config, ptr %tmpcfg, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %pid to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 8191, ptr %pid, align 2
  %spi = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %dvb_spi, i32 0, i32 6
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 8
  %call6 = call fastcc i32 @cxd2880_set_pid_filter(ptr noundef %5, ptr noundef nonnull %tmpcfg)
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %tmpcfg) #8
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %spi7 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %dvb_spi, i32 0, i32 6
  %6 = ptrtoint ptr %spi7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi7, align 8
  %call8 = tail call fastcc i32 @cxd2880_set_pid_filter(ptr noundef %7, ptr noundef nonnull %cfg)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %ret.0 = phi i32 [ %call6, %if.then3 ], [ %call8, %if.else ]
  call void @mutex_unlock(ptr noundef %spi_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %do.end15 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_ts_read(ptr noundef %arg) #2 align 64 {
entry:
  %send_data.i = alloca i8, align 1
  %recv_data.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.spi_message, align 4
  %tx.i.i = alloca %struct.spi_transfer, align 4
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %spi = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %arg, i32 0, i32 6
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i.i) #8
  %3 = getelementptr inbounds i8, ptr %tx.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %cxd2880_write_spi.exit.thread.i, label %if.end.i.i

cxd2880_write_spi.exit.thread.i:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.82) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  br label %do.end6

if.end.i.i:                                       ; preds = %if.end
  %5 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data.i, ptr %tx.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %len.i.i, align 4
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.cxd2880_write_spi.exit.i_crit_edge

if.end.i.i.cxd2880_write_spi.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_write_spi.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %cxd2880_write_spi.exit.i

cxd2880_write_spi.exit.i:                         ; preds = %if.end.i.i.i.i.i, %if.end.i.i.cxd2880_write_spi.exit.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef nonnull %1, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %if.end9, label %cxd2880_write_spi.exit.i.do.end6_crit_edge

cxd2880_write_spi.exit.i.do.end6_crit_edge:       ; preds = %cxd2880_write_spi.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end6:                                          ; preds = %cxd2880_write_spi.exit.i.do.end6_crit_edge, %cxd2880_write_spi.exit.thread.i
  %retval.0.i5.i = phi i32 [ -22, %cxd2880_write_spi.exit.thread.i ], [ %call2.i.i, %cxd2880_write_spi.exit.i.do.end6_crit_edge ]
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.end9:                                          ; preds = %cxd2880_write_spi.exit.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  %call10 = call i64 @ktime_get() #8
  %call1188 = call zeroext i1 @kthread_should_stop() #8
  br i1 %call1188, label %if.end9.cleanup_crit_edge, label %while.body.lr.ph

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end9
  %17 = getelementptr inbounds [2 x i8], ptr %recv_data.i, i32 0, i32 1
  %ts_buf42 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %arg, i32 0, i32 11
  %demux46 = getelementptr inbounds %struct.cxd2880_dvb_spi, ptr %arg, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %while.body.lr.ph
  %start.090 = phi i64 [ %call10, %while.body.lr.ph ], [ %start.1, %if.end53.while.body_crit_edge ]
  %18 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %send_data.i) #8
  %20 = ptrtoint ptr %send_data.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 32, ptr %send_data.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %recv_data.i) #8
  %21 = ptrtoint ptr %recv_data.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %recv_data.i, align 1, !annotation !236
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %17, align 1, !annotation !236
  %tobool.not.i72 = icmp eq ptr %19, null
  br i1 %tobool.not.i72, label %cxd2880_spi_read_ts_buffer_info.exit.thread, label %if.end.i

cxd2880_spi_read_ts_buffer_info.exit.thread:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.91) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %recv_data.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %send_data.i) #8
  br label %do.end18

if.end.i:                                         ; preds = %while.body
  %call2.i = call i32 @spi_write_then_read(ptr noundef nonnull %19, ptr noundef nonnull %send_data.i, i32 noundef 1, ptr noundef nonnull %recv_data.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end21, label %do.end18.loopexit

do.end18.loopexit:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %recv_data.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %send_data.i) #8
  br label %do.end18

do.end18:                                         ; preds = %do.end18.loopexit, %cxd2880_spi_read_ts_buffer_info.exit.thread
  %retval.0.i85 = phi i32 [ -22, %cxd2880_spi_read_ts_buffer_info.exit.thread ], [ %call2.i, %do.end18.loopexit ]
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end.i
  %23 = ptrtoint ptr %recv_data.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %recv_data.i, align 1
  %25 = and i8 %24, 7
  %and59.i93 = zext i8 %25 to i16
  %shl.i94 = shl nuw nsw i16 %and59.i93, 8
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %17, align 1
  %conv61.i95 = zext i8 %27 to i16
  %or.i96 = or i16 %shl.i94, %conv61.i95
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %recv_data.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %send_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 300, i16 %or.i96)
  %cmp = icmp ugt i16 %or.i96, 300
  br i1 %cmp, label %for.body, label %if.else

for.body:                                         ; preds = %if.end21
  %28 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spi, align 8
  %30 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ts_buf42, align 4
  call fastcc void @cxd2880_spi_read_ts(ptr noundef %29, ptr noundef %31, i32 noundef 300)
  %32 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ts_buf42, align 4
  call void @dvb_dmx_swfilter(ptr noundef %demux46, ptr noundef %33, i32 noundef 56400) #8
  %or.i96.off = add nsw i16 %or.i96, -300
  call void @__sanitizer_cov_trace_const_cmp2(i16 300, i16 %or.i96.off)
  %34 = icmp ult i16 %or.i96.off, 300
  br i1 %34, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %35 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spi, align 8
  %37 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ts_buf42, align 4
  call fastcc void @cxd2880_spi_read_ts(ptr noundef %36, ptr noundef %38, i32 noundef 300)
  %39 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ts_buf42, align 4
  call void @dvb_dmx_swfilter(ptr noundef %demux46, ptr noundef %40, i32 noundef 56400) #8
  %or.i96.off101 = add nsw i16 %or.i96, -600
  call void @__sanitizer_cov_trace_const_cmp2(i16 300, i16 %or.i96.off101)
  %41 = icmp ult i16 %or.i96.off101, 300
  br i1 %41, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %42 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi, align 8
  %44 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ts_buf42, align 4
  call fastcc void @cxd2880_spi_read_ts(ptr noundef %43, ptr noundef %45, i32 noundef 300)
  %46 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ts_buf42, align 4
  call void @dvb_dmx_swfilter(ptr noundef %demux46, ptr noundef %47, i32 noundef 56400) #8
  %or.i96.off102 = add nsw i16 %or.i96, -900
  call void @__sanitizer_cov_trace_const_cmp2(i16 300, i16 %or.i96.off102)
  %48 = icmp ult i16 %or.i96.off102, 300
  br i1 %48, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %49 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spi, align 8
  %51 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ts_buf42, align 4
  call fastcc void @cxd2880_spi_read_ts(ptr noundef %50, ptr noundef %52, i32 noundef 300)
  %53 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ts_buf42, align 4
  call void @dvb_dmx_swfilter(ptr noundef %demux46, ptr noundef %54, i32 noundef 56400) #8
  %or.i96.off103 = add nsw i16 %or.i96, -1200
  call void @__sanitizer_cov_trace_const_cmp2(i16 300, i16 %or.i96.off103)
  %55 = icmp ult i16 %or.i96.off103, 300
  br i1 %55, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %56 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spi, align 8
  %58 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ts_buf42, align 4
  call fastcc void @cxd2880_spi_read_ts(ptr noundef %57, ptr noundef %59, i32 noundef 300)
  %60 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ts_buf42, align 4
  call void @dvb_dmx_swfilter(ptr noundef %demux46, ptr noundef %61, i32 noundef 56400) #8
  %or.i96.off104 = add nsw i16 %or.i96, -1500
  call void @__sanitizer_cov_trace_const_cmp2(i16 300, i16 %or.i96.off104)
  %62 = icmp ult i16 %or.i96.off104, 300
  br i1 %62, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %spi, align 8
  %65 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ts_buf42, align 4
  call fastcc void @cxd2880_spi_read_ts(ptr noundef %64, ptr noundef %66, i32 noundef 300)
  %67 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ts_buf42, align 4
  call void @dvb_dmx_swfilter(ptr noundef %demux46, ptr noundef %68, i32 noundef 56400) #8
  br label %for.end

for.end:                                          ; preds = %for.body.5, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge
  %call31 = call i64 @ktime_get() #8
  br label %if.end53

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i96)
  %cmp34.not = icmp eq i16 %or.i96, 0
  br i1 %cmp34.not, label %if.else.if.else51_crit_edge, label %land.lhs.true

if.else.if.else51_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else51

land.lhs.true:                                    ; preds = %if.else
  %call36 = call i64 @ktime_get() #8
  %sub = sub i64 %call36, %start.090
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %69 = call i64 @llvm.abs.i64(i64 %sub, i1 false) #8
  %70 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %69) #14, !srcloc !238
  %71 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %69, i64 %70, i32 0) #14, !srcloc !239
  %asmresult10.i.i.i = extractvalue { i64, i32 } %71, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 499, i64 %cond213.i.i)
  %cmp38 = icmp sgt i64 %cond213.i.i, 499
  br i1 %cmp38, label %if.then40, label %land.lhs.true.if.else51_crit_edge

land.lhs.true.if.else51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else51

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %spi, align 8
  %74 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ts_buf42, align 4
  %conv44 = zext i16 %or.i96 to i32
  call fastcc void @cxd2880_spi_read_ts(ptr noundef %73, ptr noundef %75, i32 noundef %conv44)
  %76 = ptrtoint ptr %ts_buf42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ts_buf42, align 4
  %mul = mul nuw nsw i32 %conv44, 188
  call void @dvb_dmx_swfilter(ptr noundef %demux46, ptr noundef %77, i32 noundef %mul) #8
  %call50 = call i64 @ktime_get() #8
  br label %if.end53

if.else51:                                        ; preds = %land.lhs.true.if.else51_crit_edge, %if.else.if.else51_crit_edge
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then40, %for.end
  %start.1 = phi i64 [ %call31, %for.end ], [ %call50, %if.then40 ], [ %start.090, %if.else51 ]
  %call11 = call zeroext i1 @kthread_should_stop() #8
  br i1 %call11, label %if.end53.cleanup_crit_edge, label %if.end53.while.body_crit_edge

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end53.cleanup_crit_edge, %do.end18, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %retval.0.i5.i, %do.end6 ], [ %retval.0.i85, %do.end18 ], [ -22, %do.end ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxd2880_set_pid_filter(ptr noundef %spi, ptr noundef readonly %cfg) unnamed_addr #2 align 64 {
entry:
  %msg.i.i83 = alloca %struct.spi_message, align 4
  %tx.i.i84 = alloca %struct.spi_transfer, align 4
  %send_data.i85 = alloca [132 x i8], align 1
  %msg.i.i58 = alloca %struct.spi_message, align 4
  %tx.i.i59 = alloca %struct.spi_transfer, align 4
  %send_data.i60 = alloca [132 x i8], align 1
  %msg.i.i = alloca %struct.spi_message, align 4
  %tx.i.i = alloca %struct.spi_transfer, align 4
  %send_data.i = alloca [132 x i8], align 1
  %data = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data) #8
  %0 = getelementptr inbounds i8, ptr %data, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  %tobool.not = icmp eq ptr %spi, null
  br i1 %tobool.not, label %do.end, label %if.end.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.71) #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %send_data.i) #8
  %3 = getelementptr inbounds i8, ptr %send_data.i, i32 3
  %4 = getelementptr inbounds i8, ptr %send_data.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 128)
  %6 = ptrtoint ptr %send_data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 14, ptr %send_data.i, align 1
  %arrayidx20.i = getelementptr inbounds [132 x i8], ptr %send_data.i, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx20.i, align 1
  %arrayidx22.i = getelementptr inbounds [132 x i8], ptr %send_data.i, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx22.i, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i.i) #8
  %10 = getelementptr inbounds i8, ptr %tx.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %send_data.i, ptr %tx.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %len.i.i, align 4
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.cxd2880_write_spi.exit.i_crit_edge

if.end.i.i.cxd2880_write_spi.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_write_spi.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %cxd2880_write_spi.exit.i

cxd2880_write_spi.exit.i:                         ; preds = %if.end.i.i.i.i.i, %if.end.i.i.cxd2880_write_spi.exit.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef nonnull %spi, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool30.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool30.not.i, label %if.end5, label %cxd2880_write_reg.exit

cxd2880_write_reg.exit:                           ; preds = %cxd2880_write_spi.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.72, i32 noundef %call2.i.i) #11
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %send_data.i) #8
  br label %cleanup

if.end5:                                          ; preds = %cxd2880_write_spi.exit.i
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %send_data.i) #8
  %tobool6.not = icmp eq ptr %cfg, null
  br i1 %tobool6.not, label %if.end.i.i73, label %if.else

if.end.i.i73:                                     ; preds = %if.end5
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %send_data.i60) #8
  %25 = getelementptr inbounds i8, ptr %send_data.i60, i32 3
  %26 = getelementptr inbounds i8, ptr %send_data.i60, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 128)
  %28 = ptrtoint ptr %send_data.i60 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 14, ptr %send_data.i60, align 1
  %arrayidx20.i64 = getelementptr inbounds [132 x i8], ptr %send_data.i60, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx20.i64 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 80, ptr %arrayidx20.i64, align 1
  %arrayidx22.i65 = getelementptr inbounds [132 x i8], ptr %send_data.i60, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx22.i65 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx22.i65, align 1
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i58) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i.i59) #8
  %32 = getelementptr inbounds i8, ptr %tx.i.i59, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 92)
  %34 = ptrtoint ptr %tx.i.i59 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %send_data.i60, ptr %tx.i.i59, align 4
  %len.i.i67 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i59, i32 0, i32 2
  %35 = ptrtoint ptr %len.i.i67 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %len.i.i67, align 4
  %36 = getelementptr inbounds i8, ptr %msg.i.i58, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 40)
  %38 = ptrtoint ptr %msg.i.i58 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %msg.i.i58, ptr %msg.i.i58, align 4
  %prev.i.i.i.i.i68 = getelementptr inbounds %struct.list_head, ptr %msg.i.i58, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i58, ptr %prev.i.i.i.i.i68, align 4
  %resources.i.i.i.i69 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i58, i32 0, i32 10
  %40 = ptrtoint ptr %resources.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %resources.i.i.i.i69, ptr %resources.i.i.i.i69, align 4
  %prev.i2.i.i.i.i70 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i58, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %prev.i2.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %resources.i.i.i.i69, ptr %prev.i2.i.i.i.i70, align 4
  %transfer_list.i.i.i71 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i59, i32 0, i32 18
  %call.i.i.i.i.i72 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i71, ptr noundef nonnull %msg.i.i58, ptr noundef nonnull %msg.i.i58) #8
  br i1 %call.i.i.i.i.i72, label %if.end.i.i.i.i.i75, label %if.end.i.i73.cxd2880_write_spi.exit.i78_crit_edge

if.end.i.i73.cxd2880_write_spi.exit.i78_crit_edge: ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_write_spi.exit.i78

if.end.i.i.i.i.i75:                               ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %prev.i.i.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i.i71, ptr %prev.i.i.i.i.i68, align 4
  %43 = ptrtoint ptr %transfer_list.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i58, ptr %transfer_list.i.i.i71, align 4
  %prev3.i.i.i.i.i74 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i59, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i58, ptr %prev3.i.i.i.i.i74, align 4
  %45 = ptrtoint ptr %msg.i.i58 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i.i71, ptr %msg.i.i58, align 4
  br label %cxd2880_write_spi.exit.i78

cxd2880_write_spi.exit.i78:                       ; preds = %if.end.i.i.i.i.i75, %if.end.i.i73.cxd2880_write_spi.exit.i78_crit_edge
  %call2.i.i76 = call i32 @spi_sync(ptr noundef nonnull %spi, ptr noundef nonnull %msg.i.i58) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i.i59) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i76)
  %tobool30.not.i77 = icmp eq i32 %call2.i.i76, 0
  br i1 %tobool30.not.i77, label %cxd2880_write_spi.exit.i78.cxd2880_write_reg.exit82_crit_edge, label %do.end34.i80

cxd2880_write_spi.exit.i78.cxd2880_write_reg.exit82_crit_edge: ; preds = %cxd2880_write_spi.exit.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_write_reg.exit82

do.end34.i80:                                     ; preds = %cxd2880_write_spi.exit.i78
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.72, i32 noundef %call2.i.i76) #11
  br label %cxd2880_write_reg.exit82

cxd2880_write_reg.exit82:                         ; preds = %do.end34.i80, %cxd2880_write_spi.exit.i78.cxd2880_write_reg.exit82_crit_edge
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %send_data.i60) #8
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %46 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cfg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool11.not = icmp ne i8 %47, 0
  %conv12 = zext i1 %tobool11.not to i8
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv12, ptr %data, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else
  %i.0110 = phi i32 [ 0, %if.else ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx15 = getelementptr %struct.cxd2880_pid_filter_config, ptr %cfg, i32 0, i32 1, i32 %i.0110
  %49 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool19.not = icmp eq i8 %50, 0
  br i1 %tobool19.not, label %if.else29, label %if.then20

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %pid16 = getelementptr %struct.cxd2880_pid_filter_config, ptr %cfg, i32 0, i32 1, i32 %i.0110, i32 1
  %51 = ptrtoint ptr %pid16 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pid16, align 2
  %53 = lshr i16 %52, 8
  %54 = trunc i16 %53 to i8
  %conv22 = or i8 %54, 32
  %mul = shl nuw i32 %i.0110, 1
  %add = or i32 %mul, 1
  %arrayidx23 = getelementptr [65 x i8], ptr %data, i32 0, i32 %add
  %55 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv22, ptr %arrayidx23, align 1
  %conv25 = trunc i16 %52 to i8
  br label %for.inc

if.else29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mul30 = shl nuw i32 %i.0110, 1
  %add31 = or i32 %mul30, 1
  %arrayidx32 = getelementptr [65 x i8], ptr %data, i32 0, i32 %add31
  %56 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else29, %if.then20
  %mul.sink = phi i32 [ %mul, %if.then20 ], [ %mul30, %if.else29 ]
  %conv25.sink = phi i8 [ %conv25, %if.then20 ], [ 0, %if.else29 ]
  %add27 = add nuw nsw i32 %mul.sink, 2
  %arrayidx28 = getelementptr [65 x i8], ptr %data, i32 0, i32 %add27
  %57 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv25.sink, ptr %arrayidx28, align 1
  %inc = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.end.i.i98, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.i.i98:                                     ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %send_data.i85) #8
  %58 = getelementptr inbounds i8, ptr %send_data.i85, i32 3
  %59 = ptrtoint ptr %send_data.i85 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 14, ptr %send_data.i85, align 1
  %arrayidx20.i89 = getelementptr inbounds [132 x i8], ptr %send_data.i85, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx20.i89 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 80, ptr %arrayidx20.i89, align 1
  %arrayidx22.i90 = getelementptr inbounds [132 x i8], ptr %send_data.i85, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx22.i90 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 65, ptr %arrayidx22.i90, align 1
  %62 = getelementptr inbounds i8, ptr %send_data.i85, i32 68
  %63 = call ptr @memset(ptr %62, i32 255, i32 64)
  %64 = call ptr @memcpy(ptr %58, ptr %data, i32 65)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i83) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i.i84) #8
  %65 = getelementptr inbounds i8, ptr %tx.i.i84, i32 4
  %66 = call ptr @memset(ptr %65, i32 0, i32 92)
  %67 = ptrtoint ptr %tx.i.i84 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %send_data.i85, ptr %tx.i.i84, align 4
  %len.i.i92 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i84, i32 0, i32 2
  %68 = ptrtoint ptr %len.i.i92 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 68, ptr %len.i.i92, align 4
  %69 = getelementptr inbounds i8, ptr %msg.i.i83, i32 8
  %70 = call ptr @memset(ptr %69, i32 0, i32 40)
  %71 = ptrtoint ptr %msg.i.i83 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %msg.i.i83, ptr %msg.i.i83, align 4
  %prev.i.i.i.i.i93 = getelementptr inbounds %struct.list_head, ptr %msg.i.i83, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i.i83, ptr %prev.i.i.i.i.i93, align 4
  %resources.i.i.i.i94 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i83, i32 0, i32 10
  %73 = ptrtoint ptr %resources.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %resources.i.i.i.i94, ptr %resources.i.i.i.i94, align 4
  %prev.i2.i.i.i.i95 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i83, i32 0, i32 10, i32 1
  %74 = ptrtoint ptr %prev.i2.i.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %resources.i.i.i.i94, ptr %prev.i2.i.i.i.i95, align 4
  %transfer_list.i.i.i96 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i84, i32 0, i32 18
  %call.i.i.i.i.i97 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i96, ptr noundef nonnull %msg.i.i83, ptr noundef nonnull %msg.i.i83) #8
  br i1 %call.i.i.i.i.i97, label %if.end.i.i.i.i.i100, label %if.end.i.i98.cxd2880_write_spi.exit.i103_crit_edge

if.end.i.i98.cxd2880_write_spi.exit.i103_crit_edge: ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_write_spi.exit.i103

if.end.i.i.i.i.i100:                              ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %prev.i.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %transfer_list.i.i.i96, ptr %prev.i.i.i.i.i93, align 4
  %76 = ptrtoint ptr %transfer_list.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i.i83, ptr %transfer_list.i.i.i96, align 4
  %prev3.i.i.i.i.i99 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i.i84, i32 0, i32 18, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %msg.i.i83, ptr %prev3.i.i.i.i.i99, align 4
  %78 = ptrtoint ptr %msg.i.i83 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %transfer_list.i.i.i96, ptr %msg.i.i83, align 4
  br label %cxd2880_write_spi.exit.i103

cxd2880_write_spi.exit.i103:                      ; preds = %if.end.i.i.i.i.i100, %if.end.i.i98.cxd2880_write_spi.exit.i103_crit_edge
  %call2.i.i101 = call i32 @spi_sync(ptr noundef nonnull %spi, ptr noundef nonnull %msg.i.i83) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i.i84) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i101)
  %tobool30.not.i102 = icmp eq i32 %call2.i.i101, 0
  br i1 %tobool30.not.i102, label %cxd2880_write_spi.exit.i103.cxd2880_write_reg.exit107_crit_edge, label %do.end34.i105

cxd2880_write_spi.exit.i103.cxd2880_write_reg.exit107_crit_edge: ; preds = %cxd2880_write_spi.exit.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_write_reg.exit107

do.end34.i105:                                    ; preds = %cxd2880_write_spi.exit.i103
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.72, i32 noundef %call2.i.i101) #11
  br label %cxd2880_write_reg.exit107

cxd2880_write_reg.exit107:                        ; preds = %do.end34.i105, %cxd2880_write_spi.exit.i103.cxd2880_write_reg.exit107_crit_edge
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %send_data.i85) #8
  br label %cleanup

cleanup:                                          ; preds = %cxd2880_write_reg.exit107, %cxd2880_write_reg.exit82, %cxd2880_write_reg.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2.i.i, %cxd2880_write_reg.exit ], [ %call2.i.i101, %cxd2880_write_reg.exit107 ], [ %call2.i.i76, %cxd2880_write_reg.exit82 ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxd2880_spi_read_ts(ptr noundef %spi, ptr noundef %read_data, i32 noundef %packet_num) unnamed_addr #2 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  %message = alloca %struct.spi_message, align 4
  %transfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %message) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer) #8
  %0 = getelementptr inbounds i8, ptr %transfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  %tobool.not = icmp eq ptr %spi, null
  %tobool1.not = icmp eq ptr %read_data, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %packet_num)
  %tobool3.not = icmp eq i32 %packet_num, 0
  %or.cond1 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond1, label %do.end, label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.95) #11
  br label %cleanup

if.end10:                                         ; preds = %entry
  %2 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %3 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %data, align 1
  %shr = lshr i32 %packet_num, 8
  %conv = trunc i32 %shr to i8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %3, align 1
  %conv12 = trunc i32 %packet_num to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv12, ptr %2, align 1
  %7 = getelementptr inbounds i8, ptr %message, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %message, ptr %message, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %message, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %message, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %len, align 4
  %14 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %transfer, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %message, ptr noundef nonnull %message) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.spi_message_add_tail.exit_crit_edge

if.end10.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %message, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %message, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %message, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end10.spi_message_add_tail.exit_crit_edge
  %mul = mul i32 %packet_num, 188
  %len18 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %len18, align 4
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %read_data, ptr %rx_buf, align 4
  %transfer_list.i2 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i4 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i2, ptr noundef %22, ptr noundef nonnull %message) #8
  br i1 %call.i.i.i4, label %if.end.i.i.i6, label %spi_message_add_tail.exit.spi_message_add_tail.exit7_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit7_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit7

if.end.i.i.i6:                                    ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i2, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %message, ptr %transfer_list.i2, align 4
  %prev3.i.i.i5 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i5, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i2, ptr %22, align 4
  br label %spi_message_add_tail.exit7

spi_message_add_tail.exit7:                       ; preds = %if.end.i.i.i6, %spi_message_add_tail.exit.spi_message_add_tail.exit7_crit_edge
  %call21 = call i32 @spi_sync(ptr noundef nonnull %spi, ptr noundef nonnull %message) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %spi_message_add_tail.exit7.cleanup_crit_edge, label %do.end26

spi_message_add_tail.exit7.cleanup_crit_edge:     ; preds = %spi_message_add_tail.exit7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end26:                                         ; preds = %spi_message_add_tail.exit7
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.95) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %spi_message_add_tail.exit7.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %message) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype298, !1, !"__UNIQUE_ID_adapter_nrtype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr299, !1, !"__UNIQUE_ID_adapter_nr299", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_cxd2880_spi__305_665_cxd2880_spi_driver_init6, !5, !"__initcall__kmod_cxd2880_spi__305_665_cxd2880_spi_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 665, i32 1}
!6 = !{ptr @__exitcall_cxd2880_spi_driver_exit, !5, !"__exitcall_cxd2880_spi_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description306, !8, !"__UNIQUE_ID_description306", i1 false, i1 false}
!8 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 667, i32 1}
!9 = !{ptr @__UNIQUE_ID_author307, !10, !"__UNIQUE_ID_author307", i1 false, i1 false}
!10 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 668, i32 1}
!11 = !{ptr @__UNIQUE_ID_file308, !12, !"__UNIQUE_ID_file308", i1 false, i1 false}
!12 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 669, i32 1}
!13 = !{ptr @__UNIQUE_ID_license309, !12, !"__UNIQUE_ID_license309", i1 false, i1 false}
!14 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!15 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!16 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 658, i32 11}
!19 = !{ptr @cxd2880_spi_driver, !20, !"cxd2880_spi_driver", i1 false, i1 false}
!20 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 656, i32 26}
!21 = !{ptr @cxd2880_spi_id, !22, !"cxd2880_spi_id", i1 false, i1 false}
!22 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 650, i32 35}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 515, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cxd2880_spi_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @cxd2880_spi_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 523, i32 63}
!31 = !{ptr @cxd2880_spi_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 537, i32 2}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 543, i32 8}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 548, i32 3}
!38 = !{ptr @cxd2880_spi_probe._entry.7, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cxd2880_spi_probe._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 552, i32 7}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cxd2880_spi_probe._entry.12, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @cxd2880_spi_probe._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 553, i32 3}
!48 = !{ptr @cxd2880_spi_probe._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cxd2880_spi_probe._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 561, i32 3}
!52 = !{ptr @cxd2880_spi_probe._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cxd2880_spi_probe._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 574, i32 3}
!56 = !{ptr @cxd2880_spi_probe._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cxd2880_spi_probe._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 584, i32 3}
!60 = !{ptr @cxd2880_spi_probe._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cxd2880_spi_probe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 592, i32 3}
!64 = !{ptr @cxd2880_spi_probe._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cxd2880_spi_probe._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 599, i32 3}
!68 = !{ptr @cxd2880_spi_probe._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cxd2880_spi_probe._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 603, i32 2}
!72 = !{ptr @cxd2880_spi_probe._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cxd2880_spi_probe._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 330, i32 3}
!76 = !{ptr @cxd2880_start_feed._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cxd2880_start_feed._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 336, i32 3}
!80 = !{ptr @cxd2880_start_feed._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cxd2880_start_feed._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 342, i32 3}
!84 = !{ptr @cxd2880_start_feed._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @cxd2880_start_feed._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 343, i32 3}
!88 = !{ptr @cxd2880_start_feed._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @cxd2880_start_feed._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 353, i32 5}
!92 = !{ptr @cxd2880_start_feed._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cxd2880_start_feed._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 359, i32 3}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cxd2880_start_feed.__UNIQUE_ID_ddebug300, !95, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!98 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 370, i32 5}
!101 = !{ptr @cxd2880_start_feed.__UNIQUE_ID_ddebug301, !100, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!102 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 376, i32 4}
!105 = !{ptr @cxd2880_start_feed._entry.54, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cxd2880_start_feed._entry_ptr.56, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 394, i32 4}
!109 = !{ptr @cxd2880_start_feed._entry.57, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cxd2880_start_feed._entry_ptr.59, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 400, i32 37}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 404, i32 4}
!115 = !{ptr @cxd2880_start_feed._entry.61, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @cxd2880_start_feed._entry_ptr.63, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 416, i32 2}
!119 = !{ptr @cxd2880_start_feed.__UNIQUE_ID_ddebug302, !118, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!120 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 241, i32 3}
!123 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cxd2880_update_pid_filter._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @cxd2880_update_pid_filter._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 261, i32 3}
!128 = !{ptr @cxd2880_update_pid_filter._entry.68, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cxd2880_update_pid_filter._entry_ptr.70, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 204, i32 3}
!132 = !{ptr @cxd2880_set_pid_filter._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @cxd2880_set_pid_filter._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 89, i32 3}
!136 = !{ptr @cxd2880_write_reg._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @cxd2880_write_reg._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 93, i32 3}
!140 = !{ptr @cxd2880_write_reg._entry.73, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @cxd2880_write_reg._entry_ptr.75, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 98, i32 3}
!144 = !{ptr @cxd2880_write_reg._entry.76, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @cxd2880_write_reg._entry_ptr.78, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 112, i32 3}
!148 = !{ptr @cxd2880_write_reg._entry.79, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @cxd2880_write_reg._entry_ptr.81, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 68, i32 3}
!152 = !{ptr @cxd2880_write_spi._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @cxd2880_write_spi._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @cxd2880_ts_read._entry, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 276, i32 3}
!156 = !{ptr @cxd2880_ts_read._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 282, i32 3}
!159 = !{ptr @cxd2880_ts_read._entry.83, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cxd2880_ts_read._entry_ptr.85, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 291, i32 4}
!163 = !{ptr @cxd2880_ts_read._entry.86, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cxd2880_ts_read._entry_ptr.88, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 190, i32 3}
!167 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @cxd2880_spi_clear_ts_buffer._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @cxd2880_spi_clear_ts_buffer._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 163, i32 3}
!172 = !{ptr @cxd2880_spi_read_ts_buffer_info._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @cxd2880_spi_read_ts_buffer_info._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 170, i32 3}
!176 = !{ptr @cxd2880_spi_read_ts_buffer_info._entry.92, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @cxd2880_spi_read_ts_buffer_info._entry_ptr.94, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 127, i32 3}
!180 = !{ptr @cxd2880_spi_read_ts._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @cxd2880_spi_read_ts._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.97, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 131, i32 3}
!184 = !{ptr @cxd2880_spi_read_ts._entry.96, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @cxd2880_spi_read_ts._entry_ptr.98, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.100, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 150, i32 3}
!188 = !{ptr @cxd2880_spi_read_ts._entry.99, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @cxd2880_spi_read_ts._entry_ptr.101, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.102, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 428, i32 3}
!192 = !{ptr @cxd2880_stop_feed._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @cxd2880_stop_feed._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @cxd2880_stop_feed._entry.103, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 434, i32 3}
!196 = !{ptr @cxd2880_stop_feed._entry_ptr.104, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 440, i32 3}
!199 = !{ptr @cxd2880_stop_feed._entry.105, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @cxd2880_stop_feed._entry_ptr.107, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.109, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 451, i32 4}
!203 = !{ptr @cxd2880_stop_feed._entry.108, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @cxd2880_stop_feed._entry_ptr.110, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.111, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 465, i32 5}
!207 = !{ptr @cxd2880_stop_feed.__UNIQUE_ID_ddebug303, !206, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!208 = !{ptr @.str.112, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @cxd2880_stop_feed._entry.113, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 473, i32 4}
!211 = !{ptr @cxd2880_stop_feed._entry_ptr.114, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.116, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 488, i32 4}
!214 = !{ptr @cxd2880_stop_feed._entry.115, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @cxd2880_stop_feed._entry_ptr.117, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.118, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 495, i32 2}
!218 = !{ptr @cxd2880_stop_feed.__UNIQUE_ID_ddebug304, !217, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!219 = !{ptr @.str.119, !217, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.120, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 645, i32 2}
!222 = !{ptr @.str.121, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @cxd2880_spi_remove._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @cxd2880_spi_remove._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @cxd2880_spi_of_match, !226, !"cxd2880_spi_of_match", i1 false, i1 false}
!226 = !{!"../drivers/media/spi/cxd2880-spi.c", i32 500, i32 34}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{!"auto-init"}
!237 = !{i64 2148346455, i64 2148346460, i64 2148346473, i64 2148346517, i64 2148346551, i64 2148346572}
!238 = !{i64 885811, i64 885838}
!239 = !{i64 886506, i64 886533, i64 886566, i64 886587, i64 886614, i64 886640}
