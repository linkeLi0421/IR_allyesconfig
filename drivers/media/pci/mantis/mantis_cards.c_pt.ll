; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_cards.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_cards.c"
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

@__param_str_verbose = internal constant [15 x i8] c"mantis.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype383 = internal constant [28 x i8] c"mantis.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose384 = internal constant [64 x i8] c"mantis.parm=verbose:verbose startup messages, default is 0 (no)\00", section ".modinfo", align 1
@__initcall__kmod_mantis__385_302_mantis_pci_driver_init6 = internal global ptr @mantis_pci_driver_init, section ".initcall6.init", align 4
@mantis_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @mantis_pci_table, ptr @mantis_pci_probe, ptr @mantis_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mantis_pci_driver_exit = internal global ptr @mantis_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description386 = internal constant [33 x i8] c"mantis.description=MANTIS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author387 = internal constant [27 x i8] c"mantis.author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_file388 = internal constant [44 x i8] c"mantis.file=drivers/media/pci/mantis/mantis\00", section ".modinfo", align 1
@__UNIQUE_ID_license389 = internal constant [19 x i8] c"mantis.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mantis\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mantis\00", [25 x i8] zeroinitializer }, align 32
@mantis_pci_table = internal constant { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 6178, i32 20021, i32 6884, i32 2, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral to i32), i32 0 }, %struct.pci_device_id { i32 6178, i32 20021, i32 6884, i32 1, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 0 }, %struct.pci_device_id { i32 6178, i32 20021, i32 6884, i32 3, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 0 }, %struct.pci_device_id { i32 6178, i32 20021, i32 5435, i32 4472, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 0 }, %struct.pci_device_id { i32 6178, i32 20021, i32 5435, i32 4473, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 0 }, %struct.pci_device_id { i32 6178, i32 20021, i32 6178, i32 22, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 0 }, %struct.pci_device_id { i32 6178, i32 20021, i32 6178, i32 20, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 0 }, %struct.pci_device_id { i32 6178, i32 20021, i32 6178, i32 49, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 0 }, %struct.pci_device_id { i32 6178, i32 20021, i32 6178, i32 8, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 0 }, %struct.pci_device_id { i32 6178, i32 20021, i32 6178, i32 67, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 0 }, %struct.pci_device_id { i32 6178, i32 20021, i32 6178, i32 36, i32 0, i32 0, i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@vp2040_config = external dso_local global %struct.mantis_hwconfig, align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-technisat-ts35\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp2040_config, ptr @.str.2 }, [24 x i8] zeroinitializer }, align 32
@vp1041_config = external dso_local global %struct.mantis_hwconfig, align 4
@.compoundliteral.3 = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp1041_config, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp1041_config, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rc-terratec-cinergy-c-pci\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp2040_config, ptr @.str.5 }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rc-terratec-cinergy-s2-hd\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp1041_config, ptr @.str.7 }, [24 x i8] zeroinitializer }, align 32
@vp1033_config = external dso_local global %struct.mantis_hwconfig, align 4
@.compoundliteral.9 = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp1033_config, ptr null }, [24 x i8] zeroinitializer }, align 32
@vp1034_config = external dso_local global %struct.mantis_hwconfig, align 4
@.compoundliteral.10 = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp1034_config, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rc-twinhan-dtv-cab-ci\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp1041_config, ptr @.str.11 }, [24 x i8] zeroinitializer }, align 32
@vp2033_config = external dso_local global %struct.mantis_hwconfig, align 4
@.compoundliteral.13 = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp2033_config, ptr @.str.11 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp2040_config, ptr null }, [24 x i8] zeroinitializer }, align 32
@vp3030_config = external dso_local global %struct.mantis_hwconfig, align 4
@.compoundliteral.15 = internal global { %struct.mantis_pci_drvdata, [24 x i8] } { %struct.mantis_pci_drvdata { ptr @vp3030_config, ptr null }, [24 x i8] zeroinitializer }, align 32
@devs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mantis_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mantis->intmask_lock\00", [42 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s (%d): ERROR: Mantis PCI initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mantis_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/mantis/mantis_cards.c\00", [56 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr = internal global ptr @mantis_pci_probe._entry, section ".printk_index", align 4
@mantis_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.19, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015%s (%d): ERROR: Mantis PCI initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.22 = internal global ptr @mantis_pci_probe._entry.20, section ".printk_index", align 4
@mantis_pci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.19, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s (%d): ERROR: Mantis PCI initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.25 = internal global ptr @mantis_pci_probe._entry.23, section ".printk_index", align 4
@mantis_pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.19, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s (%d): ERROR: Mantis PCI initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.28 = internal global ptr @mantis_pci_probe._entry.26, section ".printk_index", align 4
@mantis_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.19, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.30 = internal global ptr @mantis_pci_probe._entry.29, section ".printk_index", align 4
@mantis_pci_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.19, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s (%d): ERROR: Mantis stream control failed <%d>\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.33 = internal global ptr @mantis_pci_probe._entry.31, section ".printk_index", align 4
@mantis_pci_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.18, ptr @.str.19, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015%s (%d): ERROR: Mantis stream control failed <%d>\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.36 = internal global ptr @mantis_pci_probe._entry.34, section ".printk_index", align 4
@mantis_pci_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.18, ptr @.str.19, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s (%d): ERROR: Mantis stream control failed <%d>\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.39 = internal global ptr @mantis_pci_probe._entry.37, section ".printk_index", align 4
@mantis_pci_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.18, ptr @.str.19, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s (%d): ERROR: Mantis stream control failed <%d>\0A\00", [43 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.42 = internal global ptr @mantis_pci_probe._entry.40, section ".printk_index", align 4
@mantis_pci_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.18, ptr @.str.19, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.44 = internal global ptr @mantis_pci_probe._entry.43, section ".printk_index", align 4
@mantis_pci_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.18, ptr @.str.19, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s (%d): ERROR: Mantis I2C initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.47 = internal global ptr @mantis_pci_probe._entry.45, section ".printk_index", align 4
@mantis_pci_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.18, ptr @.str.19, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015%s (%d): ERROR: Mantis I2C initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.50 = internal global ptr @mantis_pci_probe._entry.48, section ".printk_index", align 4
@mantis_pci_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.18, ptr @.str.19, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s (%d): ERROR: Mantis I2C initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.53 = internal global ptr @mantis_pci_probe._entry.51, section ".printk_index", align 4
@mantis_pci_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.18, ptr @.str.19, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s (%d): ERROR: Mantis I2C initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.56 = internal global ptr @mantis_pci_probe._entry.54, section ".printk_index", align 4
@mantis_pci_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.18, ptr @.str.19, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.58 = internal global ptr @mantis_pci_probe._entry.57, section ".printk_index", align 4
@mantis_pci_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.18, ptr @.str.19, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s (%d): ERROR: Mantis MAC address read failed <%d>\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.61 = internal global ptr @mantis_pci_probe._entry.59, section ".printk_index", align 4
@mantis_pci_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.18, ptr @.str.19, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015%s (%d): ERROR: Mantis MAC address read failed <%d>\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.64 = internal global ptr @mantis_pci_probe._entry.62, section ".printk_index", align 4
@mantis_pci_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.18, ptr @.str.19, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s (%d): ERROR: Mantis MAC address read failed <%d>\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.67 = internal global ptr @mantis_pci_probe._entry.65, section ".printk_index", align 4
@mantis_pci_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.18, ptr @.str.19, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s (%d): ERROR: Mantis MAC address read failed <%d>\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.70 = internal global ptr @mantis_pci_probe._entry.68, section ".printk_index", align 4
@mantis_pci_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.18, ptr @.str.19, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.72 = internal global ptr @mantis_pci_probe._entry.71, section ".printk_index", align 4
@mantis_pci_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.18, ptr @.str.19, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s (%d): ERROR: Mantis DMA initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.75 = internal global ptr @mantis_pci_probe._entry.73, section ".printk_index", align 4
@mantis_pci_probe._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.18, ptr @.str.19, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015%s (%d): ERROR: Mantis DMA initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.78 = internal global ptr @mantis_pci_probe._entry.76, section ".printk_index", align 4
@mantis_pci_probe._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.18, ptr @.str.19, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s (%d): ERROR: Mantis DMA initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.81 = internal global ptr @mantis_pci_probe._entry.79, section ".printk_index", align 4
@mantis_pci_probe._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.18, ptr @.str.19, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s (%d): ERROR: Mantis DMA initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.84 = internal global ptr @mantis_pci_probe._entry.82, section ".printk_index", align 4
@mantis_pci_probe._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.18, ptr @.str.19, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.86 = internal global ptr @mantis_pci_probe._entry.85, section ".printk_index", align 4
@mantis_pci_probe._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.18, ptr @.str.19, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s (%d): ERROR: Mantis DVB initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.89 = internal global ptr @mantis_pci_probe._entry.87, section ".printk_index", align 4
@mantis_pci_probe._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.18, ptr @.str.19, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015%s (%d): ERROR: Mantis DVB initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.92 = internal global ptr @mantis_pci_probe._entry.90, section ".printk_index", align 4
@mantis_pci_probe._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.18, ptr @.str.19, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s (%d): ERROR: Mantis DVB initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.95 = internal global ptr @mantis_pci_probe._entry.93, section ".printk_index", align 4
@mantis_pci_probe._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.18, ptr @.str.19, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s (%d): ERROR: Mantis DVB initialization failed <%d>\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.98 = internal global ptr @mantis_pci_probe._entry.96, section ".printk_index", align 4
@mantis_pci_probe._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.18, ptr @.str.19, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.100 = internal global ptr @mantis_pci_probe._entry.99, section ".printk_index", align 4
@mantis_pci_probe._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.18, ptr @.str.19, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.102 = internal global ptr @mantis_pci_probe._entry.101, section ".printk_index", align 4
@mantis_pci_probe._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.18, ptr @.str.19, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.104 = internal global ptr @mantis_pci_probe._entry.103, section ".printk_index", align 4
@mantis_pci_probe._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.18, ptr @.str.19, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.106 = internal global ptr @mantis_pci_probe._entry.105, section ".printk_index", align 4
@mantis_pci_probe._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.18, ptr @.str.19, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.108 = internal global ptr @mantis_pci_probe._entry.107, section ".printk_index", align 4
@mantis_pci_probe._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.18, ptr @.str.19, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.110 = internal global ptr @mantis_pci_probe._entry.109, section ".printk_index", align 4
@mantis_pci_probe._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.18, ptr @.str.19, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s (%d): ERROR: Mantis UART initialization failed <%d>\0A\00", [38 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.113 = internal global ptr @mantis_pci_probe._entry.111, section ".printk_index", align 4
@mantis_pci_probe._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.18, ptr @.str.19, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015%s (%d): ERROR: Mantis UART initialization failed <%d>\0A\00", [38 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.116 = internal global ptr @mantis_pci_probe._entry.114, section ".printk_index", align 4
@mantis_pci_probe._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.18, ptr @.str.19, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s (%d): ERROR: Mantis UART initialization failed <%d>\0A\00", [38 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.119 = internal global ptr @mantis_pci_probe._entry.117, section ".printk_index", align 4
@mantis_pci_probe._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.18, ptr @.str.19, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s (%d): ERROR: Mantis UART initialization failed <%d>\0A\00", [38 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.122 = internal global ptr @mantis_pci_probe._entry.120, section ".printk_index", align 4
@mantis_pci_probe._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.18, ptr @.str.19, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_probe._entry_ptr.124 = internal global ptr @mantis_pci_probe._entry.123, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mantis_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.19, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0A-- Stat=<%02x> Mask=<%02x> --\00", [33 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mantis_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr = internal global ptr @mantis_irq_handler._entry, section ".printk_index", align 4
@mantis_irq_handler._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.19, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<%s>\00", [27 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.129 = internal global ptr @mantis_irq_handler._entry.127, section ".printk_index", align 4
@mantis_irq_handler._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.19, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.131 = internal global ptr @mantis_irq_handler._entry.130, section ".printk_index", align 4
@mantis_irq_handler._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.19, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.133 = internal global ptr @mantis_irq_handler._entry.132, section ".printk_index", align 4
@mantis_irq_handler._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.19, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.135 = internal global ptr @mantis_irq_handler._entry.134, section ".printk_index", align 4
@mantis_irq_handler._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.19, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.137 = internal global ptr @mantis_irq_handler._entry.136, section ".printk_index", align 4
@mantis_irq_handler._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.19, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.139 = internal global ptr @mantis_irq_handler._entry.138, section ".printk_index", align 4
@mantis_irq_handler._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.19, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.141 = internal global ptr @mantis_irq_handler._entry.140, section ".printk_index", align 4
@mantis_irq_handler._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.19, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.143 = internal global ptr @mantis_irq_handler._entry.142, section ".printk_index", align 4
@mantis_irq_handler._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.19, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.145 = internal global ptr @mantis_irq_handler._entry.144, section ".printk_index", align 4
@mantis_irq_handler._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.19, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.147 = internal global ptr @mantis_irq_handler._entry.146, section ".printk_index", align 4
@mantis_irq_handler._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.126, ptr @.str.19, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"<Unknown> Stat=<%02x> Mask=<%02x>\00", [62 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.150 = internal global ptr @mantis_irq_handler._entry.148, section ".printk_index", align 4
@mantis_irq_handler._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.126, ptr @.str.19, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@mantis_irq_handler._entry_ptr.153 = internal global ptr @mantis_irq_handler._entry.151, section ".printk_index", align 4
@.str.154 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IRQ-0\00", [26 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IRQ-1\00", [26 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OCERR\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PABRT\00", [26 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RIPRR\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PPERR\00", [26 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FTRGT\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RISCI\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RACK\00", [27 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.164 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 42, i32 21 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"mantis_pci_driver\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 295, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 302, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 296, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"mantis_pci_table\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 267, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 268, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 274, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 276, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 282, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [5 x i8] c"devs\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 46, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 174, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 178, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 184, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 190, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 196, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 202, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 208, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 214, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 221, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 92, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 94, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 97, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 103, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 111, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 114, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 117, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 120, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 123, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 126, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 131, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 147, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 149, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 51, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 52, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 53, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 54, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 55, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 56, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 57, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 58, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 59, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.503 = private constant [43 x i8] c"../drivers/media/pci/mantis/mantis_cards.c\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 60, i32 2 }
@llvm.compiler.used = appending global [184 x ptr] [ptr @__UNIQUE_ID_author387, ptr @__UNIQUE_ID_description386, ptr @__UNIQUE_ID_file388, ptr @__UNIQUE_ID_license389, ptr @__UNIQUE_ID_verbose384, ptr @__UNIQUE_ID_verbosetype383, ptr @__exitcall_mantis_pci_driver_exit, ptr @__initcall__kmod_mantis__385_302_mantis_pci_driver_init6, ptr @__param_verbose, ptr @mantis_irq_handler._entry, ptr @mantis_irq_handler._entry.127, ptr @mantis_irq_handler._entry.130, ptr @mantis_irq_handler._entry.132, ptr @mantis_irq_handler._entry.134, ptr @mantis_irq_handler._entry.136, ptr @mantis_irq_handler._entry.138, ptr @mantis_irq_handler._entry.140, ptr @mantis_irq_handler._entry.142, ptr @mantis_irq_handler._entry.144, ptr @mantis_irq_handler._entry.146, ptr @mantis_irq_handler._entry.148, ptr @mantis_irq_handler._entry.151, ptr @mantis_irq_handler._entry_ptr, ptr @mantis_irq_handler._entry_ptr.129, ptr @mantis_irq_handler._entry_ptr.131, ptr @mantis_irq_handler._entry_ptr.133, ptr @mantis_irq_handler._entry_ptr.135, ptr @mantis_irq_handler._entry_ptr.137, ptr @mantis_irq_handler._entry_ptr.139, ptr @mantis_irq_handler._entry_ptr.141, ptr @mantis_irq_handler._entry_ptr.143, ptr @mantis_irq_handler._entry_ptr.145, ptr @mantis_irq_handler._entry_ptr.147, ptr @mantis_irq_handler._entry_ptr.150, ptr @mantis_irq_handler._entry_ptr.153, ptr @mantis_pci_driver_exit, ptr @mantis_pci_probe._entry, ptr @mantis_pci_probe._entry.101, ptr @mantis_pci_probe._entry.103, ptr @mantis_pci_probe._entry.105, ptr @mantis_pci_probe._entry.107, ptr @mantis_pci_probe._entry.109, ptr @mantis_pci_probe._entry.111, ptr @mantis_pci_probe._entry.114, ptr @mantis_pci_probe._entry.117, ptr @mantis_pci_probe._entry.120, ptr @mantis_pci_probe._entry.123, ptr @mantis_pci_probe._entry.20, ptr @mantis_pci_probe._entry.23, ptr @mantis_pci_probe._entry.26, ptr @mantis_pci_probe._entry.29, ptr @mantis_pci_probe._entry.31, ptr @mantis_pci_probe._entry.34, ptr @mantis_pci_probe._entry.37, ptr @mantis_pci_probe._entry.40, ptr @mantis_pci_probe._entry.43, ptr @mantis_pci_probe._entry.45, ptr @mantis_pci_probe._entry.48, ptr @mantis_pci_probe._entry.51, ptr @mantis_pci_probe._entry.54, ptr @mantis_pci_probe._entry.57, ptr @mantis_pci_probe._entry.59, ptr @mantis_pci_probe._entry.62, ptr @mantis_pci_probe._entry.65, ptr @mantis_pci_probe._entry.68, ptr @mantis_pci_probe._entry.71, ptr @mantis_pci_probe._entry.73, ptr @mantis_pci_probe._entry.76, ptr @mantis_pci_probe._entry.79, ptr @mantis_pci_probe._entry.82, ptr @mantis_pci_probe._entry.85, ptr @mantis_pci_probe._entry.87, ptr @mantis_pci_probe._entry.90, ptr @mantis_pci_probe._entry.93, ptr @mantis_pci_probe._entry.96, ptr @mantis_pci_probe._entry.99, ptr @mantis_pci_probe._entry_ptr, ptr @mantis_pci_probe._entry_ptr.100, ptr @mantis_pci_probe._entry_ptr.102, ptr @mantis_pci_probe._entry_ptr.104, ptr @mantis_pci_probe._entry_ptr.106, ptr @mantis_pci_probe._entry_ptr.108, ptr @mantis_pci_probe._entry_ptr.110, ptr @mantis_pci_probe._entry_ptr.113, ptr @mantis_pci_probe._entry_ptr.116, ptr @mantis_pci_probe._entry_ptr.119, ptr @mantis_pci_probe._entry_ptr.122, ptr @mantis_pci_probe._entry_ptr.124, ptr @mantis_pci_probe._entry_ptr.22, ptr @mantis_pci_probe._entry_ptr.25, ptr @mantis_pci_probe._entry_ptr.28, ptr @mantis_pci_probe._entry_ptr.30, ptr @mantis_pci_probe._entry_ptr.33, ptr @mantis_pci_probe._entry_ptr.36, ptr @mantis_pci_probe._entry_ptr.39, ptr @mantis_pci_probe._entry_ptr.42, ptr @mantis_pci_probe._entry_ptr.44, ptr @mantis_pci_probe._entry_ptr.47, ptr @mantis_pci_probe._entry_ptr.50, ptr @mantis_pci_probe._entry_ptr.53, ptr @mantis_pci_probe._entry_ptr.56, ptr @mantis_pci_probe._entry_ptr.58, ptr @mantis_pci_probe._entry_ptr.61, ptr @mantis_pci_probe._entry_ptr.64, ptr @mantis_pci_probe._entry_ptr.67, ptr @mantis_pci_probe._entry_ptr.70, ptr @mantis_pci_probe._entry_ptr.72, ptr @mantis_pci_probe._entry_ptr.75, ptr @mantis_pci_probe._entry_ptr.78, ptr @mantis_pci_probe._entry_ptr.81, ptr @mantis_pci_probe._entry_ptr.84, ptr @mantis_pci_probe._entry_ptr.86, ptr @mantis_pci_probe._entry_ptr.89, ptr @mantis_pci_probe._entry_ptr.92, ptr @mantis_pci_probe._entry_ptr.95, ptr @mantis_pci_probe._entry_ptr.98, ptr @verbose, ptr @mantis_pci_driver, ptr @.str, ptr @.str.1, ptr @mantis_pci_table, ptr @.str.2, ptr @.compoundliteral, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @devs, ptr @mantis_pci_probe.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_table to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_probe._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_irq_handler._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mantis_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mantis_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @mantis_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mantis_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %pci_id) #2 align 64 {
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
  store ptr @mantis_irq_handler, ptr %irq_handler, align 4
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
  tail call void @__raw_spin_lock_init(ptr noundef %intmask_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @mantis_pci_probe.__key, i16 noundef signext 3) #6
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
  br i1 %cmp.not, label %do.body8.err_free_mantis_crit_edge, label %do.end15

do.body8.err_free_mantis_crit_edge:               ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_mantis

do.end15:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef %call5) #10
  br label %err_free_mantis

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
  br i1 %cmp82.not, label %do.body80.err_pci_exit_crit_edge, label %do.end89

do.body80.err_pci_exit_crit_edge:                 ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pci_exit

do.end89:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num, align 8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.18, i32 noundef %23, i32 noundef %call77) #10
  br label %err_pci_exit

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
  br i1 %cmp158.not, label %do.body156.err_pci_exit_crit_edge, label %do.end165

do.body156.err_pci_exit_crit_edge:                ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pci_exit

do.end165:                                        ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num, align 8
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.18, i32 noundef %27, i32 noundef %call153) #10
  br label %err_pci_exit

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
  br i1 %cmp234.not, label %do.body232.err_i2c_exit_crit_edge, label %do.end241

do.body232.err_i2c_exit_crit_edge:                ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_i2c_exit

do.end241:                                        ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num, align 8
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.18, i32 noundef %31, i32 noundef %call229) #10
  br label %err_i2c_exit

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
  br i1 %cmp310.not, label %do.body308.err_i2c_exit_crit_edge, label %do.end317

