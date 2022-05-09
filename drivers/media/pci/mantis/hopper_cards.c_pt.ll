; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/hopper_cards.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/hopper_cards.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.mantis_pci_drvdata = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.125, i32 }
%struct.atomic_t = type { i32 }
%union.anon.125 = type { ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.124, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.124 = type { ptr }
%struct.mantis_ca = type { [4 x %struct.mantis_slot], %struct.work_struct, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, ptr, %struct.dvb_ca_en50221, %struct.mutex }
%struct.mantis_slot = type { i32, i32, i32 }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_verbose = internal constant [15 x i8] c"hopper.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype383 = internal constant [28 x i8] c"hopper.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose384 = internal constant [64 x i8] c"hopper.parm=verbose:verbose startup messages, default is 0 (no)\00", section ".modinfo", align 1
@__initcall__kmod_hopper__385_258_hopper_pci_driver_init6 = internal global ptr @hopper_pci_driver_init, section ".initcall6.init", align 4
@hopper_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @hopper_pci_table, ptr @hopper_pci_probe, ptr @hopper_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_hopper_pci_driver_exit = internal global ptr @hopper_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description386 = internal constant [33 x i8] c"hopper.description=HOPPER driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author387 = internal constant [27 x i8] c"hopper.author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_file388 = internal constant [44 x i8] c"hopper.file=drivers/media/pci/mantis/hopper\00", section ".modinfo", align 1
@__UNIQUE_ID_license389 = internal constant [19 x i8] c"hopper.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hopper\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Hopper\00", [25 x i8] zeroinitializer }, align 32
@hopper_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6178, i32 20021, i32 6178, i32 40, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vp3028_config = external dso_local global %struct.mantis_hwconfig, align 4
@.compoundliteral = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp3028_config, ptr null }, [24 x i8] zeroinitializer }, align 32
@devs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hopper_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mantis->intmask_lock\00", [42 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s (%d): ERROR: Mantis PCI initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hopper_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/mantis/hopper_cards.c\00", [56 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr = internal global ptr @hopper_pci_probe._entry, section ".printk_index", align 4
@hopper_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015%s (%d): ERROR: Mantis PCI initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.8 = internal global ptr @hopper_pci_probe._entry.6, section ".printk_index", align 4
@hopper_pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s (%d): ERROR: Mantis PCI initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.11 = internal global ptr @hopper_pci_probe._entry.9, section ".printk_index", align 4
@hopper_pci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s (%d): ERROR: Mantis PCI initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.14 = internal global ptr @hopper_pci_probe._entry.12, section ".printk_index", align 4
@hopper_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.16 = internal global ptr @hopper_pci_probe._entry.15, section ".printk_index", align 4
@hopper_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s (%d): ERROR: Mantis stream control failed <%d>\0A\00", [43 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.19 = internal global ptr @hopper_pci_probe._entry.17, section ".printk_index", align 4
@hopper_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015%s (%d): ERROR: Mantis stream control failed <%d>\0A\00", [43 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.22 = internal global ptr @hopper_pci_probe._entry.20, section ".printk_index", align 4
@hopper_pci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s (%d): ERROR: Mantis stream control failed <%d>\0A\00", [43 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.25 = internal global ptr @hopper_pci_probe._entry.23, section ".printk_index", align 4
@hopper_pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s (%d): ERROR: Mantis stream control failed <%d>\0A\00", [43 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.28 = internal global ptr @hopper_pci_probe._entry.26, section ".printk_index", align 4
@hopper_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.30 = internal global ptr @hopper_pci_probe._entry.29, section ".printk_index", align 4
@hopper_pci_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s (%d): ERROR: Mantis I2C initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.33 = internal global ptr @hopper_pci_probe._entry.31, section ".printk_index", align 4
@hopper_pci_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015%s (%d): ERROR: Mantis I2C initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.36 = internal global ptr @hopper_pci_probe._entry.34, section ".printk_index", align 4
@hopper_pci_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.5, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s (%d): ERROR: Mantis I2C initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.39 = internal global ptr @hopper_pci_probe._entry.37, section ".printk_index", align 4
@hopper_pci_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.4, ptr @.str.5, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s (%d): ERROR: Mantis I2C initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.42 = internal global ptr @hopper_pci_probe._entry.40, section ".printk_index", align 4
@hopper_pci_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.4, ptr @.str.5, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.44 = internal global ptr @hopper_pci_probe._entry.43, section ".printk_index", align 4
@hopper_pci_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.4, ptr @.str.5, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s (%d): ERROR: Mantis MAC address read failed <%d>\0A\00", [41 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.47 = internal global ptr @hopper_pci_probe._entry.45, section ".printk_index", align 4
@hopper_pci_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.4, ptr @.str.5, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015%s (%d): ERROR: Mantis MAC address read failed <%d>\0A\00", [41 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.50 = internal global ptr @hopper_pci_probe._entry.48, section ".printk_index", align 4
@hopper_pci_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.5, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s (%d): ERROR: Mantis MAC address read failed <%d>\0A\00", [41 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.53 = internal global ptr @hopper_pci_probe._entry.51, section ".printk_index", align 4
@hopper_pci_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.4, ptr @.str.5, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s (%d): ERROR: Mantis MAC address read failed <%d>\0A\00", [41 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.56 = internal global ptr @hopper_pci_probe._entry.54, section ".printk_index", align 4
@hopper_pci_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.4, ptr @.str.5, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.58 = internal global ptr @hopper_pci_probe._entry.57, section ".printk_index", align 4
@hopper_pci_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.5, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s (%d): ERROR: Mantis DMA initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.61 = internal global ptr @hopper_pci_probe._entry.59, section ".printk_index", align 4
@hopper_pci_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.4, ptr @.str.5, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015%s (%d): ERROR: Mantis DMA initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.64 = internal global ptr @hopper_pci_probe._entry.62, section ".printk_index", align 4
@hopper_pci_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.4, ptr @.str.5, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s (%d): ERROR: Mantis DMA initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.67 = internal global ptr @hopper_pci_probe._entry.65, section ".printk_index", align 4
@hopper_pci_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.4, ptr @.str.5, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s (%d): ERROR: Mantis DMA initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.70 = internal global ptr @hopper_pci_probe._entry.68, section ".printk_index", align 4
@hopper_pci_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.4, ptr @.str.5, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.72 = internal global ptr @hopper_pci_probe._entry.71, section ".printk_index", align 4
@hopper_pci_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.4, ptr @.str.5, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s (%d): ERROR: Mantis DVB initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.75 = internal global ptr @hopper_pci_probe._entry.73, section ".printk_index", align 4
@hopper_pci_probe._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.4, ptr @.str.5, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015%s (%d): ERROR: Mantis DVB initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.78 = internal global ptr @hopper_pci_probe._entry.76, section ".printk_index", align 4
@hopper_pci_probe._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.4, ptr @.str.5, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s (%d): ERROR: Mantis DVB initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.81 = internal global ptr @hopper_pci_probe._entry.79, section ".printk_index", align 4
@hopper_pci_probe._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.4, ptr @.str.5, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s (%d): ERROR: Mantis DVB initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.84 = internal global ptr @hopper_pci_probe._entry.82, section ".printk_index", align 4
@hopper_pci_probe._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.4, ptr @.str.5, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.86 = internal global ptr @hopper_pci_probe._entry.85, section ".printk_index", align 4
@hopper_pci_probe._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.4, ptr @.str.5, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s (%d): ERROR: Mantis DMA exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.89 = internal global ptr @hopper_pci_probe._entry.87, section ".printk_index", align 4
@hopper_pci_probe._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.4, ptr @.str.5, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s (%d): ERROR: Mantis DMA exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.92 = internal global ptr @hopper_pci_probe._entry.90, section ".printk_index", align 4
@hopper_pci_probe._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.4, ptr @.str.5, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s (%d): ERROR: Mantis DMA exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.95 = internal global ptr @hopper_pci_probe._entry.93, section ".printk_index", align 4
@hopper_pci_probe._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.4, ptr @.str.5, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s (%d): ERROR: Mantis DMA exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.98 = internal global ptr @hopper_pci_probe._entry.96, section ".printk_index", align 4
@hopper_pci_probe._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.4, ptr @.str.5, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.100 = internal global ptr @hopper_pci_probe._entry.99, section ".printk_index", align 4
@hopper_pci_probe._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.4, ptr @.str.5, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s (%d): ERROR: Mantis I2C exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.103 = internal global ptr @hopper_pci_probe._entry.101, section ".printk_index", align 4
@hopper_pci_probe._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.4, ptr @.str.5, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s (%d): ERROR: Mantis I2C exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.106 = internal global ptr @hopper_pci_probe._entry.104, section ".printk_index", align 4
@hopper_pci_probe._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.4, ptr @.str.5, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s (%d): ERROR: Mantis I2C exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.109 = internal global ptr @hopper_pci_probe._entry.107, section ".printk_index", align 4
@hopper_pci_probe._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.4, ptr @.str.5, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s (%d): ERROR: Mantis I2C exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.112 = internal global ptr @hopper_pci_probe._entry.110, section ".printk_index", align 4
@hopper_pci_probe._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.4, ptr @.str.5, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.114 = internal global ptr @hopper_pci_probe._entry.113, section ".printk_index", align 4
@hopper_pci_probe._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.4, ptr @.str.5, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s (%d): ERROR: Mantis PCI exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.117 = internal global ptr @hopper_pci_probe._entry.115, section ".printk_index", align 4
@hopper_pci_probe._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.4, ptr @.str.5, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s (%d): ERROR: Mantis PCI exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.120 = internal global ptr @hopper_pci_probe._entry.118, section ".printk_index", align 4
@hopper_pci_probe._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.4, ptr @.str.5, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s (%d): ERROR: Mantis PCI exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.123 = internal global ptr @hopper_pci_probe._entry.121, section ".printk_index", align 4
@hopper_pci_probe._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.4, ptr @.str.5, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s (%d): ERROR: Mantis PCI exit! <%d>\0A\00", [55 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.126 = internal global ptr @hopper_pci_probe._entry.124, section ".printk_index", align 4
@hopper_pci_probe._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.4, ptr @.str.5, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.128 = internal global ptr @hopper_pci_probe._entry.127, section ".printk_index", align 4
@hopper_pci_probe._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.4, ptr @.str.5, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s (%d): ERROR: Mantis free! <%d>\0A\00", [59 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.131 = internal global ptr @hopper_pci_probe._entry.129, section ".printk_index", align 4
@hopper_pci_probe._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.4, ptr @.str.5, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015%s (%d): ERROR: Mantis free! <%d>\0A\00", [59 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.134 = internal global ptr @hopper_pci_probe._entry.132, section ".printk_index", align 4
@hopper_pci_probe._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.4, ptr @.str.5, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s (%d): ERROR: Mantis free! <%d>\0A\00", [59 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.137 = internal global ptr @hopper_pci_probe._entry.135, section ".printk_index", align 4
@hopper_pci_probe._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.4, ptr @.str.5, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s (%d): ERROR: Mantis free! <%d>\0A\00", [59 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.140 = internal global ptr @hopper_pci_probe._entry.138, section ".printk_index", align 4
@hopper_pci_probe._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.4, ptr @.str.5, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_pci_probe._entry_ptr.142 = internal global ptr @hopper_pci_probe._entry.141, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hopper_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.5, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0A-- Stat=<%02x> Mask=<%02x> --\00", [33 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hopper_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr = internal global ptr @hopper_irq_handler._entry, section ".printk_index", align 4
@hopper_irq_handler._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<%s>\00", [27 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.147 = internal global ptr @hopper_irq_handler._entry.145, section ".printk_index", align 4
@hopper_irq_handler._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.149 = internal global ptr @hopper_irq_handler._entry.148, section ".printk_index", align 4
@hopper_irq_handler._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.151 = internal global ptr @hopper_irq_handler._entry.150, section ".printk_index", align 4
@hopper_irq_handler._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.153 = internal global ptr @hopper_irq_handler._entry.152, section ".printk_index", align 4
@hopper_irq_handler._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.155 = internal global ptr @hopper_irq_handler._entry.154, section ".printk_index", align 4
@hopper_irq_handler._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.157 = internal global ptr @hopper_irq_handler._entry.156, section ".printk_index", align 4
@hopper_irq_handler._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.159 = internal global ptr @hopper_irq_handler._entry.158, section ".printk_index", align 4
@hopper_irq_handler._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.161 = internal global ptr @hopper_irq_handler._entry.160, section ".printk_index", align 4
@hopper_irq_handler._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.163 = internal global ptr @hopper_irq_handler._entry.162, section ".printk_index", align 4
@hopper_irq_handler._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.165 = internal global ptr @hopper_irq_handler._entry.164, section ".printk_index", align 4
@hopper_irq_handler._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.144, ptr @.str.5, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"<Unknown> Stat=<%02x> Mask=<%02x>\00", [62 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.168 = internal global ptr @hopper_irq_handler._entry.166, section ".printk_index", align 4
@hopper_irq_handler._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.144, ptr @.str.5, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hopper_irq_handler._entry_ptr.171 = internal global ptr @hopper_irq_handler._entry.169, section ".printk_index", align 4
@.str.172 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IRQ-0\00", [26 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IRQ-1\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OCERR\00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PABRT\00", [26 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RIPRR\00", [26 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PPERR\00", [26 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FTRGT\00", [26 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RISCI\00", [26 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RACK\00", [27 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.182 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 33, i32 21 }
@___asan_gen_.185 = private unnamed_addr constant [18 x i8] c"hopper_pci_driver\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 251, i32 26 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 258, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 252, i32 11 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"hopper_pci_table\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 243, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [5 x i8] c"devs\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 52, i32 12 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 167, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 171, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 177, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 183, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 189, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 195, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 201, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 209, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 213, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 217, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 221, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 83, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 85, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 88, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 94, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 102, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 105, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 108, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 111, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 114, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 117, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 122, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 138, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 140, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 40, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 41, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 42, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 43, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 44, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 45, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 46, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 47, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 48, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.565 = private constant [43 x i8] c"../drivers/media/pci/mantis/hopper_cards.c\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 49, i32 2 }
@llvm.compiler.used = appending global [202 x ptr] [ptr @__UNIQUE_ID_author387, ptr @__UNIQUE_ID_description386, ptr @__UNIQUE_ID_file388, ptr @__UNIQUE_ID_license389, ptr @__UNIQUE_ID_verbose384, ptr @__UNIQUE_ID_verbosetype383, ptr @__exitcall_hopper_pci_driver_exit, ptr @__initcall__kmod_hopper__385_258_hopper_pci_driver_init6, ptr @__param_verbose, ptr @hopper_irq_handler._entry, ptr @hopper_irq_handler._entry.145, ptr @hopper_irq_handler._entry.148, ptr @hopper_irq_handler._entry.150, ptr @hopper_irq_handler._entry.152, ptr @hopper_irq_handler._entry.154, ptr @hopper_irq_handler._entry.156, ptr @hopper_irq_handler._entry.158, ptr @hopper_irq_handler._entry.160, ptr @hopper_irq_handler._entry.162, ptr @hopper_irq_handler._entry.164, ptr @hopper_irq_handler._entry.166, ptr @hopper_irq_handler._entry.169, ptr @hopper_irq_handler._entry_ptr, ptr @hopper_irq_handler._entry_ptr.147, ptr @hopper_irq_handler._entry_ptr.149, ptr @hopper_irq_handler._entry_ptr.151, ptr @hopper_irq_handler._entry_ptr.153, ptr @hopper_irq_handler._entry_ptr.155, ptr @hopper_irq_handler._entry_ptr.157, ptr @hopper_irq_handler._entry_ptr.159, ptr @hopper_irq_handler._entry_ptr.161, ptr @hopper_irq_handler._entry_ptr.163, ptr @hopper_irq_handler._entry_ptr.165, ptr @hopper_irq_handler._entry_ptr.168, ptr @hopper_irq_handler._entry_ptr.171, ptr @hopper_pci_driver_exit, ptr @hopper_pci_probe._entry, ptr @hopper_pci_probe._entry.101, ptr @hopper_pci_probe._entry.104, ptr @hopper_pci_probe._entry.107, ptr @hopper_pci_probe._entry.110, ptr @hopper_pci_probe._entry.113, ptr @hopper_pci_probe._entry.115, ptr @hopper_pci_probe._entry.118, ptr @hopper_pci_probe._entry.12, ptr @hopper_pci_probe._entry.121, ptr @hopper_pci_probe._entry.124, ptr @hopper_pci_probe._entry.127, ptr @hopper_pci_probe._entry.129, ptr @hopper_pci_probe._entry.132, ptr @hopper_pci_probe._entry.135, ptr @hopper_pci_probe._entry.138, ptr @hopper_pci_probe._entry.141, ptr @hopper_pci_probe._entry.15, ptr @hopper_pci_probe._entry.17, ptr @hopper_pci_probe._entry.20, ptr @hopper_pci_probe._entry.23, ptr @hopper_pci_probe._entry.26, ptr @hopper_pci_probe._entry.29, ptr @hopper_pci_probe._entry.31, ptr @hopper_pci_probe._entry.34, ptr @hopper_pci_probe._entry.37, ptr @hopper_pci_probe._entry.40, ptr @hopper_pci_probe._entry.43, ptr @hopper_pci_probe._entry.45, ptr @hopper_pci_probe._entry.48, ptr @hopper_pci_probe._entry.51, ptr @hopper_pci_probe._entry.54, ptr @hopper_pci_probe._entry.57, ptr @hopper_pci_probe._entry.59, ptr @hopper_pci_probe._entry.6, ptr @hopper_pci_probe._entry.62, ptr @hopper_pci_probe._entry.65, ptr @hopper_pci_probe._entry.68, ptr @hopper_pci_probe._entry.71, ptr @hopper_pci_probe._entry.73, ptr @hopper_pci_probe._entry.76, ptr @hopper_pci_probe._entry.79, ptr @hopper_pci_probe._entry.82, ptr @hopper_pci_probe._entry.85, ptr @hopper_pci_probe._entry.87, ptr @hopper_pci_probe._entry.9, ptr @hopper_pci_probe._entry.90, ptr @hopper_pci_probe._entry.93, ptr @hopper_pci_probe._entry.96, ptr @hopper_pci_probe._entry.99, ptr @hopper_pci_probe._entry_ptr, ptr @hopper_pci_probe._entry_ptr.100, ptr @hopper_pci_probe._entry_ptr.103, ptr @hopper_pci_probe._entry_ptr.106, ptr @hopper_pci_probe._entry_ptr.109, ptr @hopper_pci_probe._entry_ptr.11, ptr @hopper_pci_probe._entry_ptr.112, ptr @hopper_pci_probe._entry_ptr.114, ptr @hopper_pci_probe._entry_ptr.117, ptr @hopper_pci_probe._entry_ptr.120, ptr @hopper_pci_probe._entry_ptr.123, ptr @hopper_pci_probe._entry_ptr.126, ptr @hopper_pci_probe._entry_ptr.128, ptr @hopper_pci_probe._entry_ptr.131, ptr @hopper_pci_probe._entry_ptr.134, ptr @hopper_pci_probe._entry_ptr.137, ptr @hopper_pci_probe._entry_ptr.14, ptr @hopper_pci_probe._entry_ptr.140, ptr @hopper_pci_probe._entry_ptr.142, ptr @hopper_pci_probe._entry_ptr.16, ptr @hopper_pci_probe._entry_ptr.19, ptr @hopper_pci_probe._entry_ptr.22, ptr @hopper_pci_probe._entry_ptr.25, ptr @hopper_pci_probe._entry_ptr.28, ptr @hopper_pci_probe._entry_ptr.30, ptr @hopper_pci_probe._entry_ptr.33, ptr @hopper_pci_probe._entry_ptr.36, ptr @hopper_pci_probe._entry_ptr.39, ptr @hopper_pci_probe._entry_ptr.42, ptr @hopper_pci_probe._entry_ptr.44, ptr @hopper_pci_probe._entry_ptr.47, ptr @hopper_pci_probe._entry_ptr.50, ptr @hopper_pci_probe._entry_ptr.53, ptr @hopper_pci_probe._entry_ptr.56, ptr @hopper_pci_probe._entry_ptr.58, ptr @hopper_pci_probe._entry_ptr.61, ptr @hopper_pci_probe._entry_ptr.64, ptr @hopper_pci_probe._entry_ptr.67, ptr @hopper_pci_probe._entry_ptr.70, ptr @hopper_pci_probe._entry_ptr.72, ptr @hopper_pci_probe._entry_ptr.75, ptr @hopper_pci_probe._entry_ptr.78, ptr @hopper_pci_probe._entry_ptr.8, ptr @hopper_pci_probe._entry_ptr.81, ptr @hopper_pci_probe._entry_ptr.84, ptr @hopper_pci_probe._entry_ptr.86, ptr @hopper_pci_probe._entry_ptr.89, ptr @hopper_pci_probe._entry_ptr.92, ptr @hopper_pci_probe._entry_ptr.95, ptr @hopper_pci_probe._entry_ptr.98, ptr @verbose, ptr @hopper_pci_driver, ptr @.str, ptr @.str.1, ptr @hopper_pci_table, ptr @.compoundliteral, ptr @devs, ptr @hopper_pci_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.167, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_pci_probe._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_irq_handler._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hopper_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @hopper_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hopper_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @hopper_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hopper_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3976) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %3 = inttoptr i32 %2 to ptr
  %4 = load i32, ptr @devs, align 4
  %num = getelementptr inbounds %struct.mantis_pci, ptr %call7.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num, align 8
  %6 = load i32, ptr @verbose, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call7.i.i, align 8
  %pdev1 = getelementptr inbounds %struct.mantis_pci, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %pdev1, align 8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %irq_handler = getelementptr inbounds %struct.mantis_hwconfig, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %irq_handler to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hopper_irq_handler, ptr %irq_handler, align 4
  %hwconfig2 = getelementptr inbounds %struct.mantis_pci, ptr %call7.i.i, i32 0, i32 32
  %12 = ptrtoint ptr %hwconfig2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %hwconfig2, align 4
  %rc_map_name = getelementptr inbounds %struct.mantis_pci_drvdata, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %rc_map_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rc_map_name, align 4
  %rc_map_name3 = getelementptr inbounds %struct.mantis_pci, ptr %call7.i.i, i32 0, i32 45
  %15 = ptrtoint ptr %rc_map_name3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %rc_map_name3, align 4
  %intmask_lock = getelementptr inbounds %struct.mantis_pci, ptr %call7.i.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %intmask_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hopper_pci_probe.__key, i16 noundef signext 3) #6
  %call5 = tail call i32 @mantis_pci_init(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end76, label %do.body8

do.body8:                                         ; preds = %if.end
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %do.body8.do.end746_crit_edge, label %do.end15

do.body8.do.end746_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end746

do.end15:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %19, i32 noundef %call5) #10
  br label %do.body675

if.end76:                                         ; preds = %if.end
  %call77 = tail call i32 @mantis_stream_control(ptr noundef nonnull %call7.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.body80, label %if.end152

do.body80:                                        ; preds = %if.end76
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp82.not = icmp eq i32 %21, 0
  br i1 %cmp82.not, label %do.body80.do.end746_crit_edge, label %do.end89

do.body80.do.end746_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end746

do.end89:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num, align 8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4, i32 noundef %23, i32 noundef %call77) #10
  br label %do.body675

if.end152:                                        ; preds = %if.end76
  %call153 = tail call i32 @mantis_i2c_init(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %do.body156, label %if.end228

do.body156:                                       ; preds = %if.end152
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp158.not = icmp eq i32 %25, 0
  br i1 %cmp158.not, label %do.body156.do.end674_crit_edge, label %do.end165

do.body156.do.end674_crit_edge:                   ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end674

do.end165:                                        ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num, align 8
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.4, i32 noundef %27, i32 noundef %call153) #10
  br label %do.body603

if.end228:                                        ; preds = %if.end152
  %call229 = tail call i32 @mantis_get_mac(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp230 = icmp slt i32 %call229, 0
  br i1 %cmp230, label %do.body232, label %if.end304

do.body232:                                       ; preds = %if.end228
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp234.not = icmp eq i32 %29, 0
  br i1 %cmp234.not, label %do.body232.do.end674_crit_edge, label %do.end241

do.body232.do.end674_crit_edge:                   ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end674

do.end241:                                        ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num, align 8
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.4, i32 noundef %31, i32 noundef %call229) #10
  br label %do.body603

if.end304:                                        ; preds = %if.end228
  %call305 = tail call i32 @mantis_dma_init(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %cmp306 = icmp slt i32 %call305, 0
  br i1 %cmp306, label %do.body308, label %if.end380

do.body308:                                       ; preds = %if.end304
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp310.not = icmp eq i32 %33, 0
  br i1 %cmp310.not, label %do.body308.do.end601_crit_edge, label %do.end317

do.body308.do.end601_crit_edge:                   ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end601

do.end317:                                        ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num, align 8
  %call320 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.4, i32 noundef %35, i32 noundef %call305) #10
  br label %do.body530

if.end380:                                        ; preds = %if.end304
  %call381 = tail call i32 @mantis_dvb_init(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call381)
  %cmp382 = icmp slt i32 %call381, 0
  br i1 %cmp382, label %do.body384, label %if.end456

do.body384:                                       ; preds = %if.end380
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp386.not = icmp eq i32 %37, 0
  br i1 %cmp386.not, label %do.body384.do.end528_crit_edge, label %do.body457

do.body384.do.end528_crit_edge:                   ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end528

if.end456:                                        ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #8
  %38 = load i32, ptr @devs, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr @devs, align 4
  br label %cleanup

do.body457:                                       ; preds = %do.body384
  %39 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num, align 8
  %call396 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.4, i32 noundef %40, i32 noundef %call381) #10
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp459.not = icmp eq i32 %.pr, 0
  br i1 %cmp459.not, label %do.body457.do.end528_crit_edge, label %do.end466

do.body457.do.end528_crit_edge:                   ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end528

do.end466:                                        ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num, align 8
  %call469 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.4, i32 noundef %43, i32 noundef %call381) #10
  br label %do.end528

do.end528:                                        ; preds = %do.end466, %do.body457.do.end528_crit_edge, %do.body384.do.end528_crit_edge
  %call529 = tail call i32 @mantis_dma_exit(ptr noundef nonnull %call7.i.i) #6
  br label %do.body530

do.body530:                                       ; preds = %do.end528, %do.end317
  %err.0.ph = phi i32 [ %call381, %do.end528 ], [ %call305, %do.end317 ]
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr976 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr976)
  %cmp532.not = icmp eq i32 %.pr976, 0
  br i1 %cmp532.not, label %do.body530.do.end601_crit_edge, label %do.end539

