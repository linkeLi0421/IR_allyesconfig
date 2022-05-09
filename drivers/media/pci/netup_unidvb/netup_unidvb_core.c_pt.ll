; ModuleID = '/llk/IR_all_yes/drivers/media/pci/netup_unidvb/netup_unidvb_core.c_pt.bc'
source_filename = "../drivers/media/pci/netup_unidvb/netup_unidvb_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.cxd2841er_config = type { i8, i32, i32 }
%struct.horus3a_config = type { i8, i8, ptr, ptr }
%struct.helene_config = type { i8, i8, ptr, ptr, i32, ptr }
%struct.lnbh25_config = type { i8, i8 }
%struct.ascot2e_config = type { i8, i8, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.netup_unidvb_dev = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.vb2_dvb_frontends], [2 x %struct.netup_i2c], ptr, [2 x %struct.netup_dma], [2 x %struct.netup_ci_state], ptr, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.netup_i2c = type { %struct.spinlock, %struct.wait_queue_head, %struct.i2c_adapter, ptr, ptr, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netup_dma = type { i8, %struct.spinlock, ptr, ptr, i32, ptr, i32, i64, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.netup_ci_state = type { %struct.dvb_ca_en50221, ptr, ptr, ptr, i32, i32 }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.netup_dma_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_dvb_frontend = type { %struct.list_head, i32, %struct.vb2_dvb }
%struct.vb2_dvb = type { ptr, ptr, %struct.vb2_queue, %struct.mutex, i32, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.131], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.131 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.132 }>
%union.anon.132 = type { i64 }
%struct.netup_unidvb_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.135, i32 }
%union.anon.135 = type { i32 }