do.body308.err_i2c_exit_crit_edge:                ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_i2c_exit

do.end317:                                        ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num, align 8
  %call320 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.18, i32 noundef %35, i32 noundef %call305) #10
  br label %err_i2c_exit

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
  br i1 %cmp386.not, label %do.body384.err_dma_exit_crit_edge, label %do.end393

do.body384.err_dma_exit_crit_edge:                ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_dma_exit

do.end393:                                        ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num, align 8
  %call396 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.18, i32 noundef %39, i32 noundef %call381) #10
  br label %err_dma_exit

if.end456:                                        ; preds = %if.end380
  %call457 = tail call i32 @mantis_input_init(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call457)
  %cmp458 = icmp slt i32 %call457, 0
  br i1 %cmp458, label %do.body460, label %if.end532

do.body460:                                       ; preds = %if.end456
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp462.not = icmp eq i32 %41, 0
  br i1 %cmp462.not, label %do.body460.err_dvb_exit_crit_edge, label %do.end469

do.body460.err_dvb_exit_crit_edge:                ; preds = %do.body460
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_dvb_exit

do.end469:                                        ; preds = %do.body460
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num, align 8
  %call472 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.18, i32 noundef %43, i32 noundef %call457) #10
  br label %err_dvb_exit

if.end532:                                        ; preds = %if.end456
  %call533 = tail call i32 @mantis_uart_init(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call533)
  %cmp534 = icmp slt i32 %call533, 0
  br i1 %cmp534, label %do.body536, label %if.end608