do.body530.do.end601_crit_edge:                   ; preds = %do.body530
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end601

do.end539:                                        ; preds = %do.body530
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num, align 8
  %call542 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, i32 noundef %46, i32 noundef %err.0.ph) #10
  br label %do.end601

do.end601:                                        ; preds = %do.end539, %do.body530.do.end601_crit_edge, %do.body308.do.end601_crit_edge
  %err.0980 = phi i32 [ %err.0.ph, %do.end539 ], [ %err.0.ph, %do.body530.do.end601_crit_edge ], [ %call305, %do.body308.do.end601_crit_edge ]
  %call602 = tail call i32 @mantis_i2c_exit(ptr noundef nonnull %call7.i.i) #6
  br label %do.body603

do.body603:                                       ; preds = %do.end601, %do.end241, %do.end165
  %err.1.ph = phi i32 [ %err.0980, %do.end601 ], [ %call229, %do.end241 ], [ %call153, %do.end165 ]
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr981 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr981)
  %cmp605.not = icmp eq i32 %.pr981, 0
  br i1 %cmp605.not, label %do.body603.do.end674_crit_edge, label %do.end612

do.body603.do.end674_crit_edge:                   ; preds = %do.body603
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end674

do.end612:                                        ; preds = %do.body603
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num, align 8
  %call615 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.4, i32 noundef %49, i32 noundef %err.1.ph) #10
  br label %do.end674

