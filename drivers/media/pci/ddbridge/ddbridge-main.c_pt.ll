; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ddbridge/ddbridge-main.c_pt.bc'
source_filename = "../drivers/media/pci/ddbridge/ddbridge-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.ddb = type { ptr, ptr, ptr, i32, ptr, i32, [4 x %struct.ddb_link], ptr, i32, i32, [32 x %struct.ddb_port], i32, [32 x %struct.ddb_i2c], [64 x %struct.ddb_io], [32 x %struct.ddb_io], [64 x %struct.dvb_adapter], [64 x %struct.ddb_dma], [32 x %struct.ddb_dma], ptr, i32, i32, [1028 x i8], i8, i32, i32, %struct.mutex, [4096 x i8] }
%struct.ddb_link = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.mutex, %struct.ddb_lnb, %struct.tasklet_struct, %struct.ddb_ids, %struct.spinlock, i32, [11 x i8], [256 x %struct.ddb_irq] }
%struct.ddb_lnb = type { %struct.mutex, i32, [4 x i32], [4 x i32], i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.125, i32 }
%union.anon.125 = type { ptr }
%struct.ddb_ids = type { i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ddb_irq = type { ptr, ptr }
%struct.ddb_port = type { ptr, i32, i32, i32, i32, ptr, %struct.mutex, i32, ptr, ptr, i32, [2 x ptr], ptr, ptr, i8, [2 x %struct.ddb_dvb], i32, i32, i8 }
%struct.ddb_dvb = type { ptr, i32, ptr, [1 x ptr], ptr, ptr, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.ddb_i2c = type { ptr, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, %struct.completion }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ddb_io = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.ddb_dma = type { ptr, i32, i32, [32 x i32], [32 x ptr], i32, i32, i32, i32, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, i32, i32, i32, i32, i32 }
%struct.ddb_info = type { i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr }

@__param_str_msi = internal constant [13 x i8] c"ddbridge.msi\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msi = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @msi } }, section "__param", align 4
@__UNIQUE_ID_msitype385 = internal constant [26 x i8] c"ddbridge.parmtype=msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi386 = internal constant [72 x i8] c"ddbridge.parm=msi:Control MSI interrupts: 0-disable, 1-enable (default)\00", section ".modinfo", align 1
@ddb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ddb_id_table, ptr @ddb_probe, ptr @ddb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ddbridge__387_316_module_init_ddbridge6 = internal global ptr @module_init_ddbridge, section ".initcall6.init", align 4
@__exitcall_module_exit_ddbridge = internal global ptr @module_exit_ddbridge, section ".exitcall.exit", align 4
@__UNIQUE_ID_description388 = internal constant [49 x i8] c"ddbridge.description=Digital Devices PCIe Bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_author389 = internal constant [81 x i8] c"ddbridge.author=Ralph and Marcus Metzler, Metzler Brothers Systementwicklung GbR\00", section ".modinfo", align 1
@__UNIQUE_ID_file390 = internal constant [50 x i8] c"ddbridge.file=drivers/media/pci/ddbridge/ddbridge\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [24 x i8] c"ddbridge.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version392 = internal constant [35 x i8] c"ddbridge.version=0.9.33-integrated\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ddbridge\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0.9.33-integrated\00", [46 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@ddb_id_table = internal constant { [21 x %struct.pci_device_id], [160 x i8] } { [21 x %struct.pci_device_id] [%struct.pci_device_id { i32 56577, i32 2, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 3, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 5, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 6, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 7, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 8, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 9, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 17, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 18, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 19, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 513, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 515, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 528, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 544, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 800, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 801, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 802, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 803, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 808, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 56577, i32 809, i32 56577, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@ddb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@ddb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 207, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"detected %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ddb_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/pci/ddbridge/ddbridge-main.c\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ddb_probe._entry_ptr = internal global ptr @ddb_probe._entry, section ".printk_index", align 4
@ddb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 214, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not enough memory for register map\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ddb_probe._entry_ptr.12 = internal global ptr @ddb_probe._entry.9, section ".printk_index", align 4
@ddb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 219, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot read registers\0A\00", [41 x i8] zeroinitializer }, align 32
@ddb_probe._entry_ptr.15 = internal global ptr @ddb_probe._entry.13, section ".printk_index", align 4
@ddb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 228, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW %08x REGMAP %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@ddb_probe._entry_ptr.18 = internal global ptr @ddb_probe._entry.16, section ".printk_index", align 4
@ddb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 242, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fail0\0A\00", [25 x i8] zeroinitializer }, align 32
@ddb_probe._entry_ptr.21 = internal global ptr @ddb_probe._entry.19, section ".printk_index", align 4
@ddb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 245, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fail\0A\00", [26 x i8] zeroinitializer }, align 32
@ddb_probe._entry_ptr.24 = internal global ptr @ddb_probe._entry.22, section ".printk_index", align 4
@ddb_irq_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 113, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"using %d MSI interrupt(s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddb_irq_msi\00", [20 x i8] zeroinitializer }, align 32
@ddb_irq_msi._entry_ptr = internal global ptr @ddb_irq_msi._entry, section ".printk_index", align 4
@ddb_irq_msi._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.6, i32 115, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MSI not available.\0A\00", [44 x i8] zeroinitializer }, align 32
@ddb_irq_msi._entry_ptr.29 = internal global ptr @ddb_irq_msi._entry.27, section ".printk_index", align 4
@module_init_ddbridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.6, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\016ddbridge: Digital Devices PCIE bridge driver 0.9.33-integrated, Copyright (C) 2010-17 Digital Devices GmbH\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"module_init_ddbridge\00", [43 x i8] zeroinitializer }, align 32
@module_init_ddbridge._entry_ptr = internal global ptr @module_init_ddbridge._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 46, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"ddb_pci_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 286, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 322, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"ddb_id_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 260, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 191, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 207, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 214, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 219, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 227, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 242, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 245, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 112, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 115, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [46 x i8] c"../drivers/media/pci/ddbridge/ddbridge-main.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 297, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_description388, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__UNIQUE_ID_msi386, ptr @__UNIQUE_ID_msitype385, ptr @__UNIQUE_ID_version392, ptr @__exitcall_module_exit_ddbridge, ptr @__initcall__kmod_ddbridge__387_316_module_init_ddbridge6, ptr @__modver_attr, ptr @__param_msi, ptr @ddb_irq_msi._entry, ptr @ddb_irq_msi._entry.27, ptr @ddb_irq_msi._entry_ptr, ptr @ddb_irq_msi._entry_ptr.29, ptr @ddb_probe._entry, ptr @ddb_probe._entry.13, ptr @ddb_probe._entry.16, ptr @ddb_probe._entry.19, ptr @ddb_probe._entry.22, ptr @ddb_probe._entry.9, ptr @ddb_probe._entry_ptr, ptr @ddb_probe._entry_ptr.12, ptr @ddb_probe._entry_ptr.15, ptr @ddb_probe._entry_ptr.18, ptr @ddb_probe._entry_ptr.21, ptr @ddb_probe._entry_ptr.24, ptr @module_exit_ddbridge, ptr @module_init_ddbridge._entry, ptr @module_init_ddbridge._entry_ptr, ptr @msi, ptr @ddb_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ddb_id_table, ptr @ddb_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_id_table to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_irq_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_irq_msi._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_init_ddbridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @module_exit_ddbridge() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @ddb_pci_driver) #6
  %call = tail call i32 @ddb_exit_ddbridge(i32 noundef 0, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddb_exit_ddbridge(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @module_init_ddbridge() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #9
  %call1 = tail call i32 @ddb_init_ddbridge() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ddb_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @ddb_exit_ddbridge(i32 noundef 0, i32 noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddb_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #6
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call2 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %call5 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then3.if.end9_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call noalias ptr @vzalloc(i32 noundef 248920) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end9
  %mutex = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @ddb_probe.__key) #6
  %has_dma = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 5
  %0 = ptrtoint ptr %has_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %has_dma, align 4
  %1 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call10, align 8
  %dev16 = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 2
  %2 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev16, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %conv = trunc i32 %5 to i16
  %link = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 6
  %ids = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 6, i32 0, i32 8
  %6 = ptrtoint ptr %ids to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %ids, align 8
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device, align 4
  %conv18 = trunc i32 %8 to i16
  %device22 = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 6, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %device22 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv18, ptr %device22, align 2
  %subvendor = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 2
  %10 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %subvendor, align 4
  %conv23 = trunc i32 %11 to i16
  %subvendor27 = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 6, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %subvendor27 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv23, ptr %subvendor27, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %13 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsystem_device, align 2
  %subdevice = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 6, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %subdevice to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %subdevice, align 2
  %shl = shl i32 %8, 16
  %or = or i32 %shl, %5
  %devid = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 6, i32 0, i32 8, i32 6
  %16 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %devid, align 8
  %17 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call10, ptr %link, align 8
  %call46 = tail call ptr @get_ddb_info(i16 noundef zeroext %conv, i16 noundef zeroext %conv18, i16 noundef zeroext %conv23, i16 noundef zeroext %14) #6
  %info = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call46, ptr %info, align 4
  %name = getelementptr inbounds %struct.ddb_info, ptr %call46, i32 0, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef %20) #9
  %21 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call10, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 47, i32 0, i32 1
  %23 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp58 = icmp eq i32 %24, 0
  br i1 %cmp58, label %do.body.cond.end_crit_edge, label %cond.false

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 47
  %25 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resource, align 8
  %sub = add i32 %24, 1
  %add = sub i32 %sub, %26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %do.body.cond.end_crit_edge ]
  %regs_len = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 8
  %27 = ptrtoint ptr %regs_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond, ptr %regs_len, align 4
  %resource68 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 47
  %28 = ptrtoint ptr %resource68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resource68, align 8
  %30 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp75 = icmp eq i32 %31, 0
  %sub87 = sub i32 1, %29
  %add88 = add i32 %sub87, %31
  %cond90 = select i1 %cmp75, i32 0, i32 %add88
  %call91 = tail call ptr @ioremap(i32 noundef %29, i32 noundef %cond90) #6
  %regs = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 7
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call91, ptr %regs, align 8
  %tobool93.not = icmp eq ptr %call91, null
  br i1 %tobool93.not, label %do.end97, label %if.end99

do.end97:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %do.end145

if.end99:                                         ; preds = %cond.end
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call91) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp101 = icmp eq i32 %33, -1
  br i1 %cmp101, label %do.end106, label %if.end108

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %do.end145

if.end108:                                        ; preds = %if.end99
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !84
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %hwid = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 6, i32 0, i32 8, i32 4
  %38 = ptrtoint ptr %hwid to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %hwid, align 8
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !84
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %regmapid = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 6, i32 0, i32 8, i32 5
  %43 = ptrtoint ptr %regmapid to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %regmapid, align 4
  %44 = ptrtoint ptr %hwid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hwid, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %45, i32 noundef %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 8
  %add.ptr.i213 = getelementptr i8, ptr %47, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  %add.ptr.i215 = getelementptr i8, ptr %49, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 0) #6, !srcloc !87
  %call129 = tail call fastcc i32 @ddb_irq_init(ptr noundef nonnull %call10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.end108.do.end141_crit_edge, label %if.end133

if.end108.do.end141_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end141

if.end133:                                        ; preds = %if.end108
  %call134 = tail call i32 @ddb_init(ptr noundef nonnull %call10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp eq i32 %call134, 0
  br i1 %cmp135, label %if.end133.cleanup_crit_edge, label %if.end138

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end138:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ddb_irq_exit(ptr noundef nonnull %call10)
  br label %do.end141

do.end141:                                        ; preds = %if.end138, %if.end108.do.end141_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  %msi.i = getelementptr inbounds %struct.ddb, ptr %call10, i32 0, i32 3
  %50 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %do.end141.do.end145_crit_edge, label %if.then.i

do.end141.do.end145_crit_edge:                    ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end145

if.then.i:                                        ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call10, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %53) #6
  br label %do.end145

do.end145:                                        ; preds = %if.then.i, %do.end141.do.end145_crit_edge, %do.end106, %do.end97
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  tail call void @ddb_unmap(ptr noundef nonnull %call10) #6
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end145, %if.end133.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end145 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then3.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ 0, %if.end133.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ddb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @ddb_device_destroy(ptr noundef %1) #6
  tail call void @ddb_ports_detach(ptr noundef %1) #6
  tail call void @ddb_i2c_release(ptr noundef %1) #6
  tail call fastcc void @ddb_irq_exit(ptr noundef %1)
  %msi.i = getelementptr inbounds %struct.ddb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.ddb_msi_exit.exit_crit_edge, label %if.then.i

entry.ddb_msi_exit.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ddb_msi_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %5) #6
  br label %ddb_msi_exit.exit

ddb_msi_exit.exit:                                ; preds = %if.then.i, %entry.ddb_msi_exit.exit_crit_edge
  tail call void @ddb_ports_release(ptr noundef %1) #6
  tail call void @ddb_buffers_free(ptr noundef %1) #6
  tail call void @ddb_unmap(ptr noundef %1) #6
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_ddb_info(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ddb_irq_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %9, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %11, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %add.ptr.i71 = getelementptr i8, ptr %13, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %add.ptr.i73 = getelementptr i8, ptr %15, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 0) #6, !srcloc !87
  %16 = load i32, ptr @msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %entry.ddb_irq_msi.exit_crit_edge, label %land.lhs.true.i

entry.ddb_irq_msi.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ddb_irq_msi.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @pci_msi_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.ddb_irq_msi.exit_crit_edge, label %if.then.i

land.lhs.true.i.ddb_irq_msi.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ddb_irq_msi.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %call.i.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %18, i32 noundef 1, i32 noundef 2, i32 noundef 6, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then3.i, label %do.end8.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %msi.i = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 3
  %19 = ptrtoint ptr %msi.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i.i, ptr %msi.i, align 4
  %dev4.i = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev4.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #9
  br label %ddb_irq_msi.exit

do.end8.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev9.i = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 2
  %22 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev9.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.28) #9
  br label %ddb_irq_msi.exit

ddb_irq_msi.exit:                                 ; preds = %do.end8.i, %if.then3.i, %land.lhs.true.i.ddb_irq_msi.exit_crit_edge, %entry.ddb_irq_msi.exit_crit_edge
  %msi = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 3
  %24 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  %spec.select = select i1 %tobool.not, i32 128, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp eq i32 %25, 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %call = tail call i32 @pci_irq_vector(ptr noundef %27, i32 noundef 0) #6
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %ddb_irq_msi.exit
  %call.i74 = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef nonnull @ddb_irq_handler0, ptr noundef null, i32 noundef %spec.select, ptr noundef nonnull @.str.1, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp4 = icmp slt i32 %call.i74, 0
  br i1 %cmp4, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %call8 = tail call i32 @pci_irq_vector(ptr noundef %29, i32 noundef 1) #6
  %call.i75 = tail call i32 @request_threaded_irq(i32 noundef %call8, ptr noundef nonnull @ddb_irq_handler1, ptr noundef null, i32 noundef %spec.select, ptr noundef nonnull @.str.1, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp10 = icmp slt i32 %call.i75, 0
  br i1 %cmp10, label %if.then11, label %if.end6.if.end22_crit_edge

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %call13 = tail call i32 @pci_irq_vector(ptr noundef %31, i32 noundef 0) #6
  %call14 = tail call ptr @free_irq(i32 noundef %call13, ptr noundef %dev) #6
  br label %cleanup

if.else:                                          ; preds = %ddb_irq_msi.exit
  %call.i76 = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef nonnull @ddb_irq_handler, ptr noundef null, i32 noundef %spec.select, ptr noundef nonnull @.str.1, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp19 = icmp slt i32 %call.i76, 0
  br i1 %cmp19, label %if.else.cleanup_crit_edge, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %if.end6.if.end22_crit_edge
  %stat.0 = phi i32 [ %call.i75, %if.end6.if.end22_crit_edge ], [ %call.i76, %if.else.if.end22_crit_edge ]
  %32 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp24 = icmp eq i32 %33, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 8
  %add.ptr.i78 = getelementptr i8, ptr %35, i32 64
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 16776975) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %add.ptr.i80 = getelementptr i8, ptr %37, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 251658240) #6, !srcloc !87
  br label %cleanup