@__param_str_spi_enable = internal constant [24 x i8] c"netup_unidvb.spi_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@spi_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_spi_enable = internal constant %struct.kernel_param { ptr @__param_str_spi_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @spi_enable } }, section "__param", align 4
@__UNIQUE_ID_spi_enabletype385 = internal constant [37 x i8] c"netup_unidvb.parmtype=spi_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_description386 = internal constant [74 x i8] c"netup_unidvb.description=Driver for NetUP Dual Universal DVB CI PCIe card\00", section ".modinfo", align 1
@__UNIQUE_ID_author387 = internal constant [34 x i8] c"netup_unidvb.author=info@netup.ru\00", section ".modinfo", align 1
@__UNIQUE_ID_version388 = internal constant [27 x i8] c"netup_unidvb.version=0.0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netup_unidvb\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file389 = internal constant [62 x i8] c"netup_unidvb.file=drivers/media/pci/netup_unidvb/netup-unidvb\00", section ".modinfo", align 1
@__UNIQUE_ID_license390 = internal constant [25 x i8] c"netup_unidvb.license=GPL\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [24 x i8] c"netup_unidvb.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype391 = internal constant [48 x i8] c"netup_unidvb.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr392 = internal constant [49 x i8] c"netup_unidvb.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_netup_unidvb__415_1026_netup_unidvb_pci_driver_init6 = internal global ptr @netup_unidvb_pci_driver_init, section ".initcall6.init", align 4
@netup_unidvb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @netup_unidvb_pci_tbl, ptr @netup_unidvb_initdev, ptr @netup_unidvb_finidev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_netup_unidvb_pci_driver_exit = internal global ptr @netup_unidvb_pci_driver_exit, section ".exitcall.exit", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@netup_unidvb_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 6997, i32 6390, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6997, i32 6391, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 791, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"netup_unidvb: expected card revision %d, got %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netup_unidvb_initdev\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/pci/netup_unidvb/netup_unidvb_core.c\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr = internal global ptr @netup_unidvb_initdev._entry, section ".printk_index", align 4
@netup_unidvb_initdev._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 793, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Please upgrade firmware!\0A\00", [38 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.10 = internal global ptr @netup_unidvb_initdev._entry.8, section ".printk_index", align 4
@netup_unidvb_initdev._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 795, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Instructions on http://www.netup.tv\0A\00", [59 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.13 = internal global ptr @netup_unidvb_initdev._entry.11, section ".printk_index", align 4
@netup_unidvb_initdev._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 813, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): board (0x%x) hardware revision 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.17 = internal global ptr @netup_unidvb_initdev._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 819, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): unable to create workqueue\0A\00", [62 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.21 = internal global ptr @netup_unidvb_initdev._entry.19, section ".printk_index", align 4
@netup_unidvb_initdev._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 830, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): PCI device (%d). Bus:0x%x Slot:0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.24 = internal global ptr @netup_unidvb_initdev._entry.22, section ".printk_index", align 4
@netup_unidvb_initdev._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 834, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): pci_enable_device failed\0A\00", [32 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.27 = internal global ptr @netup_unidvb_initdev._entry.25, section ".printk_index", align 4
@netup_unidvb_initdev._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 842, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): unknown board vendor 0x%x\00", [32 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.30 = internal global ptr @netup_unidvb_initdev._entry.28, section ".printk_index", align 4
@netup_unidvb_initdev._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 847, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): board vendor 0x%x, revision 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.33 = internal global ptr @netup_unidvb_initdev._entry.31, section ".printk_index", align 4
@netup_unidvb_initdev._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 851, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): 32bit PCI DMA is not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.36 = internal global ptr @netup_unidvb_initdev._entry.34, section ".printk_index", align 4
@netup_unidvb_initdev._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.5, i32 854, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): using 32bit PCI DMA\0A\00", [37 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.39 = internal global ptr @netup_unidvb_initdev._entry.37, section ".printk_index", align 4
@netup_unidvb_initdev._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.4, ptr @.str.5, i32 865, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): unable to request MMIO regions\0A\00", [58 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.42 = internal global ptr @netup_unidvb_initdev._entry.40, section ".printk_index", align 4
@netup_unidvb_initdev._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.4, ptr @.str.5, i32 872, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): unable to remap MMIO bar 0\0A\00", [62 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.45 = internal global ptr @netup_unidvb_initdev._entry.43, section ".printk_index", align 4
@netup_unidvb_initdev._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.4, ptr @.str.5, i32 879, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): unable to remap MMIO bar 1\0A\00", [62 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.48 = internal global ptr @netup_unidvb_initdev._entry.46, section ".printk_index", align 4
@netup_unidvb_initdev._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.4, ptr @.str.5, i32 889, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(): PCI MMIO at 0x%p (%d); 0x%p (%d); IRQ %d\00", [49 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.51 = internal global ptr @netup_unidvb_initdev._entry.49, section ".printk_index", align 4
@netup_unidvb_initdev._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.4, ptr @.str.5, i32 893, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): can't get IRQ %d\0A\00", [40 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.54 = internal global ptr @netup_unidvb_initdev._entry.52, section ".printk_index", align 4
@netup_unidvb_initdev._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.4, ptr @.str.5, i32 902, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): unable to allocate DMA buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.57 = internal global ptr @netup_unidvb_initdev._entry.55, section ".printk_index", align 4
@netup_unidvb_initdev._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.4, ptr @.str.5, i32 908, ptr @.str.60, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"netup_unidvb: SPI flash setup failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.61 = internal global ptr @netup_unidvb_initdev._entry.58, section ".printk_index", align 4
@netup_unidvb_initdev._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.4, ptr @.str.5, i32 913, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"netup_unidvb: card initialization was incomplete\0A\00", [46 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.64 = internal global ptr @netup_unidvb_initdev._entry.62, section ".printk_index", align 4
@netup_unidvb_initdev._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.4, ptr @.str.5, i32 917, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"netup_unidvb: I2C setup failed\0A\00", [32 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.67 = internal global ptr @netup_unidvb_initdev._entry.65, section ".printk_index", align 4
@netup_unidvb_initdev._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.4, ptr @.str.5, i32 925, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"netup_unidvb: DVB setup failed\0A\00", [32 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.70 = internal global ptr @netup_unidvb_initdev._entry.68, section ".printk_index", align 4
@netup_unidvb_initdev._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.4, ptr @.str.5, i32 929, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"netup_unidvb: CI setup failed\0A\00", [33 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.73 = internal global ptr @netup_unidvb_initdev._entry.71, section ".printk_index", align 4
@netup_unidvb_initdev._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.4, ptr @.str.5, i32 933, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"netup_unidvb: DMA setup failed\0A\00", [32 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.76 = internal global ptr @netup_unidvb_initdev._entry.74, section ".printk_index", align 4
@netup_unidvb_initdev._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.5, i32 937, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"netup_unidvb: device has been initialized\0A\00", [53 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.79 = internal global ptr @netup_unidvb_initdev._entry.77, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@netup_unidvb_initdev._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.4, ptr @.str.5, i32 973, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): failed to initialize device\0A\00", [61 x i8] zeroinitializer }, align 32
@netup_unidvb_initdev._entry_ptr.82 = internal global ptr @netup_unidvb_initdev._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lnbh25\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ascot2e\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"horus3a\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cxd2841er\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"helene\00", [25 x i8] zeroinitializer }, align 32
@netup_unidvb_request_modules._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.5, i32 770, ptr @.str.60, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"request_module(%s) failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"netup_unidvb_request_modules\00", [35 x i8] zeroinitializer }, align 32
@netup_unidvb_request_modules._entry_ptr = internal global ptr @netup_unidvb_request_modules._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@netup_unidvb_request_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.5, i32 742, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(): unable to request MMIO bar 0 at 0x%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netup_unidvb_request_mmio\00", [38 x i8] zeroinitializer }, align 32
@netup_unidvb_request_mmio._entry_ptr = internal global ptr @netup_unidvb_request_mmio._entry, section ".printk_index", align 4
@netup_unidvb_request_mmio._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.5, i32 750, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(): unable to request MMIO bar 1 at 0x%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@netup_unidvb_request_mmio._entry_ptr.94 = internal global ptr @netup_unidvb_request_mmio._entry.92, section ".printk_index", align 4
@netup_unidvb_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.5, i32 281, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): unknown interrupt 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"netup_unidvb_isr\00", [47 x i8] zeroinitializer }, align 32
@netup_unidvb_isr._entry_ptr = internal global ptr @netup_unidvb_isr._entry, section ".printk_index", align 4
@netup_dma_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.5, i32 224, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): addr 0x%llx not from 0x%llx:0x%llx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netup_dma_interrupt\00", [44 x i8] zeroinitializer }, align 32
@netup_dma_interrupt._entry_ptr = internal global ptr @netup_dma_interrupt._entry, section ".printk_index", align 4
@netup_dma_interrupt._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.99, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@netup_dma_interrupt._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.98, ptr @.str.5, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): lost interrupt, data size %d\0A\00", [60 x i8] zeroinitializer }, align 32
@netup_dma_interrupt._entry_ptr.102 = internal global ptr @netup_dma_interrupt._entry.100, section ".printk_index", align 4
@netup_unidvb_dev_enable.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.5, ptr @.str.104, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netup_unidvb_dev_enable\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): AVL_PCIE_IENR 0x%x GPIO_REG_IO 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@demod_config = internal global { %struct.cxd2841er_config, [20 x i8] } { %struct.cxd2841er_config { i8 -56, i32 1, i32 9 }, [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netup_unidvb_dvb_init\00", [42 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&ndev->frontends[num].lock\00", [37 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.105, ptr @.str.5, i32 408, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): unable to allocate vb2_dvb_frontend\0A\00", [53 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr = internal global ptr @netup_unidvb_dvb_init._entry, section ".printk_index", align 4
@netup_unidvb_dvb_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.5, i32 418, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): frontends has not been allocated\0A\00", [56 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.111 = internal global ptr @netup_unidvb_dvb_init._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"netup_fe%d\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxd2841er_attach_s\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"symbol:cxd2841er_attach_s\00", [38 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.105, ptr @.str.5, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013DVB: Unable to find symbol cxd2841er_attach_s()\0A\00", [45 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.117 = internal global ptr @netup_unidvb_dvb_init._entry.115, section ".printk_index", align 4
@netup_unidvb_dvb_init.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.5, ptr @.str.118, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): unable to attach DVB-S/S2 frontend\0A\00", [54 x i8] zeroinitializer }, align 32
@horus3a_conf = internal global { %struct.horus3a_config, [20 x i8] } { %struct.horus3a_config { i8 -64, i8 16, ptr null, ptr @netup_unidvb_tuner_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"horus3a_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:horus3a_attach\00", [42 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.105, ptr @.str.5, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol horus3a_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.123 = internal global ptr @netup_unidvb_dvb_init._entry.121, section ".printk_index", align 4
@netup_unidvb_dvb_init.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.5, ptr @.str.124, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s(): unable to attach HORUS3A DVB-S/S2 tuner frontend\0A\00", [40 x i8] zeroinitializer }, align 32
@helene_conf = internal global { %struct.helene_config, [44 x i8] } { %struct.helene_config { i8 -64, i8 0, ptr null, ptr @netup_unidvb_tuner_ctrl, i32 2, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"helene_attach_s\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:helene_attach_s\00", [41 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.105, ptr @.str.5, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol helene_attach_s()\0A\00", [48 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.129 = internal global ptr @netup_unidvb_dvb_init._entry.127, section ".printk_index", align 4
@netup_unidvb_dvb_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.105, ptr @.str.5, i32 453, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s(): unable to attach HELENE DVB-S/S2 tuner frontend\0A\00", [41 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.132 = internal global ptr @netup_unidvb_dvb_init._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbh25_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbh25_attach\00", [43 x i8] zeroinitializer }, align 32
@lnbh25_conf = internal global { %struct.lnbh25_config, [30 x i8] } { %struct.lnbh25_config { i8 16, i8 5 }, [30 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.105, ptr @.str.5, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbh25_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.137 = internal global ptr @netup_unidvb_dvb_init._entry.135, section ".printk_index", align 4
@netup_unidvb_dvb_init.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.5, ptr @.str.138, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): unable to attach SEC frontend\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxd2841er_attach_t_c\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"symbol:cxd2841er_attach_t_c\00", [36 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.105, ptr @.str.5, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013DVB: Unable to find symbol cxd2841er_attach_t_c()\0A\00", [43 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.143 = internal global ptr @netup_unidvb_dvb_init._entry.141, section ".printk_index", align 4
@netup_unidvb_dvb_init.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.5, ptr @.str.144, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): unable to attach Ter frontend\0A\00", [59 x i8] zeroinitializer }, align 32
@ascot2e_conf = internal global { %struct.ascot2e_config, [20 x i8] } { %struct.ascot2e_config { i8 -62, i8 0, ptr null, ptr @netup_unidvb_tuner_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ascot2e_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:ascot2e_attach\00", [42 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.105, ptr @.str.5, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol ascot2e_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.149 = internal global ptr @netup_unidvb_dvb_init._entry.147, section ".printk_index", align 4
@netup_unidvb_dvb_init.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.5, ptr @.str.150, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): unable to attach Ter tuner frontend\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"helene_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:helene_attach\00", [43 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.105, ptr @.str.5, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol helene_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.155 = internal global ptr @netup_unidvb_dvb_init._entry.153, section ".printk_index", align 4
@netup_unidvb_dvb_init._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.105, ptr @.str.5, i32 489, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): unable to attach HELENE Ter tuner frontend\0A\00", [46 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.158 = internal global ptr @netup_unidvb_dvb_init._entry.156, section ".printk_index", align 4
@netup_unidvb_dvb_init.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.5, ptr @.str.159, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): unable to register DVB bus %d\0A\00", [59 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.105, ptr @.str.5, i32 502, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DVB init done, num=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_init._entry_ptr.162 = internal global ptr @netup_unidvb_dvb_init._entry.160, section ".printk_index", align 4
@dvb_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @netup_unidvb_queue_setup, ptr null, ptr null, ptr null, ptr null, ptr @netup_unidvb_buf_prepare, ptr null, ptr null, ptr @netup_unidvb_start_streaming, ptr @netup_unidvb_stop_streaming, ptr @netup_unidvb_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@netup_unidvb_queue_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.5, i32 377, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): vb2_queue_init failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netup_unidvb_queue_init\00", [40 x i8] zeroinitializer }, align 32
@netup_unidvb_queue_init._entry_ptr = internal global ptr @netup_unidvb_queue_init._entry, section ".printk_index", align 4
@netup_unidvb_queue_setup.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.165, ptr @.str.5, ptr @.str.166, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netup_unidvb_queue_setup\00", [39 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@netup_unidvb_queue_setup.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.165, ptr @.str.5, ptr @.str.167, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s() nbuffers=%d sizes[0]=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@netup_unidvb_buf_prepare.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.5, ptr @.str.169, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netup_unidvb_buf_prepare\00", [39 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s(): buf 0x%p\0A\00", [16 x i8] zeroinitializer }, align 32
@netup_unidvb_start_streaming.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.170, ptr @.str.5, ptr @.str.166, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"netup_unidvb_start_streaming\00", [35 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.171, ptr @.str.5, ptr @.str.172, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netup_unidvb_dma_enable\00", [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): DMA%d enable %d\0A\00", [41 x i8] zeroinitializer }, align 32
@netup_unidvb_stop_streaming.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.173, ptr @.str.5, ptr @.str.166, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"netup_unidvb_stop_streaming\00", [36 x i8] zeroinitializer }, align 32
@netup_unidvb_buf_queue.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.174, ptr @.str.5, ptr @.str.175, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netup_unidvb_buf_queue\00", [41 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(): %p\0A\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@netup_unidvb_tuner_ctrl.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.176, ptr @.str.5, ptr @.str.177, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netup_unidvb_tuner_ctrl\00", [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): num %d is_dvb_tc %d\0A\00", [37 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.5, i32 653, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): unable to register DMA%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netup_unidvb_dma_init\00", [42 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_init._entry_ptr = internal global ptr @netup_unidvb_dma_init._entry, section ".printk_index", align 4
@netup_unidvb_dma_init._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.5, i32 657, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): starting DMA%d\0A\00", [42 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_init._entry_ptr.182 = internal global ptr @netup_unidvb_dma_init._entry.180, section ".printk_index", align 4
@netup_unidvb_dma_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dma->lock\00", [21 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_init.__key.184 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.185 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&dma->work)\00", [34 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_init.__key.186 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.187 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&dma->timeout)\00", [16 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_init._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.179, ptr @.str.5, i32 671, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): DMA%d buffer virt/phys 0x%p/0x%llx size %d\0A\00", [46 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_init._entry_ptr.190 = internal global ptr @netup_unidvb_dma_init._entry.188, section ".printk_index", align 4
@netup_unidvb_dma_worker.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.191, ptr @.str.5, ptr @.str.192, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netup_unidvb_dma_worker\00", [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): data_size == 0\0A\00", [42 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_worker.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.191, ptr @.str.5, ptr @.str.193, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): no free buffers\0A\00", [41 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_worker.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.191, ptr @.str.5, ptr @.str.194, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.194 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): buffer overflow, size %d\0A\00", [32 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_worker.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.191, ptr @.str.5, ptr @.str.195, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): buffer %p done, size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@netup_unidvb_ring_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.5, i32 547, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): buffer is NULL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netup_unidvb_ring_copy\00", [41 x i8] zeroinitializer }, align 32
@netup_unidvb_ring_copy._entry_ptr = internal global ptr @netup_unidvb_ring_copy._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.198 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_timeout.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.199, ptr @.str.5, ptr @.str.166, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.199 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netup_unidvb_dma_timeout\00", [39 x i8] zeroinitializer }, align 32
@netup_unidvb_dma_fini.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.200, ptr @.str.5, ptr @.str.201, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.200 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netup_unidvb_dma_fini\00", [42 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): num %d\0A\00", [18 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.5, i32 514, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): unable to unregister DVB bus %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netup_unidvb_dvb_fini\00", [42 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_fini._entry_ptr = internal global ptr @netup_unidvb_dvb_fini._entry, section ".printk_index", align 4
@netup_unidvb_dvb_fini._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.203, ptr @.str.5, i32 519, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): DVB bus %d unregistered\0A\00", [33 x i8] zeroinitializer }, align 32
@netup_unidvb_dvb_fini._entry_ptr.206 = internal global ptr @netup_unidvb_dvb_fini._entry.204, section ".printk_index", align 4
@netup_unidvb_finidev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.5, i32 981, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): trying to stop device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netup_unidvb_finidev\00", [43 x i8] zeroinitializer }, align 32
@netup_unidvb_finidev._entry_ptr = internal global ptr @netup_unidvb_finidev._entry, section ".printk_index", align 4
@netup_unidvb_finidev._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.208, ptr @.str.5, i32 1008, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): device has been successfully stopped\0A\00", [52 x i8] zeroinitializer }, align 32
@netup_unidvb_finidev._entry_ptr.211 = internal global ptr @netup_unidvb_finidev._entry.209, section ".printk_index", align 4
@___asan_gen_.212 = private unnamed_addr constant [11 x i8] c"spi_enable\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 31, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 36, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant [24 x i8] c"netup_unidvb_pci_driver\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 1019, i32 26 }
@___asan_gen_.227 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 39, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant [21 x i8] c"netup_unidvb_pci_tbl\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 1012, i32 35 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 789, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 792, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 794, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 811, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 816, i32 13 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 818, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 829, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 833, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 841, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 845, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 850, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 854, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 864, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 871, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 878, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 884, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 892, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 901, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 907, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 912, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 917, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 925, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 929, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 933, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 936, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 972, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 761, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 761, i32 13 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 761, i32 24 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 761, i32 35 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 761, i32 48 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 769, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 739, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 747, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 279, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 221, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 232, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 182, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [13 x i8] c"demod_config\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 114, i32 32 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 396, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 400, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 406, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 416, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 425, i32 38 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 429, i32 25 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 432, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant [13 x i8] c"horus3a_conf\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 120, i32 30 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 440, i32 8 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 442, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant [12 x i8] c"helene_conf\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 131, i32 29 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 449, i32 8 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 451, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant [12 x i8] c"lnbh25_conf\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 137, i32 29 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 458, i32 7 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 460, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 466, i32 25 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 469, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant [13 x i8] c"ascot2e_conf\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 126, i32 30 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 476, i32 8 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 478, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 485, i32 8 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 487, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 497, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 502, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant [9 x i8] c"dvb_qops\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 353, i32 29 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 376, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 297, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 303, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 315, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 339, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 194, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 348, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 328, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 151, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 652, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 657, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 660, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 661, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 663, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 668, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 587, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 593, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 600, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 609, i32 4 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 546, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.753, i32 1163, i32 7 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 642, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 695, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 512, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 518, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 981, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.791 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.792 = private constant [54 x i8] c"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.792, i32 1007, i32 2 }
@llvm.compiler.used = appending global [260 x ptr] [ptr @__UNIQUE_ID_adapter_nr392, ptr @__UNIQUE_ID_adapter_nrtype391, ptr @__UNIQUE_ID_author387, ptr @__UNIQUE_ID_description386, ptr @__UNIQUE_ID_file389, ptr @__UNIQUE_ID_license390, ptr @__UNIQUE_ID_spi_enabletype385, ptr @__UNIQUE_ID_version388, ptr @__exitcall_netup_unidvb_pci_driver_exit, ptr @__initcall__kmod_netup_unidvb__415_1026_netup_unidvb_pci_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_spi_enable, ptr @netup_dma_interrupt._entry, ptr @netup_dma_interrupt._entry.100, ptr @netup_dma_interrupt._entry_ptr, ptr @netup_dma_interrupt._entry_ptr.102, ptr @netup_unidvb_dma_init._entry, ptr @netup_unidvb_dma_init._entry.180, ptr @netup_unidvb_dma_init._entry.188, ptr @netup_unidvb_dma_init._entry_ptr, ptr @netup_unidvb_dma_init._entry_ptr.182, ptr @netup_unidvb_dma_init._entry_ptr.190, ptr @netup_unidvb_dvb_fini._entry, ptr @netup_unidvb_dvb_fini._entry.204, ptr @netup_unidvb_dvb_fini._entry_ptr, ptr @netup_unidvb_dvb_fini._entry_ptr.206, ptr @netup_unidvb_dvb_init._entry, ptr @netup_unidvb_dvb_init._entry.109, ptr @netup_unidvb_dvb_init._entry.115, ptr @netup_unidvb_dvb_init._entry.121, ptr @netup_unidvb_dvb_init._entry.127, ptr @netup_unidvb_dvb_init._entry.130, ptr @netup_unidvb_dvb_init._entry.135, ptr @netup_unidvb_dvb_init._entry.141, ptr @netup_unidvb_dvb_init._entry.147, ptr @netup_unidvb_dvb_init._entry.153, ptr @netup_unidvb_dvb_init._entry.156, ptr @netup_unidvb_dvb_init._entry.160, ptr @netup_unidvb_dvb_init._entry_ptr, ptr @netup_unidvb_dvb_init._entry_ptr.111, ptr @netup_unidvb_dvb_init._entry_ptr.117, ptr @netup_unidvb_dvb_init._entry_ptr.123, ptr @netup_unidvb_dvb_init._entry_ptr.129, ptr @netup_unidvb_dvb_init._entry_ptr.132, ptr @netup_unidvb_dvb_init._entry_ptr.137, ptr @netup_unidvb_dvb_init._entry_ptr.143, ptr @netup_unidvb_dvb_init._entry_ptr.149, ptr @netup_unidvb_dvb_init._entry_ptr.155, ptr @netup_unidvb_dvb_init._entry_ptr.158, ptr @netup_unidvb_dvb_init._entry_ptr.162, ptr @netup_unidvb_finidev._entry, ptr @netup_unidvb_finidev._entry.209, ptr @netup_unidvb_finidev._entry_ptr, ptr @netup_unidvb_finidev._entry_ptr.211, ptr @netup_unidvb_initdev._entry, ptr @netup_unidvb_initdev._entry.11, ptr @netup_unidvb_initdev._entry.14, ptr @netup_unidvb_initdev._entry.19, ptr @netup_unidvb_initdev._entry.22, ptr @netup_unidvb_initdev._entry.25, ptr @netup_unidvb_initdev._entry.28, ptr @netup_unidvb_initdev._entry.31, ptr @netup_unidvb_initdev._entry.34, ptr @netup_unidvb_initdev._entry.37, ptr @netup_unidvb_initdev._entry.40, ptr @netup_unidvb_initdev._entry.43, ptr @netup_unidvb_initdev._entry.46, ptr @netup_unidvb_initdev._entry.49, ptr @netup_unidvb_initdev._entry.52, ptr @netup_unidvb_initdev._entry.55, ptr @netup_unidvb_initdev._entry.58, ptr @netup_unidvb_initdev._entry.62, ptr @netup_unidvb_initdev._entry.65, ptr @netup_unidvb_initdev._entry.68, ptr @netup_unidvb_initdev._entry.71, ptr @netup_unidvb_initdev._entry.74, ptr @netup_unidvb_initdev._entry.77, ptr @netup_unidvb_initdev._entry.8, ptr @netup_unidvb_initdev._entry.80, ptr @netup_unidvb_initdev._entry_ptr, ptr @netup_unidvb_initdev._entry_ptr.10, ptr @netup_unidvb_initdev._entry_ptr.13, ptr @netup_unidvb_initdev._entry_ptr.17, ptr @netup_unidvb_initdev._entry_ptr.21, ptr @netup_unidvb_initdev._entry_ptr.24, ptr @netup_unidvb_initdev._entry_ptr.27, ptr @netup_unidvb_initdev._entry_ptr.30, ptr @netup_unidvb_initdev._entry_ptr.33, ptr @netup_unidvb_initdev._entry_ptr.36, ptr @netup_unidvb_initdev._entry_ptr.39, ptr @netup_unidvb_initdev._entry_ptr.42, ptr @netup_unidvb_initdev._entry_ptr.45, ptr @netup_unidvb_initdev._entry_ptr.48, ptr @netup_unidvb_initdev._entry_ptr.51, ptr @netup_unidvb_initdev._entry_ptr.54, ptr @netup_unidvb_initdev._entry_ptr.57, ptr @netup_unidvb_initdev._entry_ptr.61, ptr @netup_unidvb_initdev._entry_ptr.64, ptr @netup_unidvb_initdev._entry_ptr.67, ptr @netup_unidvb_initdev._entry_ptr.70, ptr @netup_unidvb_initdev._entry_ptr.73, ptr @netup_unidvb_initdev._entry_ptr.76, ptr @netup_unidvb_initdev._entry_ptr.79, ptr @netup_unidvb_initdev._entry_ptr.82, ptr @netup_unidvb_isr._entry, ptr @netup_unidvb_isr._entry_ptr, ptr @netup_unidvb_pci_driver_exit, ptr @netup_unidvb_queue_init._entry, ptr @netup_unidvb_queue_init._entry_ptr, ptr @netup_unidvb_request_mmio._entry, ptr @netup_unidvb_request_mmio._entry.92, ptr @netup_unidvb_request_mmio._entry_ptr, ptr @netup_unidvb_request_mmio._entry_ptr.94, ptr @netup_unidvb_request_modules._entry, ptr @netup_unidvb_request_modules._entry_ptr, ptr @netup_unidvb_ring_copy._entry, ptr @netup_unidvb_ring_copy._entry_ptr, ptr @spi_enable, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @netup_unidvb_pci_driver, ptr @adapter_nr, ptr @netup_unidvb_pci_tbl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @netup_dma_interrupt._rs, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @demod_config, ptr @.str.105, ptr @netup_unidvb_dvb_init.__key, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @horus3a_conf, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @helene_conf, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @lnbh25_conf, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @ascot2e_conf, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @dvb_qops, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @netup_unidvb_dma_init.__key, ptr @.str.183, ptr @netup_unidvb_dma_init.__key.184, ptr @.str.185, ptr @netup_unidvb_dma_init.__key.186, ptr @.str.187, ptr @.str.189, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.210], section "llvm.metadata"
@0 = internal global [194 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_initdev._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_request_modules._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_request_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_request_mmio._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_dma_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_dma_interrupt._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_dma_interrupt._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @horus3a_conf to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_conf to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lnbh25_conf to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ascot2e_conf to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_init._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_queue_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dma_init._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dma_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dma_init.__key.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dma_init.__key.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dma_init._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_ring_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_dvb_fini._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_finidev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_unidvb_finidev._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @netup_unidvb_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @netup_unidvb_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @netup_unidvb_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_initdev(ptr noundef %pci_dev, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %board_revision = alloca i8, align 1
  %board_vendor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %board_revision) #8
  %0 = ptrtoint ptr %board_revision to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %board_revision, align 1, !annotation !399
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %board_vendor) #8
  %1 = ptrtoint ptr %board_vendor to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %board_vendor, align 2, !annotation !399
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.83, i32 noundef %call.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %call.1.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.84) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %do.end.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1.i

do.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.84, i32 noundef %call.1.i) #11
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %do.end.1.i, %if.end.i.if.end.1.i_crit_edge
  %call.2.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %do.end.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2.i