do.end674:                                        ; preds = %do.end612, %do.body603.do.end674_crit_edge, %do.body232.do.end674_crit_edge, %do.body156.do.end674_crit_edge
  %err.1986 = phi i32 [ %err.1.ph, %do.end612 ], [ %err.1.ph, %do.body603.do.end674_crit_edge ], [ %call229, %do.body232.do.end674_crit_edge ], [ %call153, %do.body156.do.end674_crit_edge ]
  tail call void @mantis_pci_exit(ptr noundef nonnull %call7.i.i) #6
  br label %do.body675

do.body675:                                       ; preds = %do.end674, %do.end89, %do.end15
  %err.2.ph = phi i32 [ %err.1986, %do.end674 ], [ %call77, %do.end89 ], [ %call5, %do.end15 ]
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr987 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr987)
  %cmp677.not = icmp eq i32 %.pr987, 0
  br i1 %cmp677.not, label %do.body675.do.end746_crit_edge, label %do.end684

do.body675.do.end746_crit_edge:                   ; preds = %do.body675
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end746

do.end684:                                        ; preds = %do.body675
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num, align 8
  %call687 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.4, i32 noundef %52, i32 noundef %err.2.ph) #10
  br label %do.end746

do.end746:                                        ; preds = %do.end684, %do.body675.do.end746_crit_edge, %do.body80.do.end746_crit_edge, %do.body8.do.end746_crit_edge
  %err.2993 = phi i32 [ %err.2.ph, %do.end684 ], [ %err.2.ph, %do.body675.do.end746_crit_edge ], [ %call77, %do.body80.do.end746_crit_edge ], [ %call5, %do.body8.do.end746_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end746, %if.end456, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call381, %if.end456 ], [ %err.2993, %do.end746 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hopper_pci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @mantis_dvb_exit(ptr noundef nonnull %1) #6
  %call2 = tail call i32 @mantis_dma_exit(ptr noundef nonnull %1) #6
  %call3 = tail call i32 @mantis_i2c_exit(ptr noundef nonnull %1) #6
  tail call void @mantis_pci_exit(ptr noundef nonnull %1) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hopper_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !257

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mantis_ca = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 40
  %0 = ptrtoint ptr %mantis_ca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mantis_ca, align 8
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 8
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !258
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !258
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  %and = and i32 %9, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 8
  %add.ptr18 = getelementptr i8, ptr %11, i32 156
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !258
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !261
  %and22 = and i32 %13, 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !262
  tail call void @arm_heavy_mb() #6
  %14 = shl nuw i32 %and22, 24
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 8
  %add.ptr24 = getelementptr i8, ptr %16, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %14) #6, !srcloc !263
  %mantis_int_stat = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 33
  %17 = ptrtoint ptr %mantis_int_stat to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %5, ptr %mantis_int_stat, align 8
  %mantis_int_mask = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 34
  %18 = ptrtoint ptr %mantis_int_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %9, ptr %mantis_int_mask, align 4
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp = icmp ugt i32 %20, 3
  br i1 %cmp, label %do.end29, label %if.end14.do.end34_crit_edge