do.body536:                                       ; preds = %if.end532
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp538.not = icmp eq i32 %45, 0
  br i1 %cmp538.not, label %do.body536.err_input_exit_crit_edge, label %do.end545

do.body536.err_input_exit_crit_edge:              ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_input_exit

do.end545:                                        ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num, align 8
  %call548 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.18, i32 noundef %47, i32 noundef %call533) #10
  br label %err_input_exit

if.end608:                                        ; preds = %if.end532
  call void @__sanitizer_cov_trace_pc() #8
  %48 = load i32, ptr @devs, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr @devs, align 4
  br label %cleanup

err_input_exit:                                   ; preds = %do.end545, %do.body536.err_input_exit_crit_edge
  tail call void @mantis_input_exit(ptr noundef nonnull %call7.i.i) #6
  br label %err_dvb_exit

err_dvb_exit:                                     ; preds = %err_input_exit, %do.end469, %do.body460.err_dvb_exit_crit_edge
  %err.0 = phi i32 [ %call457, %do.end469 ], [ %call533, %err_input_exit ], [ %call457, %do.body460.err_dvb_exit_crit_edge ]
  %call609 = tail call i32 @mantis_dvb_exit(ptr noundef nonnull %call7.i.i) #6
  br label %err_dma_exit

err_dma_exit:                                     ; preds = %err_dvb_exit, %do.end393, %do.body384.err_dma_exit_crit_edge
  %err.1 = phi i32 [ %call381, %do.end393 ], [ %err.0, %err_dvb_exit ], [ %call381, %do.body384.err_dma_exit_crit_edge ]
  %call610 = tail call i32 @mantis_dma_exit(ptr noundef nonnull %call7.i.i) #6
  br label %err_i2c_exit