do.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.85, i32 noundef %call.2.i) #11
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %do.end.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %call.3.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.2.i.if.end.3.i_crit_edge, label %do.end.3.i

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3.i

do.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, i32 noundef %call.3.i) #11
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %do.end.3.i, %if.end.2.i.if.end.3.i_crit_edge
  %call.4.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.87) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.3.i.netup_unidvb_request_modules.exit_crit_edge, label %do.end.4.i

if.end.3.i.netup_unidvb_request_modules.exit_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netup_unidvb_request_modules.exit

do.end.4.i:                                       ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.87, i32 noundef %call.4.i) #11
  br label %netup_unidvb_request_modules.exit

netup_unidvb_request_modules.exit:                ; preds = %do.end.4.i, %if.end.3.i.netup_unidvb_request_modules.exit_crit_edge
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 12
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %netup_unidvb_request_modules.exit.if.end_crit_edge, label %do.end

netup_unidvb_request_modules.exit.if.end_crit_edge: ; preds = %netup_unidvb_request_modules.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %netup_unidvb_request_modules.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef %conv) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  store i32 1, ptr @spi_enable, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %netup_unidvb_request_modules.exit.if.end_crit_edge
  %old_firmware.0 = phi i32 [ 1, %do.end ], [ 0, %netup_unidvb_request_modules.exit.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4272) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.do.end324_crit_edge, label %if.end15

if.end.do.end324_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end324

if.end15:                                         ; preds = %if.end
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6390, i16 %6)
  %cmp17 = icmp eq i16 %6, 6390
  %spec.select = select i1 %cmp17, i32 6390, i32 6391
  %7 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  %conv27 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, i32 noundef %conv27, i32 noundef %spec.select) #11
  %old_fw = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %old_fw to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %old_firmware.0, ptr %old_fw, align 4
  %call29 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.18, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.1) #8
  %wq = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 15
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call29, ptr %wq, align 8
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4) #11
  br label %wq_create_err

if.end37:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pci_dev, ptr %call7.i.i, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 1
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %number, align 4
  %conv39 = zext i8 %15 to i32
  %pci_bus = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %pci_bus to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv39, ptr %pci_bus, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 6
  %17 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %18, 3
  %and = and i32 %shr, 31
  %pci_slot = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %pci_slot to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %pci_slot, align 8
  %and41 = and i32 %18, 7
  %pci_func = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %pci_func to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and41, ptr %pci_func, align 4
  %mul = mul nuw nsw i32 %conv39, 10
  %add = add nuw nsw i32 %and, %mul
  %board_num = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %board_num to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %board_num, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.4, i32 noundef %add, i32 noundef %conv39, i32 noundef %and) #11
  %call51 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.4) #11
  br label %pci_enable_err

if.end58:                                         ; preds = %if.end37
  %call59 = call i32 @pci_read_config_byte(ptr noundef %pci_dev, i32 noundef 8, ptr noundef nonnull %board_revision) #8
  %call60 = call i32 @pci_read_config_word(ptr noundef %pci_dev, i32 noundef 0, ptr noundef nonnull %board_vendor) #8
  %23 = ptrtoint ptr %board_vendor to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %board_vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6997, i16 %24)
  %cmp62.not = icmp eq i16 %24, 6997
  br i1 %cmp62.not, label %do.end73, label %do.end67

do.end67:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %conv61 = zext i16 %24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.4, i32 noundef %conv61) #11
  br label %pci_detect_err

do.end73:                                         ; preds = %if.end58
  %25 = ptrtoint ptr %board_revision to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %board_revision, align 1
  %conv76 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.4, i32 noundef 6997, i32 noundef %conv76) #11
  call void @pci_set_master(ptr noundef %pci_dev) #8
  %call78 = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end84, label %do.end89

do.end84:                                         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4) #11
  br label %pci_detect_err

do.end89:                                         ; preds = %do.end73
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.4) #11
  %call91 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %pci_dev, i32 noundef 8, i16 noundef zeroext 30736, i16 noundef zeroext 0) #8
  %call92 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %pci_dev, i32 noundef 40, i16 noundef zeroext 15, i16 noundef zeroext 2) #8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47
  %27 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47, i32 0, i32 1
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  %sub.i = sub i32 1, %28
  %add.i = add i32 %sub.i, %30
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call.i463 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %28, i32 noundef %cond.i, ptr noundef nonnull @.str.1, i32 noundef 0) #8
  %tobool.not.i464 = icmp eq ptr %call.i463, null
  br i1 %tobool.not.i464, label %do.end.i465, label %if.end.i466

do.end.i465:                                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %resource.i, align 8
  %conv.i = zext i32 %32 to i64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i64 noundef %conv.i) #11
  br label %do.end98

if.end.i466:                                      ; preds = %do.end89
  %arrayidx13.i = getelementptr %struct.pci_dev, ptr %pci_dev, i32 0, i32 47, i32 1
  %33 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx13.i, align 8
  %end17.i = getelementptr %struct.pci_dev, ptr %pci_dev, i32 0, i32 47, i32 1, i32 1
  %35 = ptrtoint ptr %end17.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp18.i = icmp eq i32 %36, 0
  %sub28.i = sub i32 1, %34
  %add29.i = add i32 %sub28.i, %36
  %cond31.i = select i1 %cmp18.i, i32 0, i32 %add29.i
  %call32.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %34, i32 noundef %cond31.i, ptr noundef nonnull @.str.1, i32 noundef 0) #8
  %tobool33.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool33.not.i, label %do.end36.i, label %if.end100

do.end36.i:                                       ; preds = %if.end.i466
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx13.i, align 8
  %conv41.i = zext i32 %38 to i64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91, i64 noundef %conv41.i) #11
  %39 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resource.i, align 8
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp48.i = icmp eq i32 %42, 0
  %sub58.i = sub i32 1, %40
  %add59.i = add i32 %sub58.i, %42
  %cond61.i = select i1 %cmp48.i, i32 0, i32 %add59.i
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %40, i32 noundef %cond61.i) #8
  br label %do.end98

do.end98:                                         ; preds = %do.end36.i, %do.end.i465
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.4) #11
  br label %pci_detect_err

if.end100:                                        ; preds = %if.end.i466
  %43 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %resource.i, align 8
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp103 = icmp eq i32 %46, 0
  %sub = sub i32 1, %44
  %add111 = add i32 %sub, %46
  %cond = select i1 %cmp103, i32 0, i32 %add111
  %call112 = call ptr @ioremap(i32 noundef %44, i32 noundef %cond) #8
  %lmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %lmmio0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call112, ptr %lmmio0, align 8
  %tobool114.not = icmp eq ptr %call112, null
  br i1 %tobool114.not, label %do.end118, label %if.end120

do.end118:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.4) #11
  br label %pci_bar0_error

if.end120:                                        ; preds = %if.end100
  %48 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx13.i, align 8
  %50 = ptrtoint ptr %end17.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %end17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp127 = icmp eq i32 %51, 0
  %sub137 = sub i32 1, %49
  %add138 = add i32 %sub137, %51
  %cond140 = select i1 %cmp127, i32 0, i32 %add138
  %call141 = call ptr @ioremap(i32 noundef %49, i32 noundef %cond140) #8
  %lmmio1 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %lmmio1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call141, ptr %lmmio1, align 8
  %tobool143.not = icmp eq ptr %call141, null
  br i1 %tobool143.not, label %do.end147, label %if.end149

do.end147:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.4) #11
  br label %pci_bar1_error

if.end149:                                        ; preds = %if.end120
  %53 = ptrtoint ptr %lmmio0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lmmio0, align 8
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %bmmio0, align 4
  %bmmio1 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 9
  %56 = ptrtoint ptr %bmmio1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call141, ptr %bmmio1, align 4
  %57 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp160 = icmp eq i32 %58, 0
  br i1 %cmp160, label %if.end149.cond.end172_crit_edge, label %cond.false163

if.end149.cond.end172_crit_edge:                  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end172

cond.false163:                                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %resource.i, align 8
  %sub170 = add i32 %58, 1
  %add171 = sub i32 %sub170, %60
  br label %cond.end172

cond.end172:                                      ; preds = %cond.false163, %if.end149.cond.end172_crit_edge
  %cond173 = phi i32 [ %add171, %cond.false163 ], [ 0, %if.end149.cond.end172_crit_edge ]
  %61 = ptrtoint ptr %end17.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %end17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp178 = icmp eq i32 %62, 0
  br i1 %cmp178, label %cond.end172.cond.end190_crit_edge, label %cond.false181

cond.end172.cond.end190_crit_edge:                ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end190

cond.false181:                                    ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx13.i, align 8
  %sub188 = add i32 %62, 1
  %add189 = sub i32 %sub188, %64
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false181, %cond.end172.cond.end190_crit_edge
  %cond191 = phi i32 [ %add189, %cond.false181 ], [ 0, %cond.end172.cond.end190_crit_edge ]
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.4, ptr noundef %54, i32 noundef %cond173, ptr noundef nonnull %call141, i32 noundef %cond191, i32 noundef %66) #11
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq, align 4
  %call.i467 = call i32 @request_threaded_irq(i32 noundef %68, ptr noundef nonnull @netup_unidvb_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %pci_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i467)
  %cmp194 = icmp slt i32 %call.i467, 0
  br i1 %cmp194, label %do.end199, label %if.end202

do.end199:                                        ; preds = %cond.end190
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.4, i32 noundef %70) #11
  br label %irq_request_err

if.end202:                                        ; preds = %cond.end190
  %dma_size = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 12
  %71 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 385024, ptr %dma_size, align 8
  %dma_phys = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 11
  %call.i468 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 385024, ptr noundef %dma_phys, i32 noundef 3264, i32 noundef 0) #8
  %dma_virt = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 10
  %72 = ptrtoint ptr %dma_virt to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i468, ptr %dma_virt, align 8
  %tobool207.not = icmp eq ptr %call.i468, null
  br i1 %tobool207.not, label %do.end211, label %if.end213

do.end211:                                        ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.4) #11
  br label %dma_alloc_err

if.end213:                                        ; preds = %if.end202
  call fastcc void @netup_unidvb_dev_enable(ptr noundef nonnull %call7.i.i)
  %73 = load i32, ptr @spi_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool214.not = icmp eq i32 %73, 0
  br i1 %tobool214.not, label %if.end213.if.end222_crit_edge, label %land.lhs.true

if.end213.if.end222_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

land.lhs.true:                                    ; preds = %if.end213
  %call215 = call i32 @netup_spi_init(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %land.lhs.true.if.end222_crit_edge, label %do.end220

land.lhs.true.if.end222_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

do.end220:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.59) #11
  br label %spi_setup_err

if.end222:                                        ; preds = %land.lhs.true.if.end222_crit_edge, %if.end213.if.end222_crit_edge
  br i1 %cmp.not, label %if.end229, label %do.end227

do.end227:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #11
  br label %cleanup

if.end229:                                        ; preds = %if.end222
  %call230 = call i32 @netup_i2c_register(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %do.body238, label %do.end235

do.end235:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66) #11
  br label %i2c_setup_err

do.body238:                                       ; preds = %if.end229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %75, i32 18580
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 1536) #8, !srcloc !401
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %call242 = call fastcc i32 @netup_unidvb_dvb_setup(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %if.end249, label %do.end247

do.end247:                                        ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69) #11
  br label %dvb_setup_err

if.end249:                                        ; preds = %do.body238
  %call250 = call fastcc i32 @netup_unidvb_ci_setup(ptr noundef nonnull %call7.i.i, ptr noundef %pci_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %if.end257, label %do.end255

do.end255:                                        ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72) #11
  call fastcc void @netup_unidvb_dvb_fini(ptr noundef nonnull %call7.i.i, i32 noundef 0)
  call fastcc void @netup_unidvb_dvb_fini(ptr noundef nonnull %call7.i.i, i32 noundef 1)
  br label %dvb_setup_err

if.end257:                                        ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @netup_unidvb_dma_setup(ptr noundef nonnull %call7.i.i)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.78) #11
  br label %cleanup

dvb_setup_err:                                    ; preds = %do.end255, %do.end247
  call void @netup_i2c_unregister(ptr noundef nonnull %call7.i.i) #8
  br label %i2c_setup_err

i2c_setup_err:                                    ; preds = %dvb_setup_err, %do.end235
  %spi = getelementptr inbounds %struct.netup_unidvb_dev, ptr %call7.i.i, i32 0, i32 18
  %76 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spi, align 8
  %tobool270.not = icmp eq ptr %77, null
  br i1 %tobool270.not, label %i2c_setup_err.spi_setup_err_crit_edge, label %if.then271

i2c_setup_err.spi_setup_err_crit_edge:            ; preds = %i2c_setup_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_setup_err

if.then271:                                       ; preds = %i2c_setup_err
  call void @__sanitizer_cov_trace_pc() #10
  call void @netup_spi_release(ptr noundef nonnull %call7.i.i) #8
  br label %spi_setup_err

spi_setup_err:                                    ; preds = %if.then271, %i2c_setup_err.spi_setup_err_crit_edge, %do.end220
  %78 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_size, align 8
  %80 = ptrtoint ptr %dma_virt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dma_virt, align 8
  %82 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %79, ptr noundef %81, i32 noundef %83, i32 noundef 0) #8
  br label %dma_alloc_err

dma_alloc_err:                                    ; preds = %spi_setup_err, %do.end211
  %84 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq, align 4
  %call278 = call ptr @free_irq(i32 noundef %85, ptr noundef %pci_dev) #8
  br label %irq_request_err

irq_request_err:                                  ; preds = %dma_alloc_err, %do.end199
  %86 = ptrtoint ptr %lmmio1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lmmio1, align 8
  call void @iounmap(ptr noundef %87) #8
  br label %pci_bar1_error

pci_bar1_error:                                   ; preds = %irq_request_err, %do.end147
  %88 = ptrtoint ptr %lmmio0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lmmio0, align 8
  call void @iounmap(ptr noundef %89) #8
  br label %pci_bar0_error

pci_bar0_error:                                   ; preds = %pci_bar1_error, %do.end118
  %90 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %resource.i, align 8
  %92 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp287 = icmp eq i32 %93, 0
  %sub297 = sub i32 1, %91
  %add298 = add i32 %sub297, %93
  %cond300 = select i1 %cmp287, i32 0, i32 %add298
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %91, i32 noundef %cond300) #8
  %94 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx13.i, align 8
  %96 = ptrtoint ptr %end17.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %end17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp307 = icmp eq i32 %97, 0
  %sub317 = sub i32 1, %95
  %add318 = add i32 %sub317, %97
  %cond320 = select i1 %cmp307, i32 0, i32 %add318
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %95, i32 noundef %cond320) #8
  br label %pci_detect_err

pci_detect_err:                                   ; preds = %pci_bar0_error, %do.end98, %do.end84, %do.end67
  call void @pci_disable_device(ptr noundef %pci_dev) #8
  br label %pci_enable_err

pci_enable_err:                                   ; preds = %pci_detect_err, %do.end56
  %98 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %driver_data.i.i, align 4
  %99 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wq, align 8
  call void @destroy_workqueue(ptr noundef %100) #8
  br label %wq_create_err

wq_create_err:                                    ; preds = %pci_enable_err, %do.end35
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %do.end324