if.end14.do.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end29:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, i32 noundef %5, i32 noundef %9) #10
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %if.end14.do.end34_crit_edge
  %and35 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.end34.if.end50_crit_edge, label %do.body38

do.end34.if.end50_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body38:                                        ; preds = %do.end34
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp40 = icmp ugt i32 %22, 3
  br i1 %cmp40, label %do.end44, label %do.body38.if.end50_crit_edge

do.body38.if.end50_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.172) #10
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %do.body38.if.end50_crit_edge, %do.end34.if.end50_crit_edge
  %and51 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end67_crit_edge, label %do.body54

if.end50.if.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

do.body54:                                        ; preds = %if.end50
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp56 = icmp ugt i32 %24, 3
  br i1 %cmp56, label %do.end60, label %do.body54.do.end65_crit_edge

do.body54.do.end65_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.173) #10
  br label %do.end65

do.end65:                                         ; preds = %do.end60, %do.body54.do.end65_crit_edge
  %gpif_status = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 39
  %25 = ptrtoint ptr %gpif_status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and22, ptr %gpif_status, align 4
  %hif_write_wq = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %hif_write_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %hif_evm_work = getelementptr inbounds %struct.mantis_ca, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %hif_evm_work) #6
  br label %if.end67

if.end67:                                         ; preds = %do.end65, %if.end50.if.end67_crit_edge
  %and68 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end98_crit_edge, label %do.body71

