; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-maxiradio.c_pt.bc'
source_filename = "../drivers/media/radio/radio-maxiradio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.snd_tea575x_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.84 = type { ptr }
%struct.maxiradio = type { %struct.snd_tea575x, %struct.v4l2_device, ptr, i16 }
%struct.snd_tea575x = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }

@__UNIQUE_ID_author296 = internal constant [69 x i8] c"radio_maxiradio.author=Dimitromanolakis Apostolos, apdim@grecian.net\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [78 x i8] c"radio_maxiradio.description=Radio driver for the Guillemot Maxi Radio FM2000.\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [57 x i8] c"radio_maxiradio.file=drivers/media/radio/radio-maxiradio\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [28 x i8] c"radio_maxiradio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version300 = internal constant [30 x i8] c"radio_maxiradio.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radio_maxiradio\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_radio_nr = internal constant [25 x i8] c"radio_maxiradio.radio_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@radio_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype301 = internal constant [38 x i8] c"radio_maxiradio.parmtype=radio_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr302 = internal constant [50 x i8] c"radio_maxiradio.parm=radio_nr:Radio device number\00", section ".modinfo", align 1
@__initcall__kmod_radio_maxiradio__303_205_maxiradio_driver_init6 = internal global ptr @maxiradio_driver_init, section ".initcall6.init", align 4
@maxiradio_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @maxiradio_pci_tbl, ptr @maxiradio_probe, ptr @maxiradio_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_maxiradio_driver_exit = internal global ptr @maxiradio_driver_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radio-maxiradio\00", [16 x i8] zeroinitializer }, align 32
@maxiradio_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 20550, i32 4097, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@maxiradio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 127, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"not enough memory\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"maxiradio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/radio/radio-maxiradio.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@maxiradio_probe._entry_ptr = internal global ptr @maxiradio_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"maxiradio\00", [22 x i8] zeroinitializer }, align 32
@maxiradio_instance = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@maxiradio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Could not register v4l2_device\0A\00", [58 x i8] zeroinitializer }, align 32
@maxiradio_probe._entry_ptr.12 = internal global ptr @maxiradio_probe._entry.10, section ".printk_index", align 4
@maxiradio_tea_ops = internal constant { %struct.snd_tea575x_ops, [44 x i8] } { %struct.snd_tea575x_ops { ptr null, ptr null, ptr @maxiradio_tea575x_set_pins, ptr @maxiradio_tea575x_get_pins, ptr @maxiradio_tea575x_set_direction }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Maxi Radio FM2000\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@maxiradio_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 154, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't reserve I/O ports\0A\00", [39 x i8] zeroinitializer }, align 32
@maxiradio_probe._entry_ptr.17 = internal global ptr @maxiradio_probe._entry.15, section ".printk_index", align 4
@maxiradio_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013radio-maxiradio: Unable to detect TEA575x tuner\0A\00", [45 x i8] zeroinitializer }, align 32
@maxiradio_probe._entry_ptr.20 = internal global ptr @maxiradio_probe._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 56, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 58, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"maxiradio_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 198, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 199, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"maxiradio_pci_tbl\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 190, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 127, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 132, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"maxiradio_instance\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 65, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 136, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"maxiradio_tea_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 112, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 146, i32 25 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 148, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 154, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [41 x i8] c"../drivers/media/radio/radio-maxiradio.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 163, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__UNIQUE_ID_radio_nr302, ptr @__UNIQUE_ID_radio_nrtype301, ptr @__UNIQUE_ID_version300, ptr @__exitcall_maxiradio_driver_exit, ptr @__initcall__kmod_radio_maxiradio__303_205_maxiradio_driver_init6, ptr @__modver_attr, ptr @__param_radio_nr, ptr @maxiradio_driver_exit, ptr @maxiradio_probe._entry, ptr @maxiradio_probe._entry.10, ptr @maxiradio_probe._entry.15, ptr @maxiradio_probe._entry.18, ptr @maxiradio_probe._entry_ptr, ptr @maxiradio_probe._entry_ptr.12, ptr @maxiradio_probe._entry_ptr.17, ptr @maxiradio_probe._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @radio_nr, ptr @maxiradio_driver, ptr @.str.3, ptr @maxiradio_pci_tbl, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @maxiradio_instance, ptr @.str.11, ptr @maxiradio_tea_ops, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxiradio_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxiradio_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxiradio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxiradio_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxiradio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxiradio_tea_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxiradio_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxiradio_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @maxiradio_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @maxiradio_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @maxiradio_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @maxiradio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maxiradio_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1904) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l2_dev3 = getelementptr inbounds %struct.maxiradio, ptr %call7.i.i, i32 0, i32 1
  %call4 = tail call i32 @v4l2_device_set_name(ptr noundef %v4l2_dev3, ptr noundef nonnull @.str.9, ptr noundef nonnull @maxiradio_instance) #8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call6 = tail call i32 @v4l2_device_register(ptr noundef %dev5, ptr noundef %v4l2_dev3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.maxiradio, ptr %call7.i.i, i32 0, i32 1, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name) #12
  br label %errfr

if.end13:                                         ; preds = %if.end
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %call7.i.i, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %private_data, align 8
  %ops = getelementptr inbounds %struct.snd_tea575x, ptr %call7.i.i, i32 0, i32 15
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @maxiradio_tea_ops, ptr %ops, align 4
  %cannot_read_data = getelementptr inbounds %struct.snd_tea575x, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %cannot_read_data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %cannot_read_data, align 2
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %v4l2_dev3, ptr %call7.i.i, align 8
  %5 = load i32, ptr @radio_nr, align 4
  %radio_nr = getelementptr inbounds %struct.snd_tea575x, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %radio_nr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %radio_nr, align 8
  %card = getelementptr inbounds %struct.snd_tea575x, ptr %call7.i.i, i32 0, i32 17
  %call21 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.13, i32 noundef 32) #8
  %bus_info = getelementptr inbounds %struct.snd_tea575x, ptr %call7.i.i, i32 0, i32 18
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end13.pci_name.exit_crit_edge