do.end324:                                        ; preds = %wq_create_err, %if.end.do.end324_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.4) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end324, %if.end257, %do.end227
  %retval.0 = phi i32 [ -5, %do.end324 ], [ 0, %do.end227 ], [ 0, %if.end257 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %board_vendor) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %board_revision) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netup_unidvb_finidev(ptr noundef %pci_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.208) #11
  %old_fw = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %old_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %old_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @netup_unidvb_dma_fini(ptr noundef %1, i32 noundef 0)
  tail call fastcc void @netup_unidvb_dma_fini(ptr noundef %1, i32 noundef 1)
  tail call void @netup_unidvb_ci_unregister(ptr noundef %1, i32 noundef 0) #8
  tail call void @netup_unidvb_ci_unregister(ptr noundef %1, i32 noundef 1) #8
  %arrayidx.i = getelementptr %struct.netup_unidvb_dev, ptr %1, i32 0, i32 13, i32 0
  tail call void @vb2_dvb_unregister_bus(ptr noundef %arrayidx.i) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5.i, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.203, i32 noundef 0) #11
  %arrayidx.i74 = getelementptr %struct.netup_unidvb_dev, ptr %1, i32 0, i32 13, i32 1
  tail call void @vb2_dvb_unregister_bus(ptr noundef %arrayidx.i74) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dev5.i75 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5.i75, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.203, i32 noundef 1) #11
  tail call void @netup_i2c_unregister(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spi = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi, align 8
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.do.body4_crit_edge, label %if.then2

if.end.do.body4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netup_spi_release(ptr noundef %1) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then2, %if.end.do.body4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !402
  tail call void @arm_heavy_mb() #8
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 18582
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 -1) #8, !srcloc !401
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %dma_size = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_size, align 8
  %dma_virt = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %dma_virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_virt, align 8
  %dma_phys = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8, i32 noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %pci_dev) #8
  %lmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %lmmio0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio0, align 8
  tail call void @iounmap(ptr noundef %23) #8
  %lmmio1 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %lmmio1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio1, align 8
  tail call void @iounmap(ptr noundef %25) #8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47
  %26 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47, i32 0, i32 1
  %28 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  %sub = sub i32 1, %27
  %add = add i32 %sub, %29
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %27, i32 noundef %cond) #8
  %arrayidx19 = getelementptr %struct.pci_dev, ptr %pci_dev, i32 0, i32 47, i32 1
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx19, align 8
  %end23 = getelementptr %struct.pci_dev, ptr %pci_dev, i32 0, i32 47, i32 1, i32 1
  %32 = ptrtoint ptr %end23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp24 = icmp eq i32 %33, 0
  %sub33 = sub i32 1, %31
  %add34 = add i32 %sub33, %33
  %cond36 = select i1 %cmp24, i32 0, i32 %add34
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %31, i32 noundef %cond36) #8
  tail call void @pci_disable_device(ptr noundef %pci_dev) #8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %driver_data.i.i, align 4
  %wq = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %36) #8
  tail call void @kfree(ptr noundef %1) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.208) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev_id, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !403
  tail call void @arm_heavy_mb() #8
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !404
  %4 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio0, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !405
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !406
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not = icmp sgt i32 %6, -1
  br i1 %cmp.not, label %entry.do.body58_crit_edge, label %if.then

entry.do.body58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bmmio0, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 18576
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #8, !srcloc !407
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !408
  %conv = zext i16 %10 to i32
  %and12 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi, align 8
  %call14 = tail call i32 @netup_spi_interrupt(ptr noundef %12) #8
  br label %do.body58

if.else:                                          ; preds = %if.then
  %old_fw = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %old_fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else.do.end54_crit_edge

if.else.do.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

if.then16:                                        ; preds = %if.else
  %and17 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 14
  %call20 = tail call i32 @netup_i2c_interrupt(ptr noundef %i2c) #8
  br label %do.body58

if.else21:                                        ; preds = %if.then16
  %and22 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else28, label %if.then24

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26 = getelementptr %struct.netup_unidvb_dev, ptr %1, i32 0, i32 14, i32 1
  %call27 = tail call i32 @netup_i2c_interrupt(ptr noundef %arrayidx26) #8
  br label %do.body58

if.else28:                                        ; preds = %if.else21
  %and29 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else34, label %if.then31

if.then31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  %dma = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 16
  tail call fastcc void @netup_dma_interrupt(ptr noundef %dma)
  br label %do.body58

if.else34:                                        ; preds = %if.else28
  %and35 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else41, label %if.then37

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx39 = getelementptr %struct.netup_unidvb_dev, ptr %1, i32 0, i32 16, i32 1
  tail call fastcc void @netup_dma_interrupt(ptr noundef %arrayidx39)
  br label %do.body58

if.else41:                                        ; preds = %if.else34
  %and42 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else41.do.end54_crit_edge, label %if.then44

if.else41.do.end54_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 @netup_ci_interrupt(ptr noundef %1) #8
  br label %do.body58

do.end54:                                         ; preds = %if.else41.do.end54_crit_edge, %if.else.do.end54_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %dev_id, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef %conv) #11
  br label %do.body58

do.body58:                                        ; preds = %do.end54, %if.then44, %if.then37, %if.then31, %if.then24, %if.then19, %if.then13, %entry.do.body58_crit_edge
  %iret.0 = phi i32 [ %call14, %if.then13 ], [ 0, %do.end54 ], [ %call20, %if.then19 ], [ %call27, %if.then24 ], [ 1, %if.then31 ], [ 1, %if.then37 ], [ %call45, %if.then44 ], [ 0, %entry.do.body58_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !409
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmmio0, align 4
  %add.ptr62 = getelementptr i8, ptr %16, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 -2147483648) #8, !srcloc !404
  ret i32 %iret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netup_unidvb_dev_enable(ptr nocapture noundef readonly %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !410
  tail call void @arm_heavy_mb() #8
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 7
  %0 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147483648) #8, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !411
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio0, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 18560
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 0) #8, !srcloc !412
  tail call void @msleep(i32 noundef 100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !413
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio0, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 18560
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 63) #8, !srcloc !412
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dev_enable.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dev_enable, %if.then)) #8
          to label %do.end28 [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio0, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 80
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !405
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !415
  %12 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio0, align 4
  %add.ptr22 = getelementptr i8, ptr %13, i32 18560
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22) #8, !srcloc !416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  %conv26 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dev_enable.__UNIQUE_ID_ddebug394, ptr noundef %dev, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103, i32 noundef %11, i32 noundef %conv26) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netup_spi_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netup_i2c_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netup_unidvb_dvb_setup(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @netup_unidvb_dvb_init(ptr noundef %ndev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @netup_unidvb_dvb_init(ptr noundef %ndev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 13, i32 0
  tail call void @vb2_dvb_unregister_bus(ptr noundef %arrayidx.i) #8
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5.i, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.203, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netup_unidvb_ci_setup(ptr noundef %ndev, ptr noundef %pci_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  tail call void @arm_heavy_mb() #8
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 7
  %0 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 18580
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 4) #8, !srcloc !401
  %call = tail call i32 @netup_unidvb_ci_register(ptr noundef %ndev, i32 noundef 0, ptr noundef %pci_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @netup_unidvb_ci_register(ptr noundef %ndev, i32 noundef 1, ptr noundef %pci_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netup_unidvb_ci_unregister(ptr noundef %ndev, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netup_unidvb_dma_setup(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @netup_unidvb_dma_init(ptr noundef %ndev, i32 noundef 0)
  tail call fastcc void @netup_unidvb_dma_init(ptr noundef %ndev, i32 noundef 1)
  %dma = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dma_setup, %if.then.i)) #8
          to label %netup_unidvb_dma_enable.exit [label %if.then.i], !srcloc !414

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 0, i32 2
  %2 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma, align 8
  %conv5.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, ptr noundef %dev.i, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef %conv5.i, i32 noundef 0) #8
  br label %netup_unidvb_dma_enable.exit

netup_unidvb_dma_enable.exit:                     ; preds = %if.then.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %regs19.i = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 0, i32 3
  %8 = ptrtoint ptr %regs19.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs19.i, align 4
  %ctrlstat_clear.i = getelementptr inbounds %struct.netup_dma_regs, ptr %9, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrlstat_clear.i, i32 16777216) #8, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  tail call void @arm_heavy_mb() #8
  %conv23.i = select i1 %cmp.i, i16 1, i16 2
  %ndev24.i = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 0, i32 2
  %10 = ptrtoint ptr %ndev24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev24.i, align 8
  %bmmio025.i = getelementptr inbounds %struct.netup_unidvb_dev, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %bmmio025.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio025.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %13, i32 18582
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26.i, i16 %conv23.i) #8, !srcloc !401
  %arrayidx6 = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 1
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dma_setup, %if.then.i6)) #8
          to label %netup_unidvb_dma_enable.exit13 [label %if.then.i6], !srcloc !414

if.then.i6:                                       ; preds = %netup_unidvb_dma_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i3 = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 1, i32 2
  %16 = ptrtoint ptr %ndev.i3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev.i3, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev.i4 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx6, align 8
  %conv5.i5 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, ptr noundef %dev.i4, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef %conv5.i5, i32 noundef 0) #8
  br label %netup_unidvb_dma_enable.exit13

netup_unidvb_dma_enable.exit13:                   ; preds = %if.then.i6, %netup_unidvb_dma_enable.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i1 = icmp eq i8 %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %regs19.i7 = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 1, i32 3
  %22 = ptrtoint ptr %regs19.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs19.i7, align 4
  %ctrlstat_clear.i8 = getelementptr inbounds %struct.netup_dma_regs, ptr %23, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrlstat_clear.i8, i32 16777216) #8, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  tail call void @arm_heavy_mb() #8
  %conv23.i9 = select i1 %cmp.i1, i16 1, i16 2
  %ndev24.i10 = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 1, i32 2
  %24 = ptrtoint ptr %ndev24.i10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev24.i10, align 8
  %bmmio025.i11 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %bmmio025.i11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bmmio025.i11, align 4
  %add.ptr26.i12 = getelementptr i8, ptr %27, i32 18582
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26.i12, i16 %conv23.i9) #8, !srcloc !401
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netup_unidvb_ci_unregister(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netup_unidvb_dvb_fini(ptr noundef %ndev, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 13, i32 %num
  tail call void @vb2_dvb_unregister_bus(ptr noundef %arrayidx) #8
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.203, i32 noundef %num) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netup_i2c_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netup_spi_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netup_spi_interrupt(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netup_i2c_interrupt(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netup_dma_interrupt(ptr noundef %dma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %lock = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %regs = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 3
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %curr_addr_hi = getelementptr inbounds %struct.netup_dma_regs, ptr %5, i32 0, i32 7
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %curr_addr_hi) #8, !srcloc !405
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !420
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %curr_addr_lo = getelementptr inbounds %struct.netup_dma_regs, ptr %8, i32 0, i32 6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %curr_addr_lo) #8, !srcloc !405
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  %10 = zext i32 %6 to i64
  %11 = zext i32 %9 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %high_addr = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 8
  %15 = ptrtoint ptr %high_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %high_addr, align 8
  %conv17 = zext i32 %16 to i64
  %or18 = or i64 %14, %conv17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !422
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %ctrlstat_clear = getelementptr inbounds %struct.netup_dma_regs, ptr %18, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrlstat_clear, i32 131072) #8, !srcloc !404
  %addr_phys = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 6
  %19 = ptrtoint ptr %addr_phys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr_phys, align 8
  %conv23 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %or18, i64 %conv23)
  %cmp24 = icmp ult i64 %or18, %conv23
  br i1 %cmp24, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ring_buffer_size = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 4
  %21 = ptrtoint ptr %ring_buffer_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ring_buffer_size, align 8
  %add = add i32 %22, %20
  %conv27 = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %or18, i64 %conv27)
  %cmp28 = icmp ugt i64 %or18, %conv27
  br i1 %cmp28, label %lor.lhs.false.do.end35_crit_edge, label %if.end42

lor.lhs.false.do.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or18)
  %cmp30.not = icmp eq i64 %or18, 0
  br i1 %cmp30.not, label %if.then.irq_handled_crit_edge, label %if.then.do.end35_crit_edge

if.then.do.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

if.then.irq_handled_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_handled

do.end35:                                         ; preds = %if.then.do.end35_crit_edge, %lor.lhs.false.do.end35_crit_edge
  %ring_buffer_size39 = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 4
  %23 = ptrtoint ptr %ring_buffer_size39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ring_buffer_size39, align 8
  %add40 = add i32 %24, %20
  %conv41 = zext i32 %add40 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i64 noundef %or18, i64 noundef %conv23, i64 noundef %conv41) #11
  br label %irq_handled

if.end42:                                         ; preds = %lor.lhs.false
  %addr_last = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 7
  %25 = ptrtoint ptr %addr_last to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %addr_last, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or18, i64 %26)
  %cmp43.not = icmp ult i64 %or18, %26
  %sub50.neg = sub i64 %or18, %26
  %27 = trunc i64 %sub50.neg to i32
  %conv52 = select i1 %cmp43.not, i32 %22, i32 0
  %cond = add i32 %conv52, %27
  %data_size = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 10
  %28 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp53.not = icmp eq i32 %29, 0
  br i1 %cmp53.not, label %if.end42.if.then76_crit_edge, label %if.then55

if.end42.if.then76_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.then55:                                        ; preds = %if.end42
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @netup_dma_interrupt._rs, ptr noundef nonnull @.str.98) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool.not = icmp eq i32 %call56, 0
  br i1 %tobool.not, label %if.then55.if.end67_crit_edge, label %do.end60

if.then55.if.end67_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end60:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_size, align 8
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98, i32 noundef %31) #11
  br label %if.end67

if.end67:                                         ; preds = %do.end60, %if.then55.if.end67_crit_edge
  %32 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_size, align 8
  %add66 = add i32 %33, %cond
  store i32 %add66, ptr %data_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add66)
  %cmp69 = icmp eq i32 %add66, 0
  br i1 %cmp69, label %if.end67.if.then76_crit_edge, label %lor.lhs.false71

if.end67.if.then76_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

lor.lhs.false71:                                  ; preds = %if.end67
  %34 = ptrtoint ptr %ring_buffer_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ring_buffer_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add66, i32 %35)
  %cmp74 = icmp ugt i32 %add66, %35
  br i1 %cmp74, label %lor.lhs.false71.if.then76_crit_edge, label %lor.lhs.false71.if.end83_crit_edge

lor.lhs.false71.if.end83_crit_edge:               ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

lor.lhs.false71.if.then76_crit_edge:              ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.then76:                                        ; preds = %lor.lhs.false71.if.then76_crit_edge, %if.end67.if.then76_crit_edge, %if.end42.if.then76_crit_edge
  %36 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond, ptr %data_size, align 8
  %37 = ptrtoint ptr %addr_last to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %addr_last, align 8
  %39 = ptrtoint ptr %addr_phys to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr_phys, align 8
  %41 = trunc i64 %38 to i32
  %conv82 = sub i32 %41, %40
  %data_offset = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 9
  %42 = ptrtoint ptr %data_offset to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv82, ptr %data_offset, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then76, %lor.lhs.false71.if.end83_crit_edge
  %43 = ptrtoint ptr %addr_last to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %or18, ptr %addr_last, align 8
  %44 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndev, align 8
  %wq = getelementptr inbounds %struct.netup_unidvb_dev, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wq, align 8
  %work = getelementptr inbounds %struct.netup_dma, ptr %dma, i32 0, i32 12
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %work) #8
  br label %irq_handled