if.end67.if.end98_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

do.body71:                                        ; preds = %if.end67
  %27 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp73 = icmp ugt i32 %28, 3
  br i1 %cmp73, label %do.end77, label %do.body71.do.end82_crit_edge

do.body71.do.end82_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

do.end77:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.174) #10
  br label %do.end82

do.end82:                                         ; preds = %do.end77, %do.body71.do.end82_crit_edge
  %intmask_lock = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %intmask_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio, align 8
  %add.ptr89 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #6, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !265
  %32 = and i32 %31, -524289
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio, align 8
  %add.ptr95 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %32) #6, !srcloc !263
  tail call void @_raw_spin_unlock(ptr noundef %intmask_lock) #6
  %uart_work = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i303 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %uart_work) #6
  br label %if.end98

if.end98:                                         ; preds = %do.end82, %if.end67.if.end98_crit_edge
  %and99 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.if.end114_crit_edge, label %do.body102

if.end98.if.end114_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

do.body102:                                       ; preds = %if.end98
  %36 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp104 = icmp ugt i32 %37, 3
  br i1 %cmp104, label %do.end108, label %do.body102.if.end114_crit_edge

do.body102.if.end114_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.175) #10
  br label %if.end114

if.end114:                                        ; preds = %do.end108, %do.body102.if.end114_crit_edge, %if.end98.if.end114_crit_edge
  %and115 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end114.if.end130_crit_edge, label %do.body118