err_i2c_exit:                                     ; preds = %err_dma_exit, %do.end317, %do.body308.err_i2c_exit_crit_edge, %do.end241, %do.body232.err_i2c_exit_crit_edge
  %err.2 = phi i32 [ %call229, %do.end241 ], [ %call305, %do.end317 ], [ %err.1, %err_dma_exit ], [ %call229, %do.body232.err_i2c_exit_crit_edge ], [ %call305, %do.body308.err_i2c_exit_crit_edge ]
  %call611 = tail call i32 @mantis_i2c_exit(ptr noundef nonnull %call7.i.i) #6
  br label %err_pci_exit

err_pci_exit:                                     ; preds = %err_i2c_exit, %do.end165, %do.body156.err_pci_exit_crit_edge, %do.end89, %do.body80.err_pci_exit_crit_edge
  %err.3 = phi i32 [ %call77, %do.end89 ], [ %call153, %do.end165 ], [ %err.2, %err_i2c_exit ], [ %call77, %do.body80.err_pci_exit_crit_edge ], [ %call153, %do.body156.err_pci_exit_crit_edge ]
  tail call void @mantis_pci_exit(ptr noundef nonnull %call7.i.i) #6
  br label %err_free_mantis

err_free_mantis:                                  ; preds = %err_pci_exit, %do.end15, %do.body8.err_free_mantis_crit_edge
  %err.4 = phi i32 [ %call5, %do.end15 ], [ %err.3, %err_pci_exit ], [ %call5, %do.body8.err_free_mantis_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_mantis, %if.end608, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_free_mantis ], [ 0, %if.end608 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mantis_pci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  tail call void @mantis_uart_exit(ptr noundef nonnull %1) #6
  tail call void @mantis_input_exit(ptr noundef nonnull %1) #6
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
define internal i32 @mantis_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !231

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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !232
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !232
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
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
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !232
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  %and22 = and i32 %13, 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %14 = shl nuw i32 %and22, 24
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 8
  %add.ptr24 = getelementptr i8, ptr %16, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %14) #6, !srcloc !237
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
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %5, i32 noundef %9) #10
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
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.154) #10
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
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.155) #10
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
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.156) #10
  br label %do.end82