if.else26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 268435215) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 8
  %add.ptr.i84 = getelementptr i8, ptr %39, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 0) #6, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %if.then25, %if.else.cleanup_crit_edge, %if.then11, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i75, %if.then11 ], [ %call.i74, %if.then2.cleanup_crit_edge ], [ %call.i76, %if.else.cleanup_crit_edge ], [ %stat.0, %if.else26 ], [ %stat.0, %if.then25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddb_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ddb_irq_exit(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %regs.i.i = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #6, !srcloc !87
  %msi = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call = tail call i32 @pci_irq_vector(ptr noundef %7, i32 noundef 1) #6
  %call1 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call3 = tail call i32 @pci_irq_vector(ptr noundef %9, i32 noundef 0) #6
  %call4 = tail call ptr @free_irq(i32 noundef %call3, ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ddb_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddb_irq_handler0(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddb_irq_handler1(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddb_irq_handler(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ddb_device_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ddb_ports_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ddb_i2c_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ddb_ports_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ddb_buffers_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddb_init_ddbridge() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_msi, !1, !"__param_msi", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_msitype385, !1, !"__UNIQUE_ID_msitype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_msi386, !4, !"__UNIQUE_ID_msi386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 52, i32 1}
!5 = !{ptr @__initcall__kmod_ddbridge__387_316_module_init_ddbridge6, !6, !"__initcall__kmod_ddbridge__387_316_module_init_ddbridge6", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 316, i32 1}
!7 = !{ptr @__exitcall_module_exit_ddbridge, !8, !"__exitcall_module_exit_ddbridge", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 317, i32 1}
!9 = !{ptr @__UNIQUE_ID_description388, !10, !"__UNIQUE_ID_description388", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 319, i32 1}
!11 = !{ptr @__UNIQUE_ID_author389, !12, !"__UNIQUE_ID_author389", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 320, i32 1}
!13 = !{ptr @__UNIQUE_ID_file390, !14, !"__UNIQUE_ID_file390", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 321, i32 1}
!15 = !{ptr @__UNIQUE_ID_license391, !14, !"__UNIQUE_ID_license391", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_version392, !17, !"__UNIQUE_ID_version392", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 322, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__param_str_msi, !1, !"__param_str_msi", i1 false, i1 false}
!23 = !{ptr @msi, !24, !"msi", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 46, i32 12}
!25 = !{ptr @ddb_pci_driver, !26, !"ddb_pci_driver", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 286, i32 26}
!27 = !{ptr @ddb_id_table, !28, !"ddb_id_table", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 260, i32 35}
!29 = !{ptr @ddb_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 191, i32 2}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 207, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ddb_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @ddb_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 214, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ddb_probe._entry.9, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ddb_probe._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 219, i32 3}
!47 = !{ptr @ddb_probe._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ddb_probe._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 227, i32 2}
!51 = !{ptr @ddb_probe._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ddb_probe._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 242, i32 2}
!55 = !{ptr @ddb_probe._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ddb_probe._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 245, i32 2}
!59 = !{ptr @ddb_probe._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ddb_probe._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 112, i32 4}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ddb_irq_msi._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ddb_irq_msi._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 115, i32 4}
!68 = !{ptr @ddb_irq_msi._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ddb_irq_msi._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/ddbridge/ddbridge-main.c", i32 297, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @module_init_ddbridge._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @module_init_ddbridge._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 4622462}
!85 = !{i64 2158299890}
!86 = !{i64 2158300271}
!87 = !{i64 4622044}