irq_handled:                                      ; preds = %if.end83, %do.end35, %if.then.irq_handled_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netup_ci_interrupt(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netup_unidvb_dvb_init(ptr noundef %ndev, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  %fe_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fe_name) #8
  %rev = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 19
  %0 = call ptr @memset(ptr %fe_name, i32 255, i32 32)
  %1 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6390, i32 %2)
  %cmp = icmp ne i32 %2, 6390
  %. = zext i1 %cmp to i32
  store i32 %., ptr getelementptr inbounds (%struct.cxd2841er_config, ptr @demod_config, i32 0, i32 1), align 4
  %arrayidx = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 13, i32 %num
  %lock = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 13, i32 %num, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.107, ptr noundef nonnull @netup_unidvb_dvb_init.__key) #8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %prev.i, align 4
  %call17 = tail call ptr @vb2_dvb_alloc_frontend(ptr noundef %arrayidx, i32 noundef 1) #8
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %entry.do.end22_crit_edge, label %for.cond.1

entry.do.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

for.cond26.preheader:                             ; preds = %for.cond.1
  %call32 = tail call ptr @vb2_dvb_get_frontend(ptr noundef %arrayidx, i32 noundef 1) #8
  %cmp35 = icmp eq ptr %call32, null
  br i1 %cmp35, label %for.cond26.preheader.do.end39_crit_edge, label %for.cond26.1

for.cond26.preheader.do.end39_crit_edge:          ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

for.cond.1:                                       ; preds = %entry
  %call17.1 = tail call ptr @vb2_dvb_alloc_frontend(ptr noundef %arrayidx, i32 noundef 2) #8
  %cmp18.1 = icmp eq ptr %call17.1, null
  br i1 %cmp18.1, label %for.cond.1.do.end22_crit_edge, label %for.cond26.preheader

for.cond.1.do.end22_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.end22:                                         ; preds = %for.cond.1.do.end22_crit_edge, %entry.do.end22_crit_edge
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.105) #11
  br label %cleanup

for.cond46.preheader:                             ; preds = %for.cond26.1
  %arrayidx49 = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num
  %ndev.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 2
  %dvbq = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %dvbq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %dvbq, align 4
  %io_modes.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32, i32 0, i32 2, i32 2, i32 1
  %8 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %io_modes.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32, i32 0, i32 2, i32 2, i32 10
  %9 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx49, ptr %drv_priv.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32, i32 0, i32 2, i32 2, i32 12
  %10 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 752, ptr %buf_struct_size.i, align 4
  %ops.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32, i32 0, i32 2, i32 2, i32 7
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dvb_qops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32, i32 0, i32 2, i32 2, i32 8
  %12 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32, i32 0, i32 2, i32 2, i32 13
  %13 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %call.i = call i32 @vb2_queue_init(ptr noundef %dvbq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %for.cond46.preheader.netup_unidvb_queue_init.exit_crit_edge, label %do.end.i

for.cond46.preheader.netup_unidvb_queue_init.exit_crit_edge: ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %netup_unidvb_queue_init.exit

for.cond26.1:                                     ; preds = %for.cond26.preheader
  %call32.1 = tail call ptr @vb2_dvb_get_frontend(ptr noundef %arrayidx, i32 noundef 2) #8
  %cmp35.1 = icmp eq ptr %call32.1, null
  br i1 %cmp35.1, label %for.cond26.1.do.end39_crit_edge, label %for.cond46.preheader

for.cond26.1.do.end39_crit_edge:                  ; preds = %for.cond26.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end39:                                         ; preds = %for.cond26.1.do.end39_crit_edge, %for.cond26.preheader.do.end39_crit_edge
  %14 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.105) #11
  br label %cleanup

do.end.i:                                         ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, i32 noundef %call.i) #11
  br label %netup_unidvb_queue_init.exit

netup_unidvb_queue_init.exit:                     ; preds = %do.end.i, %for.cond46.preheader.netup_unidvb_queue_init.exit_crit_edge
  %call52 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fe_name, i32 noundef 32, ptr noundef nonnull @.str.112, i32 noundef 0)
  %dvb55 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32, i32 0, i32 2
  %20 = ptrtoint ptr %dvb55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %fe_name, ptr %dvb55, align 8
  %dvbq.1 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32.1, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %dvbq.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %dvbq.1, align 4
  %io_modes.i.1 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32.1, i32 0, i32 2, i32 2, i32 1
  %22 = ptrtoint ptr %io_modes.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 7, ptr %io_modes.i.1, align 4
  %drv_priv.i.1 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32.1, i32 0, i32 2, i32 2, i32 10
  %23 = ptrtoint ptr %drv_priv.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx49, ptr %drv_priv.i.1, align 4
  %buf_struct_size.i.1 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32.1, i32 0, i32 2, i32 2, i32 12
  %24 = ptrtoint ptr %buf_struct_size.i.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 752, ptr %buf_struct_size.i.1, align 4
  %ops.i.1 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32.1, i32 0, i32 2, i32 2, i32 7
  %25 = ptrtoint ptr %ops.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dvb_qops, ptr %ops.i.1, align 4
  %mem_ops.i.1 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32.1, i32 0, i32 2, i32 2, i32 8
  %26 = ptrtoint ptr %mem_ops.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops.i.1, align 4
  %timestamp_flags.i.1 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32.1, i32 0, i32 2, i32 2, i32 13
  %27 = ptrtoint ptr %timestamp_flags.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8192, ptr %timestamp_flags.i.1, align 4
  %call.i.1 = call i32 @vb2_queue_init(ptr noundef %dvbq.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %cmp.not.i.1, label %netup_unidvb_queue_init.exit.netup_unidvb_queue_init.exit.1_crit_edge, label %do.end.i.1

netup_unidvb_queue_init.exit.netup_unidvb_queue_init.exit.1_crit_edge: ; preds = %netup_unidvb_queue_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %netup_unidvb_queue_init.exit.1

do.end.i.1:                                       ; preds = %netup_unidvb_queue_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %dev.i.1 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.1, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, i32 noundef %call.i.1) #11
  br label %netup_unidvb_queue_init.exit.1

netup_unidvb_queue_init.exit.1:                   ; preds = %do.end.i.1, %netup_unidvb_queue_init.exit.netup_unidvb_queue_init.exit.1_crit_edge
  %call52.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fe_name, i32 noundef 32, ptr noundef nonnull @.str.112, i32 noundef 1)
  %dvb55.1 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32.1, i32 0, i32 2
  %32 = ptrtoint ptr %dvb55.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %fe_name, ptr %dvb55.1, align 8
  %call59 = call ptr @__symbol_get(ptr noundef nonnull @.str.113) #8
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %cond.end, label %netup_unidvb_queue_init.exit.1.if.then64_crit_edge

netup_unidvb_queue_init.exit.1.if.then64_crit_edge: ; preds = %netup_unidvb_queue_init.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

cond.end:                                         ; preds = %netup_unidvb_queue_init.exit.1
  %call61 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.114) #8
  %call62 = call ptr @__symbol_get(ptr noundef nonnull @.str.113) #8
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %do.end73, label %cond.end.if.then64_crit_edge

cond.end.if.then64_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

if.then64:                                        ; preds = %cond.end.if.then64_crit_edge, %netup_unidvb_queue_init.exit.1.if.then64_crit_edge
  %cond544 = phi ptr [ %call62, %cond.end.if.then64_crit_edge ], [ %call59, %netup_unidvb_queue_init.exit.1.if.then64_crit_edge ]
  %adap = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 14, i32 %num, i32 2
  %call66 = call ptr %cond544(ptr noundef nonnull @demod_config, ptr noundef %adap) #8
  %cmp67 = icmp eq ptr %call66, null
  br i1 %cmp67, label %if.then68, label %if.end103

if.then68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.113) #8
  br label %do.body85

do.end73:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #11
  br label %do.body85

do.body85:                                        ; preds = %do.end73, %if.then68
  %frontend546 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %frontend546 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %frontend546, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dvb_init, %if.then97)) #8
          to label %frontend_detach [label %if.then97], !srcloc !414

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev, align 8
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug403, ptr noundef %dev99, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.105) #8
  br label %frontend_detach

if.end103:                                        ; preds = %if.then64
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call66, ptr %frontend, align 4
  %37 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6390, i32 %38)
  %cmp105 = icmp eq i32 %38, 6390
  br i1 %cmp105, label %if.then106, label %if.else160

if.then106:                                       ; preds = %if.end103
  store ptr %arrayidx49, ptr getelementptr inbounds (%struct.horus3a_config, ptr @horus3a_conf, i32 0, i32 2), align 4
  %call111 = call ptr @__symbol_get(ptr noundef nonnull @.str.119) #8
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %cond.end117, label %if.then106.if.then120_crit_edge

if.then106.if.then120_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then120

cond.end117:                                      ; preds = %if.then106
  %call115 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.120) #8
  %call116 = call ptr @__symbol_get(ptr noundef nonnull @.str.119) #8
  %tobool119.not = icmp eq ptr %call116, null
  br i1 %tobool119.not, label %do.end134, label %cond.end117.if.then120_crit_edge

cond.end117.if.then120_crit_edge:                 ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then120

if.then120:                                       ; preds = %cond.end117.if.then120_crit_edge, %if.then106.if.then120_crit_edge
  %cond118553 = phi ptr [ %call116, %cond.end117.if.then120_crit_edge ], [ %call111, %if.then106.if.then120_crit_edge ]
  %39 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %frontend, align 4
  %call127 = call ptr %cond118553(ptr noundef %40, ptr noundef nonnull @horus3a_conf, ptr noundef %adap) #8
  %cmp128 = icmp eq ptr %call127, null
  br i1 %cmp128, label %if.then129, label %if.then120.if.end201_crit_edge

if.then120.if.end201_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.then129:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.119) #8
  br label %do.body141

do.end134:                                        ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #10
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #11
  br label %do.body141

do.body141:                                       ; preds = %do.end134, %if.then129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dvb_init, %if.then153)) #8
          to label %frontend_detach [label %if.then153], !srcloc !414

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndev, align 8
  %dev155 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug404, ptr noundef %dev155, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.105) #8
  br label %frontend_detach

if.else160:                                       ; preds = %if.end103
  store ptr %arrayidx49, ptr getelementptr inbounds (%struct.helene_config, ptr @helene_conf, i32 0, i32 2), align 4
  %call165 = call ptr @__symbol_get(ptr noundef nonnull @.str.125) #8
  %tobool166.not = icmp eq ptr %call165, null
  br i1 %tobool166.not, label %cond.end171, label %if.else160.if.then174_crit_edge

if.else160.if.then174_crit_edge:                  ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

cond.end171:                                      ; preds = %if.else160
  %call169 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.126) #8
  %call170 = call ptr @__symbol_get(ptr noundef nonnull @.str.125) #8
  %tobool173.not = icmp eq ptr %call170, null
  br i1 %tobool173.not, label %do.end188, label %cond.end171.if.then174_crit_edge

cond.end171.if.then174_crit_edge:                 ; preds = %cond.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.then174:                                       ; preds = %cond.end171.if.then174_crit_edge, %if.else160.if.then174_crit_edge
  %cond172560 = phi ptr [ %call170, %cond.end171.if.then174_crit_edge ], [ %call165, %if.else160.if.then174_crit_edge ]
  %43 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %frontend, align 4
  %call181 = call ptr %cond172560(ptr noundef %44, ptr noundef nonnull @helene_conf, ptr noundef %adap) #8
  %cmp182 = icmp eq ptr %call181, null
  br i1 %cmp182, label %if.then183, label %if.then174.if.end201_crit_edge

if.then174.if.end201_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.then183:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.125) #8
  br label %do.end197

do.end188:                                        ; preds = %cond.end171
  call void @__sanitizer_cov_trace_pc() #10
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #11
  br label %do.end197

do.end197:                                        ; preds = %do.end188, %if.then183
  %45 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndev, align 8
  %dev199 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev199, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.105) #11
  br label %frontend_detach

if.end201:                                        ; preds = %if.then174.if.end201_crit_edge, %if.then120.if.end201_crit_edge
  %call204 = call ptr @__symbol_get(ptr noundef nonnull @.str.133) #8
  %tobool205.not = icmp eq ptr %call204, null
  br i1 %tobool205.not, label %cond.end210, label %if.end201.if.then213_crit_edge

if.end201.if.then213_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then213

cond.end210:                                      ; preds = %if.end201
  %call208 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.134) #8
  %call209 = call ptr @__symbol_get(ptr noundef nonnull @.str.133) #8
  %tobool212.not = icmp eq ptr %call209, null
  br i1 %tobool212.not, label %do.end227, label %cond.end210.if.then213_crit_edge

cond.end210.if.then213_crit_edge:                 ; preds = %cond.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then213

if.then213:                                       ; preds = %cond.end210.if.then213_crit_edge, %if.end201.if.then213_crit_edge
  %cond211565 = phi ptr [ %call209, %cond.end210.if.then213_crit_edge ], [ %call204, %if.end201.if.then213_crit_edge ]
  %47 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %frontend, align 4
  %call220 = call ptr %cond211565(ptr noundef %48, ptr noundef nonnull @lnbh25_conf, ptr noundef %adap) #8
  %cmp221 = icmp eq ptr %call220, null
  br i1 %cmp221, label %if.then222, label %if.end252

if.then222:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.133) #8
  br label %do.body234

do.end227:                                        ; preds = %cond.end210
  call void @__sanitizer_cov_trace_pc() #10
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #11
  br label %do.body234

do.body234:                                       ; preds = %do.end227, %if.then222
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dvb_init, %if.then246)) #8
          to label %frontend_detach [label %if.then246], !srcloc !414

if.then246:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev, align 8
  %dev248 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug405, ptr noundef %dev248, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.105) #8
  br label %frontend_detach

if.end252:                                        ; preds = %if.then213
  %call255 = call ptr @__symbol_get(ptr noundef nonnull @.str.139) #8
  %tobool256.not = icmp eq ptr %call255, null
  br i1 %tobool256.not, label %cond.end261, label %if.end252.if.then264_crit_edge

if.end252.if.then264_crit_edge:                   ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then264

cond.end261:                                      ; preds = %if.end252
  %call259 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.140) #8
  %call260 = call ptr @__symbol_get(ptr noundef nonnull @.str.139) #8
  %tobool263.not = icmp eq ptr %call260, null
  br i1 %tobool263.not, label %do.end275, label %cond.end261.if.then264_crit_edge

cond.end261.if.then264_crit_edge:                 ; preds = %cond.end261
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then264

if.then264:                                       ; preds = %cond.end261.if.then264_crit_edge, %if.end252.if.then264_crit_edge
  %cond262571 = phi ptr [ %call260, %cond.end261.if.then264_crit_edge ], [ %call255, %if.end252.if.then264_crit_edge ]
  %call268 = call ptr %cond262571(ptr noundef nonnull @demod_config, ptr noundef %adap) #8
  %cmp269 = icmp eq ptr %call268, null
  br i1 %cmp269, label %if.then270, label %if.end306

if.then270:                                       ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.139) #8
  br label %do.body288

do.end275:                                        ; preds = %cond.end261
  call void @__sanitizer_cov_trace_pc() #10
  %call277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #11
  br label %do.body288

do.body288:                                       ; preds = %do.end275, %if.then270
  %frontend282573 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32.1, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %frontend282573 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %frontend282573, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dvb_init, %if.then300)) #8
          to label %frontend_detach [label %if.then300], !srcloc !414

if.then300:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndev, align 8
  %dev302 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug406, ptr noundef %dev302, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.105) #8
  br label %frontend_detach

if.end306:                                        ; preds = %if.then264
  %frontend282 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call32.1, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %frontend282 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call268, ptr %frontend282, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %call268, i32 0, i32 10
  %55 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %id, align 4
  %56 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6390, i32 %57)
  %cmp311 = icmp eq i32 %57, 6390
  br i1 %cmp311, label %if.then312, label %if.else366