do.end82:                                         ; preds = %do.end77, %do.body71.do.end82_crit_edge
  %intmask_lock = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %intmask_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio, align 8
  %add.ptr89 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #6, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  %32 = and i32 %31, -524289
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio, align 8
  %add.ptr95 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %32) #6, !srcloc !237
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
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.157) #10
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
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.158) #10
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
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.159) #10
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
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.160) #10
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
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.161) #10
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
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.162) #10
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
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.163) #10
  br label %do.end210

do.end210:                                        ; preds = %do.end205, %do.body199.do.end210_crit_edge
  %i2c_wq = getelementptr inbounds %struct.mantis_pci, ptr %dev_id, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %i2c_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %do.body212

do.body212:                                       ; preds = %do.end210, %if.end195.do.body212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %4) #6, !srcloc !237
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
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %and217, i32 noundef %9) #10
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
  %call241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #10
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
declare dso_local i32 @mantis_input_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_uart_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_input_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_dvb_exit(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @mantis_uart_exit(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype383, !1, !"__UNIQUE_ID_verbosetype383", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_verbose384, !4, !"__UNIQUE_ID_verbose384", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 44, i32 1}
!5 = !{ptr @__initcall__kmod_mantis__385_302_mantis_pci_driver_init6, !6, !"__initcall__kmod_mantis__385_302_mantis_pci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 302, i32 1}
!7 = !{ptr @__exitcall_mantis_pci_driver_exit, !6, !"__exitcall_mantis_pci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description386, !9, !"__UNIQUE_ID_description386", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 304, i32 1}
!10 = !{ptr @__UNIQUE_ID_author387, !11, !"__UNIQUE_ID_author387", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 305, i32 1}
!12 = !{ptr @__UNIQUE_ID_file388, !13, !"__UNIQUE_ID_file388", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 306, i32 1}
!14 = !{ptr @__UNIQUE_ID_license389, !13, !"__UNIQUE_ID_license389", i1 false, i1 false}
!15 = !{ptr @verbose, !16, !"verbose", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 42, i32 21}
!17 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 296, i32 11}
!21 = !{ptr @mantis_pci_driver, !22, !"mantis_pci_driver", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 295, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 268, i32 2}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 274, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 276, i32 2}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 282, i32 2}
!31 = !{ptr @mantis_pci_table, !32, !"mantis_pci_table", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 267, i32 35}
!33 = !{ptr @mantis_pci_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 174, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 178, i32 3}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mantis_pci_probe._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @mantis_pci_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mantis_pci_probe._entry.20, !37, !"_entry", i1 false, i1 false}
!44 = !{ptr @mantis_pci_probe._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mantis_pci_probe._entry.23, !37, !"_entry", i1 false, i1 false}
!47 = !{ptr @mantis_pci_probe._entry_ptr.25, !37, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mantis_pci_probe._entry.26, !37, !"_entry", i1 false, i1 false}
!50 = !{ptr @mantis_pci_probe._entry_ptr.28, !37, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mantis_pci_probe._entry.29, !37, !"_entry", i1 false, i1 false}
!52 = !{ptr @mantis_pci_probe._entry_ptr.30, !37, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 184, i32 3}
!55 = !{ptr @mantis_pci_probe._entry.31, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mantis_pci_probe._entry_ptr.33, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mantis_pci_probe._entry.34, !54, !"_entry", i1 false, i1 false}
!59 = !{ptr @mantis_pci_probe._entry_ptr.36, !54, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.38, !54, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mantis_pci_probe._entry.37, !54, !"_entry", i1 false, i1 false}
!62 = !{ptr @mantis_pci_probe._entry_ptr.39, !54, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.41, !54, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mantis_pci_probe._entry.40, !54, !"_entry", i1 false, i1 false}
!65 = !{ptr @mantis_pci_probe._entry_ptr.42, !54, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @mantis_pci_probe._entry.43, !54, !"_entry", i1 false, i1 false}
!67 = !{ptr @mantis_pci_probe._entry_ptr.44, !54, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.46, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 190, i32 3}
!70 = !{ptr @mantis_pci_probe._entry.45, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mantis_pci_probe._entry_ptr.47, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.49, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mantis_pci_probe._entry.48, !69, !"_entry", i1 false, i1 false}
!74 = !{ptr @mantis_pci_probe._entry_ptr.50, !69, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.52, !69, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mantis_pci_probe._entry.51, !69, !"_entry", i1 false, i1 false}
!77 = !{ptr @mantis_pci_probe._entry_ptr.53, !69, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.55, !69, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mantis_pci_probe._entry.54, !69, !"_entry", i1 false, i1 false}
!80 = !{ptr @mantis_pci_probe._entry_ptr.56, !69, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @mantis_pci_probe._entry.57, !69, !"_entry", i1 false, i1 false}
!82 = !{ptr @mantis_pci_probe._entry_ptr.58, !69, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.60, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 196, i32 3}
!85 = !{ptr @mantis_pci_probe._entry.59, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mantis_pci_probe._entry_ptr.61, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.63, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mantis_pci_probe._entry.62, !84, !"_entry", i1 false, i1 false}
!89 = !{ptr @mantis_pci_probe._entry_ptr.64, !84, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.66, !84, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @mantis_pci_probe._entry.65, !84, !"_entry", i1 false, i1 false}
!92 = !{ptr @mantis_pci_probe._entry_ptr.67, !84, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.69, !84, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mantis_pci_probe._entry.68, !84, !"_entry", i1 false, i1 false}
!95 = !{ptr @mantis_pci_probe._entry_ptr.70, !84, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mantis_pci_probe._entry.71, !84, !"_entry", i1 false, i1 false}
!97 = !{ptr @mantis_pci_probe._entry_ptr.72, !84, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.74, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 202, i32 3}
!100 = !{ptr @mantis_pci_probe._entry.73, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @mantis_pci_probe._entry_ptr.75, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.77, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mantis_pci_probe._entry.76, !99, !"_entry", i1 false, i1 false}
!104 = !{ptr @mantis_pci_probe._entry_ptr.78, !99, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.80, !99, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mantis_pci_probe._entry.79, !99, !"_entry", i1 false, i1 false}
!107 = !{ptr @mantis_pci_probe._entry_ptr.81, !99, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.83, !99, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mantis_pci_probe._entry.82, !99, !"_entry", i1 false, i1 false}
!110 = !{ptr @mantis_pci_probe._entry_ptr.84, !99, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @mantis_pci_probe._entry.85, !99, !"_entry", i1 false, i1 false}
!112 = !{ptr @mantis_pci_probe._entry_ptr.86, !99, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.88, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 208, i32 3}
!115 = !{ptr @mantis_pci_probe._entry.87, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @mantis_pci_probe._entry_ptr.89, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.91, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mantis_pci_probe._entry.90, !114, !"_entry", i1 false, i1 false}
!119 = !{ptr @mantis_pci_probe._entry_ptr.92, !114, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.94, !114, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @mantis_pci_probe._entry.93, !114, !"_entry", i1 false, i1 false}
!122 = !{ptr @mantis_pci_probe._entry_ptr.95, !114, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.97, !114, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mantis_pci_probe._entry.96, !114, !"_entry", i1 false, i1 false}
!125 = !{ptr @mantis_pci_probe._entry_ptr.98, !114, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @mantis_pci_probe._entry.99, !114, !"_entry", i1 false, i1 false}
!127 = !{ptr @mantis_pci_probe._entry_ptr.100, !114, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @mantis_pci_probe._entry.101, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 214, i32 3}
!130 = !{ptr @mantis_pci_probe._entry_ptr.102, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @mantis_pci_probe._entry.103, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @mantis_pci_probe._entry_ptr.104, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @mantis_pci_probe._entry.105, !129, !"_entry", i1 false, i1 false}
!134 = !{ptr @mantis_pci_probe._entry_ptr.106, !129, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @mantis_pci_probe._entry.107, !129, !"_entry", i1 false, i1 false}
!136 = !{ptr @mantis_pci_probe._entry_ptr.108, !129, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @mantis_pci_probe._entry.109, !129, !"_entry", i1 false, i1 false}
!138 = !{ptr @mantis_pci_probe._entry_ptr.110, !129, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.112, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 221, i32 3}
!141 = !{ptr @mantis_pci_probe._entry.111, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @mantis_pci_probe._entry_ptr.113, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.115, !140, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @mantis_pci_probe._entry.114, !140, !"_entry", i1 false, i1 false}
!145 = !{ptr @mantis_pci_probe._entry_ptr.116, !140, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.118, !140, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mantis_pci_probe._entry.117, !140, !"_entry", i1 false, i1 false}
!148 = !{ptr @mantis_pci_probe._entry_ptr.119, !140, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.121, !140, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @mantis_pci_probe._entry.120, !140, !"_entry", i1 false, i1 false}
!151 = !{ptr @mantis_pci_probe._entry_ptr.122, !140, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @mantis_pci_probe._entry.123, !140, !"_entry", i1 false, i1 false}
!153 = !{ptr @mantis_pci_probe._entry_ptr.124, !140, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @devs, !155, !"devs", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 46, i32 12}
!156 = !{ptr @.str.125, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 92, i32 2}
!158 = !{ptr @.str.126, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @mantis_irq_handler._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @mantis_irq_handler._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.128, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 94, i32 3}
!163 = !{ptr @mantis_irq_handler._entry.127, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @mantis_irq_handler._entry_ptr.129, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @mantis_irq_handler._entry.130, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 97, i32 3}
!167 = !{ptr @mantis_irq_handler._entry_ptr.131, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @mantis_irq_handler._entry.132, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 103, i32 3}
!170 = !{ptr @mantis_irq_handler._entry_ptr.133, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @mantis_irq_handler._entry.134, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 111, i32 3}
!173 = !{ptr @mantis_irq_handler._entry_ptr.135, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @mantis_irq_handler._entry.136, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 114, i32 3}
!176 = !{ptr @mantis_irq_handler._entry_ptr.137, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @mantis_irq_handler._entry.138, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 117, i32 3}
!179 = !{ptr @mantis_irq_handler._entry_ptr.139, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @mantis_irq_handler._entry.140, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 120, i32 3}
!182 = !{ptr @mantis_irq_handler._entry_ptr.141, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @mantis_irq_handler._entry.142, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 123, i32 3}
!185 = !{ptr @mantis_irq_handler._entry_ptr.143, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @mantis_irq_handler._entry.144, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 126, i32 3}
!188 = !{ptr @mantis_irq_handler._entry_ptr.145, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @mantis_irq_handler._entry.146, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 131, i32 3}
!191 = !{ptr @mantis_irq_handler._entry_ptr.147, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.149, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 147, i32 3}
!194 = !{ptr @mantis_irq_handler._entry.148, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @mantis_irq_handler._entry_ptr.150, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.152, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 149, i32 2}
!198 = !{ptr @mantis_irq_handler._entry.151, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @mantis_irq_handler._entry_ptr.153, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.154, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 51, i32 2}
!202 = !{ptr @.str.155, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 52, i32 2}
!204 = !{ptr @.str.156, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 53, i32 2}
!206 = !{ptr @.str.157, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 54, i32 2}
!208 = !{ptr @.str.158, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 55, i32 2}
!210 = !{ptr @.str.159, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 56, i32 2}
!212 = !{ptr @.str.160, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 57, i32 2}
!214 = !{ptr @.str.161, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 58, i32 2}
!216 = !{ptr @.str.162, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 59, i32 2}
!218 = !{ptr @.str.163, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 60, i32 2}
!220 = distinct !{null, !221, !"label", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/mantis/mantis_cards.c", i32 50, i32 14}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{!"branch_weights", i32 1, i32 2000}
!232 = !{i64 4985895}
!233 = !{i64 2158191148}
!234 = !{i64 2158191733}
!235 = !{i64 2158192646}
!236 = !{i64 2158192998}
!237 = !{i64 4985477}
!238 = !{i64 2158235226}
!239 = !{i64 2158236233}
!240 = !{i64 2158308983}