if.end114.if.end130_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

do.body118:                                       ; preds = %if.end114
  %38 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp120 = icmp ugt i32 %39, 3
  br i1 %cmp120, label %do.end124, label %do.body118.if.end130_crit_edge

do.body118.if.end130_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

do.end124:                                        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.176) #10
  br label %if.end130

if.end130:                                        ; preds = %do.end124, %do.body118.if.end130_crit_edge, %if.end114.if.end130_crit_edge
  %and131 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end146_crit_edge, label %do.body134

if.end130.if.end146_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

do.body134:                                       ; preds = %if.end130
  %40 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp136 = icmp ugt i32 %41, 3
  br i1 %cmp136, label %do.end140, label %do.body134.if.end146_crit_edge

do.body134.if.end146_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

do.end140:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.177) #10
  br label %if.end146

if.end146:                                        ; preds = %do.end140, %do.body134.if.end146_crit_edge, %if.end130.if.end146_crit_edge
  %and147 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end146.if.end162_crit_edge, label %do.body150

if.end146.if.end162_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

do.body150:                                       ; preds = %if.end146
  %42 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp152 = icmp ugt i32 %43, 3
  br i1 %cmp152, label %do.end156, label %do.body150.if.end162_crit_edge

do.body150.if.end162_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

do.end156:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #8
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.178) #10
  br label %if.end162

if.end162:                                        ; preds = %do.end156, %do.body150.if.end162_crit_edge, %if.end146.if.end162_crit_edge
  %and163 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end162.if.end178_crit_edge, label %do.body166

if.end162.if.end178_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

do.body166:                                       ; preds = %if.end162
  %44 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp168 = icmp ugt i32 %45, 3
  br i1 %cmp168, label %do.end172, label %do.body166.if.end178_crit_edge

do.body166.if.end178_crit_edge:                   ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

do.end172:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.179) #10
  br label %if.end178

if.end178:                                        ; preds = %do.end172, %do.body166.if.end178_crit_edge, %if.end162.if.end178_crit_edge
  %and179 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end178.if.end195_crit_edge, label %do.body182

if.end178.if.end195_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end195

do.body182:                                       ; preds = %if.end178
  %46 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp184 = icmp ugt i32 %47, 3
  br i1 %cmp184, label %do.end188, label %do.body182.do.end193_crit_edge

do.body182.do.end193_crit_edge:                   ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end193

do.end188:                                        ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #8
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.180) #10
  br label %do.end193

do.end193:                                        ; preds = %do.end188, %do.body182.do.end193_crit_edge
  %shr = lshr i32 %5, 28
  %busy_block = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 12
  %48 = ptrtoint ptr %busy_block to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shr, ptr %busy_block, align 4
  %state.i = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 18, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end193.if.end195_crit_edge

do.end193.if.end195_crit_edge:                    ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end195

if.then.i:                                        ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #8
  %tasklet = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 18
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #6
  br label %if.end195

if.end195:                                        ; preds = %if.then.i, %do.end193.if.end195_crit_edge, %if.end178.if.end195_crit_edge
  %and196 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end195.do.body212_crit_edge, label %do.body199

if.end195.do.body212_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body212

do.body199:                                       ; preds = %if.end195
  %49 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp201 = icmp ugt i32 %50, 3
  br i1 %cmp201, label %do.end205, label %do.body199.do.end210_crit_edge

do.body199.do.end210_crit_edge:                   ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end210

do.end205:                                        ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #8
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.181) #10
  br label %do.end210

do.end210:                                        ; preds = %do.end205, %do.body199.do.end210_crit_edge
  %i2c_wq = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %i2c_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %do.body212

do.body212:                                       ; preds = %do.end210, %if.end195.do.body212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !266
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %4) #6, !srcloc !263
  %and217 = and i32 %5, -202374636
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %do.body212.do.body233_crit_edge, label %do.body220

do.body212.do.body233_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body233

do.body220:                                       ; preds = %do.body212
  %53 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp222 = icmp ugt i32 %54, 3
  br i1 %cmp222, label %do.end226, label %do.body220.cleanup_crit_edge

do.body220.cleanup_crit_edge:                     ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end226:                                        ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #8
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %and217, i32 noundef %9) #10
  br label %do.body233

do.body233:                                       ; preds = %do.end226, %do.body212.do.body233_crit_edge
  %55 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load i32, ptr %dev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp235 = icmp ugt i32 %.pr, 3
  br i1 %cmp235, label %do.end239, label %do.body233.cleanup_crit_edge