if.then312:                                       ; preds = %if.end306
  store ptr %arrayidx49, ptr getelementptr inbounds (%struct.ascot2e_config, ptr @ascot2e_conf, i32 0, i32 2), align 4
  %call317 = call ptr @__symbol_get(ptr noundef nonnull @.str.145) #8
  %tobool318.not = icmp eq ptr %call317, null
  br i1 %tobool318.not, label %cond.end323, label %if.then312.if.then326_crit_edge

if.then312.if.then326_crit_edge:                  ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then326

cond.end323:                                      ; preds = %if.then312
  %call321 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.146) #8
  %call322 = call ptr @__symbol_get(ptr noundef nonnull @.str.145) #8
  %tobool325.not = icmp eq ptr %call322, null
  br i1 %tobool325.not, label %do.end340, label %cond.end323.if.then326_crit_edge

cond.end323.if.then326_crit_edge:                 ; preds = %cond.end323
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then326

if.then326:                                       ; preds = %cond.end323.if.then326_crit_edge, %if.then312.if.then326_crit_edge
  %cond324578 = phi ptr [ %call322, %cond.end323.if.then326_crit_edge ], [ %call317, %if.then312.if.then326_crit_edge ]
  %58 = ptrtoint ptr %frontend282 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %frontend282, align 4
  %call333 = call ptr %cond324578(ptr noundef %59, ptr noundef nonnull @ascot2e_conf, ptr noundef %adap) #8
  %cmp334 = icmp eq ptr %call333, null
  br i1 %cmp334, label %if.then335, label %if.then326.if.end407_crit_edge

if.then326.if.end407_crit_edge:                   ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end407

if.then335:                                       ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.145) #8
  br label %do.body347

do.end340:                                        ; preds = %cond.end323
  call void @__sanitizer_cov_trace_pc() #10
  %call342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #11
  br label %do.body347

do.body347:                                       ; preds = %do.end340, %if.then335
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dvb_init, %if.then359)) #8
          to label %frontend_detach [label %if.then359], !srcloc !414

if.then359:                                       ; preds = %do.body347
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndev, align 8
  %dev361 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug407, ptr noundef %dev361, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.105) #8
  br label %frontend_detach

if.else366:                                       ; preds = %if.end306
  store ptr %arrayidx49, ptr getelementptr inbounds (%struct.helene_config, ptr @helene_conf, i32 0, i32 2), align 4
  %call371 = call ptr @__symbol_get(ptr noundef nonnull @.str.151) #8
  %tobool372.not = icmp eq ptr %call371, null
  br i1 %tobool372.not, label %cond.end377, label %if.else366.if.then380_crit_edge

if.else366.if.then380_crit_edge:                  ; preds = %if.else366
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then380

cond.end377:                                      ; preds = %if.else366
  %call375 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.152) #8
  %call376 = call ptr @__symbol_get(ptr noundef nonnull @.str.151) #8
  %tobool379.not = icmp eq ptr %call376, null
  br i1 %tobool379.not, label %do.end394, label %cond.end377.if.then380_crit_edge

cond.end377.if.then380_crit_edge:                 ; preds = %cond.end377
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then380

if.then380:                                       ; preds = %cond.end377.if.then380_crit_edge, %if.else366.if.then380_crit_edge
  %cond378584 = phi ptr [ %call376, %cond.end377.if.then380_crit_edge ], [ %call371, %if.else366.if.then380_crit_edge ]
  %62 = ptrtoint ptr %frontend282 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %frontend282, align 4
  %call387 = call ptr %cond378584(ptr noundef %63, ptr noundef nonnull @helene_conf, ptr noundef %adap) #8
  %cmp388 = icmp eq ptr %call387, null
  br i1 %cmp388, label %if.then389, label %if.then380.if.end407_crit_edge

if.then380.if.end407_crit_edge:                   ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end407

if.then389:                                       ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.151) #8
  br label %do.end403

do.end394:                                        ; preds = %cond.end377
  call void @__sanitizer_cov_trace_pc() #10
  %call396 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #11
  br label %do.end403

do.end403:                                        ; preds = %do.end394, %if.then389
  %64 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ndev, align 8
  %dev405 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev405, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.105) #11
  br label %frontend_detach

if.end407:                                        ; preds = %if.then380.if.end407_crit_edge, %if.then326.if.end407_crit_edge
  %66 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ndev, align 8
  %dev411 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %call412 = call i32 @vb2_dvb_register_bus(ptr noundef %arrayidx, ptr noundef null, ptr noundef null, ptr noundef %dev411, ptr noundef null, ptr noundef nonnull @adapter_nr, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412)
  %tobool413.not = icmp eq i32 %call412, 0
  br i1 %tobool413.not, label %do.end436, label %do.body415

do.body415:                                       ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dvb_init, %if.then427)) #8
          to label %frontend_detach [label %if.then427], !srcloc !414

if.then427:                                       ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ndev, align 8
  %dev429 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug408, ptr noundef %dev429, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.105, i32 noundef %num) #8
  br label %frontend_detach

do.end436:                                        ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ndev, align 8
  %dev438 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev438, ptr noundef nonnull @.str.161, i32 noundef %num) #11
  br label %cleanup

frontend_detach:                                  ; preds = %if.then427, %do.body415, %do.end403, %if.then359, %do.body347, %if.then300, %do.body288, %if.then246, %do.body234, %do.end197, %if.then153, %do.body141, %if.then97, %do.body85
  call void @vb2_dvb_dealloc_frontends(ptr noundef %arrayidx) #8
  br label %cleanup

cleanup:                                          ; preds = %frontend_detach, %do.end436, %do.end39, %do.end22
  %retval.0 = phi i32 [ -12, %do.end22 ], [ -22, %do.end39 ], [ -22, %frontend_detach ], [ 0, %do.end436 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fe_name) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_dvb_alloc_frontend(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_dvb_get_frontend(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dvb_register_bus(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_dvb_dealloc_frontends(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_queue_setup.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_queue_setup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_queue_setup.__UNIQUE_ID_ddebug396, ptr noundef %dev, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.165) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %nplanes, align 4
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %7 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers, align 4
  %9 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbuffers, align 4
  %add = add i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp = icmp ult i32 %add, 32
  br i1 %cmp, label %if.then4, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 32, %8
  %11 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 24576, ptr %sizes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_queue_setup.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_queue_setup, %if.then19)) #8
          to label %do.end26 [label %if.then19], !srcloc !414

if.then19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %ndev20 = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %ndev20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev20, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbuffers, align 4
  %19 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_queue_setup.__UNIQUE_ID_ddebug397, ptr noundef %dev22, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.165, i32 noundef %18, i32 noundef %20) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then19, %if.end6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_buf_prepare(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_buf_prepare.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_buf_prepare, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.netup_dma, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_buf_prepare.__UNIQUE_ID_ddebug398, ptr noundef %dev, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.168, ptr noundef %vb) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %size = getelementptr inbounds %struct.netup_unidvb_buffer, ptr %vb, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %size, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_start_streaming.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_start_streaming, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_start_streaming.__UNIQUE_ID_ddebug400, ptr noundef %dev, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.170) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_start_streaming, %if.then.i)) #8
          to label %netup_unidvb_dma_enable.exit [label %if.then.i], !srcloc !414

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 8
  %conv5.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, ptr noundef %dev.i, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef %conv5.i, i32 noundef 1) #8
  br label %netup_unidvb_dma_enable.exit

netup_unidvb_dma_enable.exit:                     ; preds = %if.then.i, %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %regs19.i = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %regs19.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs19.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 16777216) #8, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !423
  tail call void @arm_heavy_mb() #8
  %conv14.i = select i1 %cmp.i, i16 1, i16 2
  %ndev15.i = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %ndev15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev15.i, align 8
  %bmmio0.i = getelementptr inbounds %struct.netup_unidvb_dev, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %bmmio0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmmio0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 18580
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %conv14.i) #8, !srcloc !401
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netup_unidvb_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_stop_streaming.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_stop_streaming, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_stop_streaming.__UNIQUE_ID_ddebug401, ptr noundef %dev, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.173) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_stop_streaming, %if.then.i)) #8
          to label %netup_unidvb_dma_enable.exit [label %if.then.i], !srcloc !414

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 8
  %conv5.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, ptr noundef %dev.i, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef %conv5.i, i32 noundef 0) #8
  br label %netup_unidvb_dma_enable.exit

netup_unidvb_dma_enable.exit:                     ; preds = %if.then.i, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %regs19.i = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %regs19.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs19.i, align 4
  %ctrlstat_clear.i = getelementptr inbounds %struct.netup_dma_regs, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrlstat_clear.i, i32 16777216) #8, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  tail call void @arm_heavy_mb() #8
  %conv23.i = select i1 %cmp.i, i16 1, i16 2
  %ndev24.i = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %ndev24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev24.i, align 8
  %bmmio025.i = getelementptr inbounds %struct.netup_unidvb_dev, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %bmmio025.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmmio025.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %19, i32 18582
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26.i, i16 %conv23.i) #8, !srcloc !401
  %lock.i = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %free_buffers.i = getelementptr inbounds %struct.netup_dma, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %free_buffers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %free_buffers.i, align 4
  %cmp.i.not13.i = icmp eq ptr %21, %free_buffers.i
  br i1 %cmp.i.not13.i, label %netup_unidvb_dma_enable.exit.netup_unidvb_queue_cleanup.exit_crit_edge, label %netup_unidvb_dma_enable.exit.while.body.i_crit_edge

netup_unidvb_dma_enable.exit.while.body.i_crit_edge: ; preds = %netup_unidvb_dma_enable.exit
  br label %while.body.i

netup_unidvb_dma_enable.exit.netup_unidvb_queue_cleanup.exit_crit_edge: ; preds = %netup_unidvb_dma_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %netup_unidvb_queue_cleanup.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %netup_unidvb_dma_enable.exit.while.body.i_crit_edge
  %22 = phi ptr [ %32, %list_del.exit.i.while.body.i_crit_edge ], [ %21, %netup_unidvb_dma_enable.exit.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %22, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 6) #8
  %31 = ptrtoint ptr %free_buffers.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %free_buffers.i, align 4
  %cmp.i.not.i = icmp eq ptr %32, %free_buffers.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.netup_unidvb_queue_cleanup.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

list_del.exit.i.netup_unidvb_queue_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netup_unidvb_queue_cleanup.exit

netup_unidvb_queue_cleanup.exit:                  ; preds = %list_del.exit.i.netup_unidvb_queue_cleanup.exit_crit_edge, %netup_unidvb_dma_enable.exit.netup_unidvb_queue_cleanup.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netup_unidvb_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_buf_queue.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_buf_queue, %if.then)) #8
          to label %do.body9 [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.netup_dma, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_buf_queue.__UNIQUE_ID_ddebug399, ptr noundef %dev, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.174, ptr noundef %vb) #8
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.netup_dma, ptr %3, i32 0, i32 1
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %list = getelementptr inbounds %struct.netup_unidvb_buffer, ptr %vb, i32 0, i32 1
  %free_buffers = getelementptr inbounds %struct.netup_dma, ptr %3, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.netup_dma, ptr %3, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %9, ptr noundef %free_buffers) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body9.list_add_tail.exit_crit_edge

do.body9.list_add_tail.exit_crit_edge:            ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_buffers, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.netup_unidvb_buffer, ptr %vb, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body9.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #8
  %timeout = getelementptr inbounds %struct.netup_dma, ptr %3, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 100
  %call19 = tail call i32 @mod_timer(ptr noundef %timeout, i32 noundef %add) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_unidvb_tuner_ctrl(ptr noundef readonly %priv, i32 noundef %is_dvb_tc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ndev1 = getelementptr inbounds %struct.netup_dma, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_tuner_ctrl.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_tuner_ctrl, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !414

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv, align 8
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_tuner_ctrl.__UNIQUE_ID_ddebug393, ptr noundef %dev, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.176, i32 noundef %conv, i32 noundef %is_dvb_tc) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 18560
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !424
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  %conv13 = select i1 %cmp, i8 4, i8 8
  %rev = getelementptr inbounds %struct.netup_unidvb_dev, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6391, i32 %12)
  %cmp14 = icmp eq i32 %12, 6391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_dvb_tc)
  %tobool17.not = icmp eq i32 %is_dvb_tc, 0
  %lnot.ext19 = zext i1 %tobool17.not to i32
  %is_dvb_tc.addr.0 = select i1 %cmp14, i32 %lnot.ext19, i32 %is_dvb_tc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_dvb_tc.addr.0)
  %tobool21.not = icmp eq i32 %is_dvb_tc.addr.0, 0
  %neg = xor i8 %conv13, -1
  %and = and i8 %8, %neg
  %or49 = or i8 %conv13, %8
  %reg.0 = select i1 %tobool21.not, i8 %or49, i8 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !425
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bmmio0, align 4
  %add.ptr34 = getelementptr i8, ptr %14, i32 18560
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 %reg.0) #8, !srcloc !412
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netup_unidvb_ci_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netup_unidvb_dma_init(ptr noundef %ndev, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %arrayidx = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.179, i32 noundef %num) #11
  %conv = trunc i32 %num to i8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 8
  %ndev8 = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 2
  %3 = ptrtoint ptr %ndev8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ndev, ptr %ndev8, align 8
  %lock = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.183, ptr noundef nonnull @netup_unidvb_dma_init.__key, i16 noundef signext 3) #8
  %work = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 12
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.185, ptr noundef nonnull @netup_unidvb_dma_init.__key.184, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry16 = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 12, i32 1
  %5 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 12, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 12, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @netup_unidvb_dma_worker, ptr %func, align 4
  %free_buffers = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 11
  %8 = ptrtoint ptr %free_buffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %free_buffers, ptr %free_buffers, align 4
  %prev.i2 = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 11, i32 1
  %9 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %free_buffers, ptr %prev.i2, align 4
  %timeout = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 13
  tail call void @init_timer_key(ptr noundef %timeout, ptr noundef nonnull @netup_unidvb_dma_timeout, i32 noundef 0, ptr noundef nonnull @.str.187, ptr noundef nonnull @netup_unidvb_dma_init.__key.186) #8
  %dma_size = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 12
  %10 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_size, align 8
  %div1 = lshr i32 %11, 1
  %ring_buffer_size = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 4
  %12 = ptrtoint ptr %ring_buffer_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div1, ptr %ring_buffer_size, align 8
  %dma_virt = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 10
  %13 = ptrtoint ptr %dma_virt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_virt, align 8
  %mul = mul i32 %div1, %num
  %add.ptr = getelementptr i8, ptr %14, i32 %mul
  %addr_virt = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 5
  %15 = ptrtoint ptr %addr_virt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %addr_virt, align 4
  %dma_phys = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 11
  %16 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_phys, align 4
  %add = add i32 %17, %mul
  %addr_phys = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 6
  %18 = ptrtoint ptr %addr_phys to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %addr_phys, align 8
  %conv34 = zext i32 %add to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.179, i32 noundef %num, ptr noundef %add.ptr, i64 noundef %conv34, i32 noundef %div1) #11
  %19 = ptrtoint ptr %addr_virt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr_virt, align 4
  %21 = ptrtoint ptr %ring_buffer_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ring_buffer_size, align 8
  tail call void @mmioset(ptr noundef %20, i32 noundef 0, i32 noundef %22) #8
  %23 = ptrtoint ptr %addr_phys to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr_phys, align 8
  %conv39 = zext i32 %24 to i64
  %addr_last = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 7
  %25 = ptrtoint ptr %addr_last to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv39, ptr %addr_last, align 8
  %and = and i32 %24, -1073741824
  %high_addr = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 8
  %26 = ptrtoint ptr %high_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %high_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp41 = icmp eq i32 %num, 0
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 7
  %27 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bmmio0, align 4
  %. = select i1 %cmp41, i32 18688, i32 18752
  %add.ptr45 = getelementptr i8, ptr %28, i32 %.
  %regs = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 3
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr45, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !426
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %size = getelementptr inbounds %struct.netup_dma_regs, ptr %31, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %size, i32 -1132462072) #8, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !427
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %addr_phys to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr_phys, align 8
  %and54 = and i32 %33, 1073741823
  %34 = tail call i32 @llvm.bswap.i32(i32 %and54)
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %start_addr_lo = getelementptr inbounds %struct.netup_dma_regs, ptr %36, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %start_addr_lo, i32 %34) #8, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !428
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %start_addr_hi = getelementptr inbounds %struct.netup_dma_regs, ptr %38, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %start_addr_hi, i32 0) #8, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !429
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %high_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %high_addr, align 8
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %bmmio064 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 7
  %42 = ptrtoint ptr %bmmio064 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bmmio064, align 4
  %add.ptr65 = getelementptr i8, ptr %43, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %41) #8, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !430
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %timeout70 = getelementptr inbounds %struct.netup_dma_regs, ptr %45, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %timeout70, i32 -1072997866) #8, !srcloc !404
  tail call void @msleep(i32 noundef 1000) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !431
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %ctrlstat_clear = getelementptr inbounds %struct.netup_dma_regs, ptr %47, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrlstat_clear, i32 131072) #8, !srcloc !404
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netup_unidvb_dma_fini(ptr noundef %ndev, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_fini.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dma_fini, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !414

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_fini.__UNIQUE_ID_ddebug414, ptr noundef %dev, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.200, i32 noundef %num) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %entry
  %arrayidx = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dma_fini, %if.then.i)) #8
          to label %netup_unidvb_dma_enable.exit [label %if.then.i], !srcloc !414

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 2
  %4 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 8
  %conv5.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, ptr noundef %dev.i, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef %conv5.i, i32 noundef 0) #8
  br label %netup_unidvb_dma_enable.exit