if.end13.pci_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev5, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end13.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end13.pci_name.exit_crit_edge ]
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i)
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp28 = icmp eq i32 %14, 0
  %sub = sub i32 1, %12
  %add = add i32 %sub, %14
  %cond = select i1 %cmp28, i32 0, i32 %add
  %name35 = getelementptr inbounds %struct.maxiradio, ptr %call7.i.i, i32 0, i32 1, i32 4
  %call37 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %12, i32 noundef %cond, ptr noundef %name35, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call37, null
  br i1 %tobool.not, label %do.end41, label %if.end43

do.end41:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.16) #12
  br label %err_hdl

if.end43:                                         ; preds = %pci_name.exit
  %call44 = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.err_out_free_region_crit_edge

if.end43.err_out_free_region_crit_edge:           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_free_region

if.end47:                                         ; preds = %if.end43
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource, align 8
  %conv = trunc i32 %16 to i16
  %io = getelementptr inbounds %struct.maxiradio, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %io to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %io, align 4
  %call52 = tail call i32 @snd_tea575x_init(ptr noundef nonnull %call7.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end47.cleanup_crit_edge, label %do.end57

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %err_out_free_region

err_out_free_region:                              ; preds = %do.end57, %if.end43.err_out_free_region_crit_edge
  %18 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resource, align 8
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp67 = icmp eq i32 %21, 0
  %sub77 = sub i32 1, %19
  %add78 = add i32 %sub77, %21
  %cond80 = select i1 %cmp67, i32 0, i32 %add78
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %19, i32 noundef %cond80) #8
  br label %err_hdl

err_hdl:                                          ; preds = %err_out_free_region, %do.end41
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev3) #8
  br label %errfr