do.body233.cleanup_crit_edge:                     ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end239:                                        ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #8
  %call241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end239, %do.body233.cleanup_crit_edge, %do.body220.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %do.end239 ], [ 1, %do.body233.cleanup_crit_edge ], [ 1, %do.body220.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_pci_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_stream_control(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_i2c_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_get_mac(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_dma_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_dvb_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_dma_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_i2c_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_pci_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_dvb_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !222, !224, !225, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype383, !1, !"__UNIQUE_ID_verbosetype383", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_verbose384, !4, !"__UNIQUE_ID_verbose384", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 35, i32 1}
!5 = !{ptr @__initcall__kmod_hopper__385_258_hopper_pci_driver_init6, !6, !"__initcall__kmod_hopper__385_258_hopper_pci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 258, i32 1}
!7 = !{ptr @__exitcall_hopper_pci_driver_exit, !6, !"__exitcall_hopper_pci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description386, !9, !"__UNIQUE_ID_description386", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 260, i32 1}
!10 = !{ptr @__UNIQUE_ID_author387, !11, !"__UNIQUE_ID_author387", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 261, i32 1}
!12 = !{ptr @__UNIQUE_ID_file388, !13, !"__UNIQUE_ID_file388", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 262, i32 1}
!14 = !{ptr @__UNIQUE_ID_license389, !13, !"__UNIQUE_ID_license389", i1 false, i1 false}
!15 = !{ptr @verbose, !16, !"verbose", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 33, i32 21}
!17 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 252, i32 11}
!21 = !{ptr @hopper_pci_driver, !22, !"hopper_pci_driver", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 251, i32 26}
!23 = !{ptr @hopper_pci_table, !24, !"hopper_pci_table", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 243, i32 35}
!25 = !{ptr @hopper_pci_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 167, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 171, i32 3}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @hopper_pci_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @hopper_pci_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hopper_pci_probe._entry.6, !29, !"_entry", i1 false, i1 false}
!36 = !{ptr @hopper_pci_probe._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hopper_pci_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!39 = !{ptr @hopper_pci_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @hopper_pci_probe._entry.12, !29, !"_entry", i1 false, i1 false}
!42 = !{ptr @hopper_pci_probe._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @hopper_pci_probe._entry.15, !29, !"_entry", i1 false, i1 false}
!44 = !{ptr @hopper_pci_probe._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 177, i32 3}
!47 = !{ptr @hopper_pci_probe._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @hopper_pci_probe._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @hopper_pci_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @hopper_pci_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hopper_pci_probe._entry.23, !46, !"_entry", i1 false, i1 false}
!54 = !{ptr @hopper_pci_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hopper_pci_probe._entry.26, !46, !"_entry", i1 false, i1 false}
!57 = !{ptr @hopper_pci_probe._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @hopper_pci_probe._entry.29, !46, !"_entry", i1 false, i1 false}
!59 = !{ptr @hopper_pci_probe._entry_ptr.30, !46, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 183, i32 3}
!62 = !{ptr @hopper_pci_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @hopper_pci_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hopper_pci_probe._entry.34, !61, !"_entry", i1 false, i1 false}
!66 = !{ptr @hopper_pci_probe._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @hopper_pci_probe._entry.37, !61, !"_entry", i1 false, i1 false}
!69 = !{ptr @hopper_pci_probe._entry_ptr.39, !61, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hopper_pci_probe._entry.40, !61, !"_entry", i1 false, i1 false}
!72 = !{ptr @hopper_pci_probe._entry_ptr.42, !61, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @hopper_pci_probe._entry.43, !61, !"_entry", i1 false, i1 false}
!74 = !{ptr @hopper_pci_probe._entry_ptr.44, !61, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 189, i32 3}
!77 = !{ptr @hopper_pci_probe._entry.45, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @hopper_pci_probe._entry_ptr.47, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.49, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @hopper_pci_probe._entry.48, !76, !"_entry", i1 false, i1 false}
!81 = !{ptr @hopper_pci_probe._entry_ptr.50, !76, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.52, !76, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @hopper_pci_probe._entry.51, !76, !"_entry", i1 false, i1 false}
!84 = !{ptr @hopper_pci_probe._entry_ptr.53, !76, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.55, !76, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @hopper_pci_probe._entry.54, !76, !"_entry", i1 false, i1 false}
!87 = !{ptr @hopper_pci_probe._entry_ptr.56, !76, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @hopper_pci_probe._entry.57, !76, !"_entry", i1 false, i1 false}
!89 = !{ptr @hopper_pci_probe._entry_ptr.58, !76, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.60, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 195, i32 3}
!92 = !{ptr @hopper_pci_probe._entry.59, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @hopper_pci_probe._entry_ptr.61, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.63, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @hopper_pci_probe._entry.62, !91, !"_entry", i1 false, i1 false}
!96 = !{ptr @hopper_pci_probe._entry_ptr.64, !91, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.66, !91, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @hopper_pci_probe._entry.65, !91, !"_entry", i1 false, i1 false}
!99 = !{ptr @hopper_pci_probe._entry_ptr.67, !91, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.69, !91, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @hopper_pci_probe._entry.68, !91, !"_entry", i1 false, i1 false}
!102 = !{ptr @hopper_pci_probe._entry_ptr.70, !91, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @hopper_pci_probe._entry.71, !91, !"_entry", i1 false, i1 false}
!104 = !{ptr @hopper_pci_probe._entry_ptr.72, !91, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.74, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 201, i32 3}
!107 = !{ptr @hopper_pci_probe._entry.73, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @hopper_pci_probe._entry_ptr.75, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.77, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @hopper_pci_probe._entry.76, !106, !"_entry", i1 false, i1 false}
!111 = !{ptr @hopper_pci_probe._entry_ptr.78, !106, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.80, !106, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @hopper_pci_probe._entry.79, !106, !"_entry", i1 false, i1 false}
!114 = !{ptr @hopper_pci_probe._entry_ptr.81, !106, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.83, !106, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @hopper_pci_probe._entry.82, !106, !"_entry", i1 false, i1 false}
!117 = !{ptr @hopper_pci_probe._entry_ptr.84, !106, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @hopper_pci_probe._entry.85, !106, !"_entry", i1 false, i1 false}
!119 = !{ptr @hopper_pci_probe._entry_ptr.86, !106, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.88, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 209, i32 2}
!122 = !{ptr @hopper_pci_probe._entry.87, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @hopper_pci_probe._entry_ptr.89, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.91, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @hopper_pci_probe._entry.90, !121, !"_entry", i1 false, i1 false}
!126 = !{ptr @hopper_pci_probe._entry_ptr.92, !121, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.94, !121, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @hopper_pci_probe._entry.93, !121, !"_entry", i1 false, i1 false}
!129 = !{ptr @hopper_pci_probe._entry_ptr.95, !121, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.97, !121, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @hopper_pci_probe._entry.96, !121, !"_entry", i1 false, i1 false}
!132 = !{ptr @hopper_pci_probe._entry_ptr.98, !121, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @hopper_pci_probe._entry.99, !121, !"_entry", i1 false, i1 false}
!134 = !{ptr @hopper_pci_probe._entry_ptr.100, !121, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.102, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 213, i32 2}
!137 = !{ptr @hopper_pci_probe._entry.101, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @hopper_pci_probe._entry_ptr.103, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.105, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @hopper_pci_probe._entry.104, !136, !"_entry", i1 false, i1 false}
!141 = !{ptr @hopper_pci_probe._entry_ptr.106, !136, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.108, !136, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @hopper_pci_probe._entry.107, !136, !"_entry", i1 false, i1 false}
!144 = !{ptr @hopper_pci_probe._entry_ptr.109, !136, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.111, !136, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @hopper_pci_probe._entry.110, !136, !"_entry", i1 false, i1 false}
!147 = !{ptr @hopper_pci_probe._entry_ptr.112, !136, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @hopper_pci_probe._entry.113, !136, !"_entry", i1 false, i1 false}
!149 = !{ptr @hopper_pci_probe._entry_ptr.114, !136, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.116, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 217, i32 2}
!152 = !{ptr @hopper_pci_probe._entry.115, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @hopper_pci_probe._entry_ptr.117, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.119, !151, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @hopper_pci_probe._entry.118, !151, !"_entry", i1 false, i1 false}
!156 = !{ptr @hopper_pci_probe._entry_ptr.120, !151, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.122, !151, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @hopper_pci_probe._entry.121, !151, !"_entry", i1 false, i1 false}
!159 = !{ptr @hopper_pci_probe._entry_ptr.123, !151, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.125, !151, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @hopper_pci_probe._entry.124, !151, !"_entry", i1 false, i1 false}
!162 = !{ptr @hopper_pci_probe._entry_ptr.126, !151, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @hopper_pci_probe._entry.127, !151, !"_entry", i1 false, i1 false}
!164 = !{ptr @hopper_pci_probe._entry_ptr.128, !151, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.130, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 221, i32 2}
!167 = !{ptr @hopper_pci_probe._entry.129, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @hopper_pci_probe._entry_ptr.131, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.133, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @hopper_pci_probe._entry.132, !166, !"_entry", i1 false, i1 false}
!171 = !{ptr @hopper_pci_probe._entry_ptr.134, !166, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.136, !166, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @hopper_pci_probe._entry.135, !166, !"_entry", i1 false, i1 false}
!174 = !{ptr @hopper_pci_probe._entry_ptr.137, !166, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.139, !166, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @hopper_pci_probe._entry.138, !166, !"_entry", i1 false, i1 false}
!177 = !{ptr @hopper_pci_probe._entry_ptr.140, !166, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @hopper_pci_probe._entry.141, !166, !"_entry", i1 false, i1 false}
!179 = !{ptr @hopper_pci_probe._entry_ptr.142, !166, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @devs, !181, !"devs", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 52, i32 12}
!182 = !{ptr @.str.143, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 83, i32 2}
!184 = !{ptr @.str.144, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @hopper_irq_handler._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @hopper_irq_handler._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.146, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 85, i32 3}
!189 = !{ptr @hopper_irq_handler._entry.145, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @hopper_irq_handler._entry_ptr.147, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @hopper_irq_handler._entry.148, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 88, i32 3}
!193 = !{ptr @hopper_irq_handler._entry_ptr.149, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @hopper_irq_handler._entry.150, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 94, i32 3}
!196 = !{ptr @hopper_irq_handler._entry_ptr.151, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @hopper_irq_handler._entry.152, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 102, i32 3}
!199 = !{ptr @hopper_irq_handler._entry_ptr.153, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @hopper_irq_handler._entry.154, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 105, i32 3}
!202 = !{ptr @hopper_irq_handler._entry_ptr.155, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @hopper_irq_handler._entry.156, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 108, i32 3}
!205 = !{ptr @hopper_irq_handler._entry_ptr.157, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @hopper_irq_handler._entry.158, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 111, i32 3}
!208 = !{ptr @hopper_irq_handler._entry_ptr.159, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @hopper_irq_handler._entry.160, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 114, i32 3}
!211 = !{ptr @hopper_irq_handler._entry_ptr.161, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @hopper_irq_handler._entry.162, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 117, i32 3}
!214 = !{ptr @hopper_irq_handler._entry_ptr.163, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @hopper_irq_handler._entry.164, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 122, i32 3}
!217 = !{ptr @hopper_irq_handler._entry_ptr.165, !216, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.167, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 138, i32 3}
!220 = !{ptr @hopper_irq_handler._entry.166, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @hopper_irq_handler._entry_ptr.168, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.170, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 140, i32 2}
!224 = !{ptr @hopper_irq_handler._entry.169, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @hopper_irq_handler._entry_ptr.171, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.172, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 40, i32 2}
!228 = !{ptr @.str.173, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 41, i32 2}
!230 = !{ptr @.str.174, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 42, i32 2}
!232 = !{ptr @.str.175, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 43, i32 2}
!234 = !{ptr @.str.176, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 44, i32 2}
!236 = !{ptr @.str.177, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 45, i32 2}
!238 = !{ptr @.str.178, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 46, i32 2}
!240 = !{ptr @.str.179, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 47, i32 2}
!242 = !{ptr @.str.180, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 48, i32 2}
!244 = !{ptr @.str.181, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 49, i32 2}
!246 = distinct !{null, !247, !"label", i1 false, i1 false}
!247 = !{!"../drivers/media/pci/mantis/hopper_cards.c", i32 39, i32 14}
!248 = !{i32 1, !"wchar_size", i32 2}
!249 = !{i32 1, !"min_enum_size", i32 4}
!250 = !{i32 8, !"branch-target-enforcement", i32 0}
!251 = !{i32 8, !"sign-return-address", i32 0}
!252 = !{i32 8, !"sign-return-address-all", i32 0}
!253 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!254 = !{i32 7, !"uwtable", i32 1}
!255 = !{i32 7, !"frame-pointer", i32 2}
!256 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!257 = !{!"branch_weights", i32 1, i32 2000}
!258 = !{i64 4984596}
!259 = !{i64 2158081740}
!260 = !{i64 2158082325}
!261 = !{i64 2158083238}
!262 = !{i64 2158083590}
!263 = !{i64 4984178}
!264 = !{i64 2158125812}
!265 = !{i64 2158126819}
!266 = !{i64 2158195508}