netup_unidvb_dma_enable.exit:                     ; preds = %if.then.i, %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %regs19.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 3
  %10 = ptrtoint ptr %regs19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs19.i, align 4
  %ctrlstat_clear.i = getelementptr inbounds %struct.netup_dma_regs, ptr %11, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrlstat_clear.i, i32 16777216) #8, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  tail call void @arm_heavy_mb() #8
  %conv23.i = select i1 %cmp.i, i16 1, i16 2
  %ndev24.i = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 2
  %12 = ptrtoint ptr %ndev24.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev24.i, align 8
  %bmmio025.i = getelementptr inbounds %struct.netup_unidvb_dev, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %bmmio025.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmmio025.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %15, i32 18582
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26.i, i16 %conv23.i) #8, !srcloc !401
  tail call void @msleep(i32 noundef 50) #8
  %work = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 12
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #8
  %timeout = getelementptr %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 16, i32 %num, i32 13
  %call8 = tail call i32 @del_timer(ptr noundef %timeout) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netup_unidvb_dma_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  %lock = getelementptr i8, ptr %work, i32 -96
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %data_size = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %do.body9, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %free_buffers = getelementptr i8, ptr %work, i32 -8
  %data_offset.i = getelementptr i8, ptr %work, i32 -16
  %ring_buffer_size.i = getelementptr i8, ptr %work, i32 -44
  %addr_virt.i = getelementptr i8, ptr %work, i32 -40
  br label %while.body

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dma_worker, %if.then14)) #8
          to label %work_done [label %if.then14], !srcloc !414

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug409, ptr noundef %dev, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.191) #8
  br label %work_done

while.body:                                       ; preds = %if.end103.while.body_crit_edge, %while.cond.preheader
  %6 = ptrtoint ptr %free_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %free_buffers, align 4
  %cmp.i.not = icmp eq ptr %7, %free_buffers
  br i1 %cmp.i.not, label %do.body24, label %if.end42

do.body24:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dma_worker, %if.then36)) #8
          to label %work_done [label %if.then36], !srcloc !414

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug410, ptr noundef %dev38, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.191) #8
  br label %work_done

if.end42:                                         ; preds = %while.body
  %add.ptr46 = getelementptr i8, ptr %7, i32 -736
  %size = getelementptr i8, ptr %7, i32 8
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24063, i32 %11)
  %cmp47 = icmp ugt i32 %11, 24063
  br i1 %cmp47, label %do.body50, label %if.end69

do.body50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dma_worker, %if.then62)) #8
          to label %work_done [label %if.then62], !srcloc !414

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug411, ptr noundef %dev64, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.191, i32 noundef %15) #8
  br label %work_done

if.end69:                                         ; preds = %if.end42
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 8
  %sub.i = sub i32 24064, %17
  %call.i = tail call ptr @vb2_plane_vaddr(ptr noundef %add.ptr46, i32 noundef 0) #8
  %cmp.i136 = icmp eq ptr %call.i, null
  br i1 %cmp.i136, label %netup_unidvb_ring_copy.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end69
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 8
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %19
  %20 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_offset.i, align 4
  %22 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_size, align 8
  %add.i = add i32 %23, %21
  %24 = ptrtoint ptr %ring_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring_buffer_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %25)
  %cmp3.i = icmp ugt i32 %add.i, %25
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end25.i_crit_edge

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub7.i = sub i32 %25, %21
  %26 = tail call i32 @llvm.umin.i32(i32 %sub7.i, i32 %sub.i) #8
  %27 = ptrtoint ptr %addr_virt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %addr_virt.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %28, i32 %21
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef %add.ptr10.i, i32 noundef %26) #8
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i, i32 %26
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 8
  %add13.i = add i32 %30, %26
  store i32 %add13.i, ptr %size, align 8
  %sub14.i = sub i32 %sub.i, %26
  %31 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_size, align 8
  %sub16.i = sub i32 %32, %26
  store i32 %sub16.i, ptr %data_size, align 8
  %33 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_offset.i, align 4
  %add18.i = add i32 %34, %26
  %35 = ptrtoint ptr %ring_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ring_buffer_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %36)
  %cmp21.i = icmp eq i32 %add18.i, %36
  %spec.store.select.i = select i1 %cmp21.i, i32 0, i32 %add18.i
  %37 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.store.select.i, ptr %data_offset.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then4.i, %if.end.i.if.end25.i_crit_edge
  %buff_bytes.0.i = phi i32 [ %sub.i, %if.end.i.if.end25.i_crit_edge ], [ %sub14.i, %if.then4.i ]
  %p.0.i = phi ptr [ %add.ptr.i, %if.end.i.if.end25.i_crit_edge ], [ %add.ptr11.i, %if.then4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buff_bytes.0.i)
  %cmp26.not.i = icmp eq i32 %buff_bytes.0.i, 0
  br i1 %cmp26.not.i, label %if.end25.i.if.end73_crit_edge, label %if.then27.i

if.end25.i.if.end73_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_size, align 8
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 %buff_bytes.0.i) #8
  %41 = ptrtoint ptr %addr_virt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr_virt.i, align 4
  %43 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_offset.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %42, i32 %44
  tail call void @mmiocpy(ptr noundef %p.0.i, ptr noundef %add.ptr36.i, i32 noundef %40) #8
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 8
  %add38.i = add i32 %46, %40
  store i32 %add38.i, ptr %size, align 8
  %47 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_size, align 8
  %sub40.i = sub i32 %48, %40
  store i32 %sub40.i, ptr %data_size, align 8
  %49 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_offset.i, align 4
  %add42.i = add i32 %50, %40
  %51 = ptrtoint ptr %ring_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ring_buffer_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.i, i32 %52)
  %cmp45.i = icmp eq i32 %add42.i, %52
  %spec.store.select100.i = select i1 %cmp45.i, i32 0, i32 %add42.i
  %53 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.store.select100.i, ptr %data_offset.i, align 4
  br label %if.end73

netup_unidvb_ring_copy.exit:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ndev1, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.197) #11
  br label %work_done

if.end73:                                         ; preds = %if.then27.i, %if.end25.i.if.end73_crit_edge
  %58 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24064, i32 %59)
  %cmp75 = icmp eq i32 %59, 24064
  br i1 %cmp75, label %if.then77, label %if.end73.if.end103_crit_edge

if.end73.if.end103_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then77:                                        ; preds = %if.end73
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then77.list_del.exit_crit_edge

if.then77.list_del.exit_crit_edge:                ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i, align 4
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then77.list_del.exit_crit_edge
  %66 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dma_worker, %if.then90)) #8
          to label %do.end96 [label %if.then90], !srcloc !414

if.then90:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %70 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug412, ptr noundef %dev92, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.191, ptr noundef %add.ptr46, i32 noundef %71) #8
  br label %do.end96

do.end96:                                         ; preds = %if.then90, %list_del.exit
  %call.i138 = tail call i64 @ktime_get() #8
  %timestamp = getelementptr i8, ptr %7, i32 -712
  %72 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %call.i138, ptr %timestamp, align 8
  %num_planes.i = getelementptr i8, ptr %7, i32 -720
  %73 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.not.i = icmp eq i32 %74, 0
  br i1 %cmp.not.i, label %do.end96.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

do.end96.vb2_set_plane_payload.exit_crit_edge:    ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %do.end96
  %75 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size, align 8
  %length.i = getelementptr i8, ptr %7, i32 -648
  %77 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %76)
  %cmp1.i = icmp ult i32 %78, %76
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !432

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.198, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %79 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %80, %if.then38.i ], [ %76, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %7, i32 -652
  %81 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %do.end96.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %add.ptr46, i32 noundef 5) #8
  br label %if.end103

if.end103:                                        ; preds = %vb2_set_plane_payload.exit, %if.end73.if.end103_crit_edge
  %82 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr = load i32, ptr %data_size, align 8
  %cmp19.not = icmp eq i32 %.pr, 0
  br i1 %cmp19.not, label %if.end103.work_done_crit_edge, label %if.end103.while.body_crit_edge

if.end103.while.body_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end103.work_done_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %work_done

work_done:                                        ; preds = %if.end103.work_done_crit_edge, %netup_unidvb_ring_copy.exit, %if.then62, %do.body50, %if.then36, %do.body24, %if.then14, %do.body9
  %83 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %data_size, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netup_unidvb_dma_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr i8, ptr %t, i32 -96
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_unidvb_dma_timeout.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_unidvb_dma_timeout, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_unidvb_dma_timeout.__UNIQUE_ID_ddebug413, ptr noundef %dev, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.199) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock.i = getelementptr i8, ptr %t, i32 -140
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %free_buffers.i = getelementptr i8, ptr %t, i32 -52
  %4 = ptrtoint ptr %free_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %free_buffers.i, align 4
  %cmp.i.not13.i = icmp eq ptr %5, %free_buffers.i
  br i1 %cmp.i.not13.i, label %do.end.netup_unidvb_queue_cleanup.exit_crit_edge, label %do.end.while.body.i_crit_edge

do.end.while.body.i_crit_edge:                    ; preds = %do.end
  br label %while.body.i

do.end.netup_unidvb_queue_cleanup.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %netup_unidvb_queue_cleanup.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %do.end.while.body.i_crit_edge
  %6 = phi ptr [ %16, %list_del.exit.i.while.body.i_crit_edge ], [ %5, %do.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %6, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 6) #8
  %15 = ptrtoint ptr %free_buffers.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %free_buffers.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %free_buffers.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.netup_unidvb_queue_cleanup.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

list_del.exit.i.netup_unidvb_queue_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netup_unidvb_queue_cleanup.exit

netup_unidvb_queue_cleanup.exit:                  ; preds = %list_del.exit.i.netup_unidvb_queue_cleanup.exit_crit_edge, %do.end.netup_unidvb_queue_cleanup.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_dvb_unregister_bus(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 194)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 194)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !20, !22, !23, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !196, !197, !198, !200, !201, !202, !204, !206, !207, !208, !209, !210, !212, !213, !215, !216, !217, !218, !219, !221, !222, !224, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !238, !240, !241, !243, !244, !245, !246, !247, !249, !250, !252, !253, !254, !255, !256, !258, !259, !261, !262, !263, !264, !265, !267, !268, !269, !271, !272, !274, !275, !276, !278, !280, !281, !282, !283, !285, !287, !288, !289, !291, !292, !294, !295, !296, !298, !299, !301, !302, !303, !305, !306, !308, !309, !310, !312, !314, !315, !316, !318, !320, !322, !324, !325, !326, !327, !329, !330, !331, !333, !334, !336, !337, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !353, !354, !356, !357, !359, !360, !361, !362, !364, !365, !367, !368, !370, !371, !372, !374, !375, !376, !377, !379, !380, !381, !383, !384, !385, !386, !388, !389}
!llvm.module.flags = !{!390, !391, !392, !393, !394, !395, !396, !397}
!llvm.ident = !{!398}