errfr:                                            ; preds = %err_hdl, %do.end11
  %retval1.0 = phi i32 [ %call6, %do.end11 ], [ -19, %err_hdl ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %errfr, %if.end47.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %retval1.0, %errfr ], [ 0, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @maxiradio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1768
  tail call void @snd_tea575x_exit(ptr noundef %add.ptr.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %io = getelementptr i8, ptr %1, i32 132
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %io, align 4
  %conv = zext i16 %3 to i32
  %add = or i32 %conv, -18874368
  %4 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #8, !srcloc !70
  tail call void @v4l2_device_unregister(ptr noundef %1) #8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %sub = sub i32 1, %6
  %add12 = add i32 %sub, %8
  %cond = select i1 %cmp, i32 0, i32 %add12
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %6, i32 noundef %cond) #8
  tail call void @kfree(ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_set_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_tea575x_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @maxiradio_tea575x_set_pins(ptr nocapture noundef readonly %tea, i8 noundef zeroext %pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %trunc = trunc i8 %pins to i2
  %rev = tail call i2 @llvm.bitreverse.i2(i2 %trunc)
  %2 = and i8 %pins, 4
  %conv14 = zext i2 %rev to i8
  %or15 = or i8 %2, %conv14
  %3 = or i8 %or15, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %io = getelementptr inbounds %struct.maxiradio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %io, align 4
  %conv20 = zext i16 %5 to i32
  %add = or i32 %conv20, -18874368
  %6 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %3) #8, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @maxiradio_tea575x_get_pins(ptr nocapture noundef readonly %tea) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %io = getelementptr inbounds %struct.maxiradio, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %io, align 4
  %conv = zext i16 %3 to i32
  %add = or i32 %conv, -18874368
  %4 = inttoptr i32 %add to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %and3 = lshr i8 %5, 1
  %and3.lobit = and i8 %and3, 1
  %and5 = and i8 %5, 8
  %or = or i8 %and3.lobit, %and5
  ret i8 %or
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @maxiradio_tea575x_set_direction(ptr nocapture noundef %tea, i1 noundef zeroext %output) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_tea575x_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__UNIQUE_ID_author296, !1, !"__UNIQUE_ID_author296", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_description297, !3, !"__UNIQUE_ID_description297", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 54, i32 1}
!4 = !{ptr @__UNIQUE_ID_file298, !5, !"__UNIQUE_ID_file298", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 55, i32 1}
!6 = !{ptr @__UNIQUE_ID_license299, !5, !"__UNIQUE_ID_license299", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version300, !8, !"__UNIQUE_ID_version300", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 56, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_radio_nr, !14, !"__param_radio_nr", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 59, i32 1}
!15 = !{ptr @__UNIQUE_ID_radio_nrtype301, !14, !"__UNIQUE_ID_radio_nrtype301", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_radio_nr302, !17, !"__UNIQUE_ID_radio_nr302", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 60, i32 1}
!18 = !{ptr @__initcall__kmod_radio_maxiradio__303_205_maxiradio_driver_init6, !19, !"__initcall__kmod_radio_maxiradio__303_205_maxiradio_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 205, i32 1}
!20 = !{ptr @__exitcall_maxiradio_driver_exit, !19, !"__exitcall_maxiradio_driver_exit", i1 false, i1 false}
!21 = !{ptr @__param_str_radio_nr, !14, !"__param_str_radio_nr", i1 false, i1 false}
!22 = !{ptr @radio_nr, !23, !"radio_nr", i1 false, i1 false}
!23 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 58, i32 12}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 199, i32 11}
!26 = !{ptr @maxiradio_driver, !27, !"maxiradio_driver", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 198, i32 26}
!28 = !{ptr @maxiradio_pci_tbl, !29, !"maxiradio_pci_tbl", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 190, i32 35}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 127, i32 3}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @maxiradio_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @maxiradio_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 132, i32 33}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 136, i32 3}
!42 = !{ptr @maxiradio_probe._entry.10, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @maxiradio_probe._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 146, i32 25}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 148, i32 4}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 154, i32 3}
!50 = !{ptr @maxiradio_probe._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @maxiradio_probe._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 163, i32 3}
!54 = !{ptr @maxiradio_probe._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @maxiradio_probe._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @maxiradio_instance, !57, !"maxiradio_instance", i1 false, i1 false}
!57 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 65, i32 17}
!58 = !{ptr @maxiradio_tea_ops, !59, !"maxiradio_tea_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/radio-maxiradio.c", i32 112, i32 37}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2156582438}
!70 = !{i64 4991131}
!71 = !{i64 2156573907}
!72 = !{i64 4991526}
!73 = !{i64 2156574298}