!0 = !{ptr @__param_spi_enable, !1, !"__param_spi_enable", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_spi_enabletype385, !1, !"__UNIQUE_ID_spi_enabletype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description386, !4, !"__UNIQUE_ID_description386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 34, i32 1}
!5 = !{ptr @__UNIQUE_ID_author387, !6, !"__UNIQUE_ID_author387", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_version388, !8, !"__UNIQUE_ID_version388", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 36, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file389, !14, !"__UNIQUE_ID_file389", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 37, i32 1}
!15 = !{ptr @__UNIQUE_ID_license390, !14, !"__UNIQUE_ID_license390", i1 false, i1 false}
!16 = !{ptr @__param_adapter_nr, !17, !"__param_adapter_nr", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 39, i32 1}
!18 = !{ptr @__UNIQUE_ID_adapter_nrtype391, !17, !"__UNIQUE_ID_adapter_nrtype391", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_adapter_nr392, !17, !"__UNIQUE_ID_adapter_nr392", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_netup_unidvb__415_1026_netup_unidvb_pci_driver_init6, !21, !"__initcall__kmod_netup_unidvb__415_1026_netup_unidvb_pci_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 1026, i32 1}
!22 = !{ptr @__exitcall_netup_unidvb_pci_driver_exit, !21, !"__exitcall_netup_unidvb_pci_driver_exit", i1 false, i1 false}
!23 = !{ptr @spi_enable, !24, !"spi_enable", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 31, i32 12}
!25 = !{ptr @__param_str_spi_enable, !1, !"__param_str_spi_enable", i1 false, i1 false}
!26 = !{ptr @__param_str_adapter_nr, !17, !"__param_str_adapter_nr", i1 false, i1 false}
!27 = !{ptr @__param_arr_adapter_nr, !17, !"__param_arr_adapter_nr", i1 false, i1 false}
!28 = !{ptr @adapter_nr, !17, !"adapter_nr", i1 false, i1 false}
!29 = !{ptr @netup_unidvb_pci_driver, !30, !"netup_unidvb_pci_driver", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 1019, i32 26}
!31 = !{ptr @netup_unidvb_pci_tbl, !32, !"netup_unidvb_pci_tbl", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 1012, i32 35}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 789, i32 3}
!35 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @netup_unidvb_initdev._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @netup_unidvb_initdev._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 792, i32 3}
!43 = !{ptr @netup_unidvb_initdev._entry.8, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @netup_unidvb_initdev._entry_ptr.10, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 794, i32 3}
!47 = !{ptr @netup_unidvb_initdev._entry.11, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @netup_unidvb_initdev._entry_ptr.13, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 811, i32 2}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @netup_unidvb_initdev._entry.14, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @netup_unidvb_initdev._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 816, i32 13}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 818, i32 3}
!58 = !{ptr @netup_unidvb_initdev._entry.19, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @netup_unidvb_initdev._entry_ptr.21, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 829, i32 2}
!62 = !{ptr @netup_unidvb_initdev._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @netup_unidvb_initdev._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 833, i32 3}
!66 = !{ptr @netup_unidvb_initdev._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @netup_unidvb_initdev._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 841, i32 3}
!70 = !{ptr @netup_unidvb_initdev._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @netup_unidvb_initdev._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 845, i32 2}
!74 = !{ptr @netup_unidvb_initdev._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @netup_unidvb_initdev._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 850, i32 3}
!78 = !{ptr @netup_unidvb_initdev._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @netup_unidvb_initdev._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 854, i32 2}
!82 = !{ptr @netup_unidvb_initdev._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @netup_unidvb_initdev._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 864, i32 3}
!86 = !{ptr @netup_unidvb_initdev._entry.40, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @netup_unidvb_initdev._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 871, i32 3}
!90 = !{ptr @netup_unidvb_initdev._entry.43, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @netup_unidvb_initdev._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 878, i32 3}
!94 = !{ptr @netup_unidvb_initdev._entry.46, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @netup_unidvb_initdev._entry_ptr.48, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 884, i32 2}
!98 = !{ptr @netup_unidvb_initdev._entry.49, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @netup_unidvb_initdev._entry_ptr.51, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 892, i32 3}
!102 = !{ptr @netup_unidvb_initdev._entry.52, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @netup_unidvb_initdev._entry_ptr.54, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 901, i32 3}
!106 = !{ptr @netup_unidvb_initdev._entry.55, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @netup_unidvb_initdev._entry_ptr.57, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 907, i32 3}
!110 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @netup_unidvb_initdev._entry.58, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @netup_unidvb_initdev._entry_ptr.61, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 912, i32 3}
!115 = !{ptr @netup_unidvb_initdev._entry.62, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @netup_unidvb_initdev._entry_ptr.64, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 917, i32 3}
!119 = !{ptr @netup_unidvb_initdev._entry.65, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @netup_unidvb_initdev._entry_ptr.67, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 925, i32 3}
!123 = !{ptr @netup_unidvb_initdev._entry.68, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @netup_unidvb_initdev._entry_ptr.70, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.72, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 929, i32 3}
!127 = !{ptr @netup_unidvb_initdev._entry.71, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @netup_unidvb_initdev._entry_ptr.73, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 933, i32 3}
!131 = !{ptr @netup_unidvb_initdev._entry.74, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @netup_unidvb_initdev._entry_ptr.76, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.78, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 936, i32 2}
!135 = !{ptr @netup_unidvb_initdev._entry.77, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @netup_unidvb_initdev._entry_ptr.79, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.81, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 972, i32 2}
!139 = !{ptr @netup_unidvb_initdev._entry.80, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @netup_unidvb_initdev._entry_ptr.82, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.83, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 761, i32 3}
!143 = !{ptr @.str.84, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 761, i32 13}
!145 = !{ptr @.str.85, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 761, i32 24}
!147 = !{ptr @.str.86, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 761, i32 35}
!149 = !{ptr @.str.87, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 761, i32 48}
!151 = distinct !{null, !152, !"modules", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 760, i32 28}
!153 = !{ptr @.str.88, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 769, i32 4}
!155 = !{ptr @.str.89, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @netup_unidvb_request_modules._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @netup_unidvb_request_modules._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 739, i32 3}
!160 = !{ptr @.str.91, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @netup_unidvb_request_mmio._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @netup_unidvb_request_mmio._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.93, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 747, i32 3}
!165 = !{ptr @netup_unidvb_request_mmio._entry.92, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @netup_unidvb_request_mmio._entry_ptr.94, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.95, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 279, i32 4}
!169 = !{ptr @.str.96, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @netup_unidvb_isr._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @netup_unidvb_isr._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.97, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 221, i32 4}
!174 = !{ptr @.str.98, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @netup_dma_interrupt._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @netup_dma_interrupt._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.99, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 232, i32 3}
!179 = !{ptr @netup_dma_interrupt._rs, !178, !"_rs", i1 false, i1 false}
!180 = !{ptr @.str.101, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @netup_dma_interrupt._entry.100, !178, !"_entry", i1 false, i1 false}
!182 = !{ptr @netup_dma_interrupt._entry_ptr.102, !178, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.103, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 182, i32 2}
!185 = !{ptr @.str.104, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @netup_unidvb_dev_enable.__UNIQUE_ID_ddebug394, !184, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!187 = !{ptr @.str.105, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 396, i32 3}
!189 = distinct !{null, !188, !"<string literal>", i1 false, i1 false}
!190 = distinct !{null, !188, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!191 = !{ptr @netup_unidvb_dvb_init.__key, !192, !"__key", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 400, i32 2}
!193 = !{ptr @.str.107, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.108, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 406, i32 4}
!196 = !{ptr @netup_unidvb_dvb_init._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @netup_unidvb_dvb_init._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.110, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 416, i32 4}
!200 = !{ptr @netup_unidvb_dvb_init._entry.109, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @netup_unidvb_dvb_init._entry_ptr.111, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 425, i32 38}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 429, i32 25}
!206 = !{ptr @.str.114, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.116, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @netup_unidvb_dvb_init._entry.115, !205, !"_entry", i1 false, i1 false}
!209 = !{ptr @netup_unidvb_dvb_init._entry_ptr.117, !205, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.118, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 432, i32 3}
!212 = !{ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug403, !211, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!213 = !{ptr @.str.119, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 440, i32 8}
!215 = !{ptr @.str.120, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.122, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @netup_unidvb_dvb_init._entry.121, !214, !"_entry", i1 false, i1 false}
!218 = !{ptr @netup_unidvb_dvb_init._entry_ptr.123, !214, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.124, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 442, i32 4}
!221 = !{ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug404, !220, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!222 = !{ptr @.str.125, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 449, i32 8}
!224 = !{ptr @.str.126, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.128, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @netup_unidvb_dvb_init._entry.127, !223, !"_entry", i1 false, i1 false}
!227 = !{ptr @netup_unidvb_dvb_init._entry_ptr.129, !223, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.131, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 451, i32 4}
!230 = !{ptr @netup_unidvb_dvb_init._entry.130, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @netup_unidvb_dvb_init._entry_ptr.132, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.133, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 458, i32 7}
!234 = !{ptr @.str.134, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.136, !233, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @netup_unidvb_dvb_init._entry.135, !233, !"_entry", i1 false, i1 false}
!237 = !{ptr @netup_unidvb_dvb_init._entry_ptr.137, !233, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.138, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 460, i32 3}
!240 = !{ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug405, !239, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!241 = !{ptr @.str.139, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 466, i32 25}
!243 = !{ptr @.str.140, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.142, !242, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @netup_unidvb_dvb_init._entry.141, !242, !"_entry", i1 false, i1 false}
!246 = !{ptr @netup_unidvb_dvb_init._entry_ptr.143, !242, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.144, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 469, i32 3}
!249 = !{ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug406, !248, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!250 = !{ptr @.str.145, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 476, i32 8}
!252 = !{ptr @.str.146, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.148, !251, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @netup_unidvb_dvb_init._entry.147, !251, !"_entry", i1 false, i1 false}
!255 = !{ptr @netup_unidvb_dvb_init._entry_ptr.149, !251, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.150, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 478, i32 4}
!258 = !{ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug407, !257, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!259 = !{ptr @.str.151, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 485, i32 8}
!261 = !{ptr @.str.152, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.154, !260, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @netup_unidvb_dvb_init._entry.153, !260, !"_entry", i1 false, i1 false}
!264 = !{ptr @netup_unidvb_dvb_init._entry_ptr.155, !260, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.157, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 487, i32 4}
!267 = !{ptr @netup_unidvb_dvb_init._entry.156, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @netup_unidvb_dvb_init._entry_ptr.158, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.159, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 497, i32 3}
!271 = !{ptr @netup_unidvb_dvb_init.__UNIQUE_ID_ddebug408, !270, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!272 = !{ptr @.str.161, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 502, i32 2}
!274 = !{ptr @netup_unidvb_dvb_init._entry.160, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @netup_unidvb_dvb_init._entry_ptr.162, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @demod_config, !277, !"demod_config", i1 false, i1 false}
!277 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 114, i32 32}
!278 = !{ptr @.str.163, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 376, i32 3}
!280 = !{ptr @.str.164, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @netup_unidvb_queue_init._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @netup_unidvb_queue_init._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @dvb_qops, !284, !"dvb_qops", i1 false, i1 false}
!284 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 353, i32 29}
!285 = !{ptr @.str.165, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 297, i32 2}
!287 = !{ptr @.str.166, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @netup_unidvb_queue_setup.__UNIQUE_ID_ddebug396, !286, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!289 = !{ptr @.str.167, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 303, i32 2}
!291 = !{ptr @netup_unidvb_queue_setup.__UNIQUE_ID_ddebug397, !290, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!292 = !{ptr @.str.168, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 315, i32 2}
!294 = !{ptr @.str.169, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @netup_unidvb_buf_prepare.__UNIQUE_ID_ddebug398, !293, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!296 = !{ptr @.str.170, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 339, i32 2}
!298 = !{ptr @netup_unidvb_start_streaming.__UNIQUE_ID_ddebug400, !297, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!299 = !{ptr @.str.171, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 194, i32 2}
!301 = !{ptr @.str.172, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @netup_unidvb_dma_enable.__UNIQUE_ID_ddebug395, !300, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!303 = !{ptr @.str.173, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 348, i32 2}
!305 = !{ptr @netup_unidvb_stop_streaming.__UNIQUE_ID_ddebug401, !304, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!306 = !{ptr @.str.174, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 328, i32 2}
!308 = !{ptr @.str.175, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @netup_unidvb_buf_queue.__UNIQUE_ID_ddebug399, !307, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!310 = !{ptr @horus3a_conf, !311, !"horus3a_conf", i1 false, i1 false}
!311 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 120, i32 30}
!312 = !{ptr @.str.176, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 151, i32 2}
!314 = !{ptr @.str.177, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @netup_unidvb_tuner_ctrl.__UNIQUE_ID_ddebug393, !313, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!316 = !{ptr @helene_conf, !317, !"helene_conf", i1 false, i1 false}
!317 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 131, i32 29}
!318 = !{ptr @lnbh25_conf, !319, !"lnbh25_conf", i1 false, i1 false}
!319 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 137, i32 29}
!320 = !{ptr @ascot2e_conf, !321, !"ascot2e_conf", i1 false, i1 false}
!321 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 126, i32 30}
!322 = !{ptr @.str.178, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 652, i32 3}
!324 = !{ptr @.str.179, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @netup_unidvb_dma_init._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @netup_unidvb_dma_init._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.181, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 657, i32 2}
!329 = !{ptr @netup_unidvb_dma_init._entry.180, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @netup_unidvb_dma_init._entry_ptr.182, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @netup_unidvb_dma_init.__key, !332, !"__key", i1 false, i1 false}
!332 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 660, i32 2}
!333 = !{ptr @.str.183, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @netup_unidvb_dma_init.__key.184, !335, !"__key", i1 false, i1 false}
!335 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 661, i32 2}
!336 = !{ptr @.str.185, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @netup_unidvb_dma_init.__key.186, !338, !"__key", i1 false, i1 false}
!338 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 663, i32 2}
!339 = !{ptr @.str.187, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.189, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 668, i32 2}
!342 = !{ptr @netup_unidvb_dma_init._entry.188, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @netup_unidvb_dma_init._entry_ptr.190, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.191, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 587, i32 3}
!346 = !{ptr @.str.192, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug409, !345, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!348 = !{ptr @.str.193, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 593, i32 4}
!350 = !{ptr @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug410, !349, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!351 = !{ptr @.str.194, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 600, i32 4}
!353 = !{ptr @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug411, !352, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!354 = !{ptr @.str.195, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 609, i32 4}
!356 = !{ptr @netup_unidvb_dma_worker.__UNIQUE_ID_ddebug412, !355, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!357 = !{ptr @.str.196, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 546, i32 3}
!359 = !{ptr @.str.197, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @netup_unidvb_ring_copy._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @netup_unidvb_ring_copy._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = distinct !{null, !363, !"__already_done", i1 false, i1 false}
!363 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!364 = !{ptr @.str.198, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.199, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 642, i32 2}
!367 = !{ptr @netup_unidvb_dma_timeout.__UNIQUE_ID_ddebug413, !366, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!368 = !{ptr @.str.200, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 695, i32 2}
!370 = !{ptr @.str.201, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @netup_unidvb_dma_fini.__UNIQUE_ID_ddebug414, !369, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!372 = !{ptr @.str.202, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 512, i32 3}
!374 = !{ptr @.str.203, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @netup_unidvb_dvb_fini._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @netup_unidvb_dvb_fini._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.205, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 518, i32 2}
!379 = !{ptr @netup_unidvb_dvb_fini._entry.204, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @netup_unidvb_dvb_fini._entry_ptr.206, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.207, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 981, i32 2}
!383 = !{ptr @.str.208, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @netup_unidvb_finidev._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @netup_unidvb_finidev._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.210, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_core.c", i32 1007, i32 2}
!388 = !{ptr @netup_unidvb_finidev._entry.209, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @netup_unidvb_finidev._entry_ptr.211, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{i32 1, !"wchar_size", i32 2}
!391 = !{i32 1, !"min_enum_size", i32 4}
!392 = !{i32 8, !"branch-target-enforcement", i32 0}
!393 = !{i32 8, !"sign-return-address", i32 0}
!394 = !{i32 8, !"sign-return-address-all", i32 0}
!395 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!396 = !{i32 7, !"uwtable", i32 1}
!397 = !{i32 7, !"frame-pointer", i32 2}
!398 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!399 = !{!"auto-init"}
!400 = !{i64 2158535867}
!401 = !{i64 5048418}
!402 = !{i64 2158547870}
!403 = !{i64 2158377111}
!404 = !{i64 5049038}
!405 = !{i64 5049456}
!406 = !{i64 2158377781}
!407 = !{i64 5048618}
!408 = !{i64 2158378295}
!409 = !{i64 2158380291}
!410 = !{i64 2158362138}
!411 = !{i64 2158362544}
!412 = !{i64 5048841}
!413 = !{i64 2158362886}
!414 = !{i64 2148981593, i64 2148981598, i64 2148981611, i64 2148981655, i64 2148981689, i64 2148981710}
!415 = !{i64 2158366292}
!416 = !{i64 5049236}
!417 = !{i64 2158366539}
!418 = !{i64 2158490048}
!419 = !{i64 2158370465}
!420 = !{i64 2158371530}
!421 = !{i64 2158372044}
!422 = !{i64 2158372275}
!423 = !{i64 2158369630}
!424 = !{i64 2158361611}
!425 = !{i64 2158361854}
!426 = !{i64 2158485053}
!427 = !{i64 2158485567}
!428 = !{i64 2158486063}
!429 = !{i64 2158486469}
!430 = !{i64 2158486903}
!431 = !{i64 2158487329}
!432 = !{!"branch_weights", i32 2000, i32 1}
