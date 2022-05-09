; ModuleID = '/llk/IR_all_yes/drivers/hid/amd-sfh-hid/amd_sfh_pcie.c_pt.bc'
source_filename = "../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amd_mp2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.amd_mp2_dev = type { ptr, ptr, ptr, ptr, %struct.amd_input_data, i32 }
%struct.amd_input_data = type { [5 x ptr], [5 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.amdtp_cl_data = type { i8, i32, i32, i32, ptr, [5 x ptr], [5 x i32], [5 x ptr], [5 x ptr], [5 x i32], i32, [5 x i32], [5 x i32], [5 x i32], [5 x i8], [5 x i8], [5 x i8], [5 x ptr], [5 x i8], ptr, %struct.delayed_work, %struct.delayed_work }

@__param_str_sensor_mask = internal constant [20 x i8] c"amd_sfh.sensor_mask\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@sensor_mask_override = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_sensor_mask = internal constant %struct.kernel_param { ptr @__param_str_sensor_mask, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @sensor_mask_override } }, section "__param", align 4
@__UNIQUE_ID_sensor_masktype236 = internal constant [33 x i8] c"amd_sfh.parmtype=sensor_mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sensor_mask237 = internal constant [60 x i8] c"amd_sfh.parm=sensor_mask:override the detected sensors mask\00", section ".modinfo", align 1
@__initcall__kmod_amd_sfh__240_403_amd_mp2_pci_driver_init6 = internal global ptr @amd_mp2_pci_driver_init, section ".initcall6.init", align 4
@amd_mp2_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @amd_mp2_pci_tbl, ptr @amd_mp2_pci_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd_mp2_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_amd_mp2_pci_driver_exit = internal global ptr @amd_mp2_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [57 x i8] c"amd_sfh.description=AMD(R) PCIe MP2 Communication Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [45 x i8] c"amd_sfh.file=drivers/hid/amd-sfh-hid/amd_sfh\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [29 x i8] c"amd_sfh.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [59 x i8] c"amd_sfh.author=Shyam Sundar S K <Shyam-sundar.S-k@amd.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [53 x i8] c"amd_sfh.author=Sandeep Singh <Sandeep.singh@amd.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [61 x i8] c"amd_sfh.author=Basavaraj Natikar <Basavaraj.Natikar@amd.com>\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"amd_sfh\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_mp2_amd\00", [19 x i8] zeroinitializer }, align 32
@amd_mp2_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 5604, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@amd_mp2_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @amd_mp2_pci_suspend, ptr @amd_mp2_pci_resume, ptr @amd_mp2_pci_suspend, ptr @amd_mp2_pci_resume, ptr @amd_mp2_pci_suspend, ptr @amd_mp2_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@amd_mp2_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 306, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amd_mp2_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/hid/amd-sfh-hid/amd_sfh_pcie.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amd_mp2_pci_probe._entry_ptr = internal global ptr @amd_mp2_pci_probe._entry, section ".printk_index", align 4
@amd_mp2_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amd_sfh_irq_init failed\0A\00", [39 x i8] zeroinitializer }, align 32
@amd_mp2_pci_probe._entry_ptr.9 = internal global ptr @amd_mp2_pci_probe._entry.7, section ".printk_index", align 4
@amd_mp2_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amd_sfh_hid_client_init failed\0A\00", [32 x i8] zeroinitializer }, align 32
@amd_mp2_pci_probe._entry_ptr.12 = internal global ptr @amd_mp2_pci_probe._entry.10, section ".printk_index", align 4
@amd_sfh_ops_v2 = internal constant { %struct.amd_mp2_ops, [40 x i8] } { %struct.amd_mp2_ops { ptr @amd_start_sensor_v2, ptr @amd_stop_sensor_v2, ptr @amd_stop_all_sensor_v2, ptr @amd_sfh_wait_response_v2, ptr @amd_sfh_clear_intr_v2, ptr @amd_sfh_irq_init_v2 }, [40 x i8] zeroinitializer }, align 32
@amd_sfh_ops = internal constant { %struct.amd_mp2_ops, [40 x i8] } { %struct.amd_mp2_ops { ptr @amd_start_sensor, ptr @amd_stop_sensor, ptr @amd_stop_all_sensors, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amd_sfh_irq_init_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request irq %d err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amd_sfh_irq_init_v2\00", [44 x i8] zeroinitializer }, align 32
@amd_sfh_irq_init_v2._entry_ptr = internal global ptr @amd_sfh_irq_init_v2._entry, section ".printk_index", align 4
@amd_mp2_pci_suspend.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amd_mp2_pci_suspend\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"suspend sid 0x%x status 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@amd_mp2_pci_resume.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amd_mp2_pci_resume\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"resume sid 0x%x status 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"sensor_mask_override\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 32, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"amd_mp2_pci_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 397, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 403, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 398, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"amd_mp2_pci_tbl\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 391, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"amd_mp2_pm_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 388, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 306, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 319, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 326, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"amd_sfh_ops_v2\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 241, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"amd_sfh_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 250, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 125, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 377, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [42 x i8] c"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 352, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__UNIQUE_ID_sensor_mask237, ptr @__UNIQUE_ID_sensor_masktype236, ptr @__exitcall_amd_mp2_pci_driver_exit, ptr @__initcall__kmod_amd_sfh__240_403_amd_mp2_pci_driver_init6, ptr @__param_sensor_mask, ptr @amd_mp2_pci_driver_exit, ptr @amd_mp2_pci_probe._entry, ptr @amd_mp2_pci_probe._entry.10, ptr @amd_mp2_pci_probe._entry.7, ptr @amd_mp2_pci_probe._entry_ptr, ptr @amd_mp2_pci_probe._entry_ptr.12, ptr @amd_mp2_pci_probe._entry_ptr.9, ptr @amd_sfh_irq_init_v2._entry, ptr @amd_sfh_irq_init_v2._entry_ptr, ptr @sensor_mask_override, ptr @amd_mp2_pci_driver, ptr @.str, ptr @.str.1, ptr @amd_mp2_pci_tbl, ptr @amd_mp2_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @amd_sfh_ops_v2, ptr @amd_sfh_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_mask_override to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_mp2_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_mp2_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_mp2_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_mp2_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_mp2_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_mp2_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sfh_ops_v2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sfh_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sfh_irq_init_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amd_start_sensor(ptr nocapture noundef readonly %privdata, [3 x i32] %info.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.coerce.fca.0.extract = extractvalue [3 x i32] %info.coerce, 0
  %info.coerce.fca.1.extract = extractvalue [3 x i32] %info.coerce, 1
  %info.coerce.fca.2.extract = extractvalue [3 x i32] %info.coerce, 2
  %bf.value = and i32 %info.coerce.fca.1.extract, 65535
  %0 = lshr i32 %info.coerce.fca.0.extract, 8
  %bf.shl = and i32 %0, 16711680
  %bf.set3 = or i32 %bf.value, %bf.shl
  %bf.set7 = or i32 %bf.set3, 16777216
  %mmio = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 2
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 66824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %info.coerce.fca.2.extract) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %2, i32 66828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr16 = getelementptr i8, ptr %5, i32 66820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 80) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %bf.set7)
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr21 = getelementptr i8, ptr %8, i32 66816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %6) #6, !srcloc !76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amd_stop_sensor(ptr nocapture noundef readonly %privdata, i16 noundef zeroext %sensor_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %sensor_idx, 255
  %bf.value = zext i16 %0 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 16
  %bf.set6 = or i32 %bf.shl, 33554432
  %mmio = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 2
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 66824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %2, i32 66828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %bf.set6)
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 66816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %3) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amd_stop_all_sensors(ptr nocapture noundef readonly %privdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %mmio = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 2
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 66816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8) #6, !srcloc !76
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amd_mp2_get_sensor_num(ptr nocapture noundef readonly %privdata, ptr nocapture noundef writeonly %sensor_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sensor_mask_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp3 = icmp sgt i32 %0, -1
  br i1 %cmp3, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mp2_acs = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 5
  %1 = ptrtoint ptr %mp2_acs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mp2_acs, align 4
  %shr = lshr i32 %2, 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %entry.if.end5_crit_edge
  %activestatus.0 = phi i32 [ %shr, %if.else ], [ %0, %entry.if.end5_crit_edge ]
  %and = and i32 %activestatus.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %sensor_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %sensor_id, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %num_of_sensors.0 = phi i32 [ 1, %if.then7 ], [ 0, %if.end5.if.end8_crit_edge ]
  %and9 = and i32 %activestatus.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %inc12 = add nuw nsw i32 %num_of_sensors.0, 1
  %arrayidx13 = getelementptr i8, ptr %sensor_id, i32 %num_of_sensors.0
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx13, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %num_of_sensors.1 = phi i32 [ %inc12, %if.then11 ], [ %num_of_sensors.0, %if.end8.if.end14_crit_edge ]
  %and15 = and i32 %activestatus.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %inc18 = add nuw nsw i32 %num_of_sensors.1, 1
  %arrayidx19 = getelementptr i8, ptr %sensor_id, i32 %num_of_sensors.1
  %5 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %arrayidx19, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %num_of_sensors.2 = phi i32 [ %inc18, %if.then17 ], [ %num_of_sensors.1, %if.end14.if.end20_crit_edge ]
  %and21 = and i32 %activestatus.0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %inc24 = add nuw nsw i32 %num_of_sensors.2, 1
  %arrayidx25 = getelementptr i8, ptr %sensor_id, i32 %num_of_sensors.2
  %6 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 19, ptr %arrayidx25, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %num_of_sensors.3 = phi i32 [ %inc24, %if.then23 ], [ %num_of_sensors.2, %if.end20.if.end26_crit_edge ]
  %and27 = and i32 %activestatus.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %inc30 = add nuw nsw i32 %num_of_sensors.3, 1
  %arrayidx31 = getelementptr i8, ptr %sensor_id, i32 %num_of_sensors.3
  %7 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %arrayidx31, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %num_of_sensors.4 = phi i32 [ %inc30, %if.then29 ], [ %num_of_sensors.3, %if.end26.if.end32_crit_edge ]
  ret i32 %num_of_sensors.4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_mp2_pci_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @amd_mp2_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amd_mp2_pci_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @amd_mp2_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_mp2_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call3 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %arrayidx = getelementptr ptr, ptr %call11, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %mmio = getelementptr inbounds %struct.amd_mp2_dev, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %mmio, align 4
  tail call void @pci_set_master(ptr noundef %pdev) #6
  %call.i82 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i = icmp eq i32 %call.i82, 0
  br i1 %cmp.i, label %if.end10.if.end22_crit_edge, label %if.then15

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then15:                                        ; preds = %if.end10
  %call.i83 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp.i84 = icmp eq i32 %call.i83, 0
  br i1 %cmp.i84, label %if.then15.if.end22_crit_edge, label %do.end

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end22:                                         ; preds = %if.then15.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %.sink = phi i64 [ -1, %if.end10.if.end22_crit_edge ], [ 4294967295, %if.then15.if.end22_crit_edge ]
  %call1.i85 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #6
  %call.i88 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 432, i32 noundef 3520) #6
  %cl_data = getelementptr inbounds %struct.amd_mp2_dev, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %cl_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i88, ptr %cl_data, align 4
  %tobool26.not = icmp eq ptr %call.i88, null
  br i1 %tobool26.not, label %if.end22.cleanup_crit_edge, label %if.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 67212
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !82
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %mp2_acs.i = getelementptr inbounds %struct.amd_mp2_dev, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %mp2_acs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mp2_acs.i, align 4
  %conv.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.i)
  %cond.i = icmp eq i32 %conv.i, 2
  %spec.select.i = select i1 %cond.i, ptr @amd_sfh_ops_v2, ptr @amd_sfh_ops
  %11 = getelementptr inbounds %struct.amd_mp2_dev, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spec.select.i, ptr %11, align 4
  br i1 %cond.i, label %amd_sfh_irq_init.exit, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

amd_sfh_irq_init.exit:                            ; preds = %if.end28
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  tail call void @pci_intx(ptr noundef %14, i32 noundef 1) #6
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 4
  %call.i.i105 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev.i, i32 noundef %18, ptr noundef nonnull @amd_sfh_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %tobool.not.i = icmp eq i32 %call.i.i105, 0
  br i1 %tobool.not.i, label %amd_sfh_irq_init.exit.if.end36_crit_edge, label %do.end34

amd_sfh_irq_init.exit.if.end36_crit_edge:         ; preds = %amd_sfh_irq_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end34:                                         ; preds = %amd_sfh_irq_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %irq6.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %irq6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq6.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.13, i32 noundef %22, i32 noundef %call.i.i105) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end36:                                         ; preds = %amd_sfh_irq_init.exit.if.end36_crit_edge, %if.end28.if.end36_crit_edge
  %call37 = tail call i32 @amd_sfh_hid_client_init(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %11, align 4
  %clear_intr.i95 = getelementptr inbounds %struct.amd_mp2_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %clear_intr.i95 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clear_intr.i95, align 4
  %tobool.not.i96 = icmp eq ptr %26, null
  br i1 %tobool38.not, label %if.end44, label %if.then39

if.then39:                                        ; preds = %if.end36
  br i1 %tobool.not.i96, label %if.then39.amd_sfh_clear_intr.exit_crit_edge, label %if.then.i93

if.then39.amd_sfh_clear_intr.exit_crit_edge:      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %amd_sfh_clear_intr.exit

if.then.i93:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %26(ptr noundef nonnull %call.i) #6
  br label %amd_sfh_clear_intr.exit

amd_sfh_clear_intr.exit:                          ; preds = %if.then.i93, %if.then39.amd_sfh_clear_intr.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  br i1 %tobool.not.i96, label %if.end44.amd_sfh_clear_intr.exit98_crit_edge, label %if.then.i97

if.end44.amd_sfh_clear_intr.exit98_crit_edge:     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %amd_sfh_clear_intr.exit98

if.then.i97:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %26(ptr noundef nonnull %call.i) #6
  br label %amd_sfh_clear_intr.exit98

amd_sfh_clear_intr.exit98:                        ; preds = %if.then.i97, %if.end44.amd_sfh_clear_intr.exit98_crit_edge
  %call.i99 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @amd_mp2_pci_remove, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %amd_sfh_clear_intr.exit98.cleanup_crit_edge, label %if.then.i101

amd_sfh_clear_intr.exit98.cleanup_crit_edge:      ; preds = %amd_sfh_clear_intr.exit98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i101:                                     ; preds = %amd_sfh_clear_intr.exit98
  %call.i.i = tail call i32 @amd_sfh_hid_client_deinit(ptr noundef nonnull %call.i) #6
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %11, align 4
  %stop_all.i.i = getelementptr inbounds %struct.amd_mp2_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %stop_all.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stop_all.i.i, align 4
  tail call void %30(ptr noundef nonnull %call.i) #6
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  tail call void @pci_intx(ptr noundef %32, i32 noundef 0) #6
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %11, align 4
  %clear_intr.i.i.i = getelementptr inbounds %struct.amd_mp2_ops, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %clear_intr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clear_intr.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %if.then.i101.cleanup_crit_edge, label %if.then.i.i.i

if.then.i101.cleanup_crit_edge:                   ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %36(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then.i101.cleanup_crit_edge, %amd_sfh_clear_intr.exit98.cleanup_crit_edge, %amd_sfh_clear_intr.exit, %do.end34, %if.end22.cleanup_crit_edge, %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i83, %do.end ], [ %call.i.i105, %do.end34 ], [ %call37, %amd_sfh_clear_intr.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ], [ 0, %amd_sfh_clear_intr.exit98.cleanup_crit_edge ], [ %call.i99, %if.then.i101.cleanup_crit_edge ], [ %call.i99, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amd_sfh_hid_client_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_mp2_pci_remove(ptr noundef %privdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amd_sfh_hid_client_deinit(ptr noundef %privdata) #6
  %mp2_ops = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 3
  %0 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp2_ops, align 4
  %stop_all = getelementptr inbounds %struct.amd_mp2_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stop_all to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_all, align 4
  tail call void %3(ptr noundef %privdata) #6
  %4 = ptrtoint ptr %privdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %privdata, align 4
  tail call void @pci_intx(ptr noundef %5, i32 noundef 0) #6
  %6 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mp2_ops, align 4
  %clear_intr.i = getelementptr inbounds %struct.amd_mp2_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %clear_intr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clear_intr.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.amd_sfh_clear_intr.exit_crit_edge, label %if.then.i

entry.amd_sfh_clear_intr.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %amd_sfh_clear_intr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %privdata) #6
  br label %amd_sfh_clear_intr.exit

amd_sfh_clear_intr.exit:                          ; preds = %if.then.i, %entry.amd_sfh_clear_intr.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_start_sensor_v2(ptr nocapture noundef readonly %privdata, [3 x i32] %info.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.coerce.fca.0.extract = extractvalue [3 x i32] %info.coerce, 0
  %info.sroa.0.0.extract.shift = lshr i32 %info.coerce.fca.0.extract, 24
  %info.coerce.fca.1.extract = extractvalue [3 x i32] %info.coerce, 1
  %bf.value = and i32 %info.coerce.fca.1.extract, 255
  %bf.shl = shl nuw nsw i32 %info.sroa.0.0.extract.shift, 8
  %bf.set6 = or i32 %bf.shl, %bf.value
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %info.sroa.0.0.extract.shift)
  %cmp = icmp eq i32 %info.sroa.0.0.extract.shift, 19
  %spec.select.v = select i1 %cmp, i32 404815872, i32 404750336
  %spec.select = or i32 %bf.set6, %spec.select.v
  %info.coerce.fca.2.extract = extractvalue [3 x i32] %info.coerce, 2
  %mmio = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 2
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 66820
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %info.coerce.fca.2.extract) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %1, i32 66824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr22 = getelementptr i8, ptr %5, i32 66816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %3) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_stop_sensor_v2(ptr nocapture noundef readonly %privdata, i16 noundef zeroext %sensor_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = shl i16 %sensor_idx, 8
  %bf.shl = zext i16 %0 to i32
  %bf.set12 = or i32 %bf.shl, 673185792
  %mmio = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 2
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 66820
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %2, i32 66824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %bf.set12)
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr14 = getelementptr i8, ptr %5, i32 66816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %3) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_stop_all_sensor_v2(ptr nocapture noundef readonly %privdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %mmio = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 2
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 66816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 65423) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_sfh_wait_response_v2(ptr nocapture noundef readonly %mp2, i8 noundef zeroext %sid, i32 noundef %sensor_sts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 1600000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 44) #6
  %mmio = getelementptr inbounds %struct.amd_mp2_dev, ptr %mp2, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %sid)
  %cmp15 = icmp eq i8 %sid, -1
  %conv = zext i8 %sid to i32
  br label %for.cond

for.cond:                                         ; preds = %if.then40, %entry
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 67200
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %bf.lshr = lshr i32 %3, 24
  %bf.clear = and i32 %bf.lshr, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %sensor_sts)
  %cmp10 = icmp eq i32 %bf.clear, %sensor_sts
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cmp13 = icmp ult i32 %3, 1073741824
  %or.cond = select i1 %cmp10, i1 %cmp13, i1 false
  br i1 %or.cond, label %land.lhs.true14, label %for.cond.land.lhs.true25_crit_edge

for.cond.land.lhs.true25_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true25

land.lhs.true14:                                  ; preds = %for.cond
  br i1 %cmp15, label %land.lhs.true14.land.end.thread_crit_edge, label %lor.lhs.false

land.lhs.true14.land.end.thread_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.thread

lor.lhs.false:                                    ; preds = %land.lhs.true14
  %bf.lshr18 = lshr i32 %3, 10
  %bf.clear19 = and i32 %bf.lshr18, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear19, i32 %conv)
  %cmp21 = icmp eq i32 %bf.clear19, %conv
  br i1 %cmp21, label %for.end.thread108, label %lor.lhs.false.land.lhs.true25_crit_edge

lor.lhs.false.land.lhs.true25_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true25

land.lhs.true25:                                  ; preds = %lor.lhs.false.land.lhs.true25_crit_edge, %for.cond.land.lhs.true25_crit_edge
  %call26 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call26, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then40

if.then40:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #6
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true25
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr34 = getelementptr i8, ptr %5, i32 67200
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #6, !srcloc !82
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %.pre = lshr i32 %7, 24
  %bf.clear45 = and i32 %.pre, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear45, i32 %sensor_sts)
  %cmp46 = icmp eq i32 %bf.clear45, %sensor_sts
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %7)
  %cmp51 = icmp ult i32 %7, 1073741824
  %or.cond83 = select i1 %cmp46, i1 %cmp51, i1 false
  br i1 %or.cond83, label %land.rhs, label %for.end.land.end.thread100_crit_edge

for.end.land.end.thread100_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.thread100

for.end.thread108:                                ; preds = %lor.lhs.false
  %bf.clear45111 = and i32 %bf.lshr, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear45111, i32 %sensor_sts)
  %cmp46112 = icmp eq i32 %bf.clear45111, %sensor_sts
  br i1 %cmp46112, label %for.end.thread108.land.end_crit_edge, label %for.end.thread108.land.end.thread100_crit_edge

for.end.thread108.land.end.thread100_crit_edge:   ; preds = %for.end.thread108
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.thread100

for.end.thread108.land.end_crit_edge:             ; preds = %for.end.thread108
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %for.end
  br i1 %cmp15, label %land.rhs.land.end.thread_crit_edge, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs.land.end.thread_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.thread

land.end:                                         ; preds = %land.rhs.land.end_crit_edge, %for.end.thread108.land.end_crit_edge
  %cmd_resp.sroa.0.0115117 = phi i32 [ %7, %land.rhs.land.end_crit_edge ], [ %3, %for.end.thread108.land.end_crit_edge ]
  %bf.lshr57 = lshr i32 %cmd_resp.sroa.0.0115117, 10
  %bf.clear58 = and i32 %bf.lshr57, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear58, i32 %conv)
  %cmp60 = icmp eq i32 %bf.clear58, %conv
  br i1 %cmp60, label %land.end.land.end.thread_crit_edge, label %land.end.land.end.thread100_crit_edge

land.end.land.end.thread100_crit_edge:            ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.thread100

land.end.land.end.thread_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end.land.end.thread_crit_edge, %land.rhs.land.end.thread_crit_edge, %land.lhs.true14.land.end.thread_crit_edge
  br label %land.end.thread100

land.end.thread100:                               ; preds = %land.end.thread, %land.end.land.end.thread100_crit_edge, %for.end.thread108.land.end.thread100_crit_edge, %for.end.land.end.thread100_crit_edge
  %8 = phi i32 [ %sensor_sts, %land.end.thread ], [ 5, %land.end.land.end.thread100_crit_edge ], [ 5, %for.end.land.end.thread100_crit_edge ], [ 5, %for.end.thread108.land.end.thread100_crit_edge ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_sfh_clear_intr_v2(ptr nocapture noundef readonly %privdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 2
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 67216
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 67216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 67220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 251658240) #6, !srcloc !76
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_sfh_irq_init_v2(ptr noundef %privdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %privdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata, align 4
  tail call void @pci_intx(ptr noundef %1, i32 noundef 1) #6
  %2 = ptrtoint ptr %privdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull @amd_sfh_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %privdata) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %privdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %privdata, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %irq6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.13, i32 noundef %9, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_sfh_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mp2_ops.i = getelementptr inbounds %struct.amd_mp2_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %mp2_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp2_ops.i, align 4
  %clear_intr.i = getelementptr inbounds %struct.amd_mp2_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clear_intr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clear_intr.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.amd_sfh_clear_intr.exit_crit_edge, label %if.then.i

entry.amd_sfh_clear_intr.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %amd_sfh_clear_intr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %data) #6
  br label %amd_sfh_clear_intr.exit

amd_sfh_clear_intr.exit:                          ; preds = %if.then.i, %entry.amd_sfh_clear_intr.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amd_sfh_hid_client_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_mp2_pci_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cl_data1 = getelementptr inbounds %struct.amd_mp2_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cl_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_data1, align 4
  %num_hid_devices = getelementptr inbounds %struct.amdtp_cl_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_hid_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp52.not = icmp eq i32 %5, 0
  br i1 %cmp52.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mp2_ops = getelementptr inbounds %struct.amd_mp2_dev, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdtp_cl_data, ptr %3, i32 0, i32 16, i32 %i.053
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %cmp2.not = icmp eq i8 %7, 16
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx4 = getelementptr %struct.amdtp_cl_data, ptr %3, i32 0, i32 12, i32 %i.053
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp5 = icmp eq i32 %9, 4
  br i1 %cmp5, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mp2_ops, align 4
  %stop = getelementptr inbounds %struct.amd_mp2_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stop, align 4
  %conv9 = zext i8 %7 to i16
  tail call void %13(ptr noundef %1, i16 noundef zeroext %conv9) #6
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %call12 = tail call i32 @amd_sfh_wait_for_response(ptr noundef %1, i8 noundef zeroext %15, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 4
  br i1 %cmp13.not, label %if.then.do.body_crit_edge, label %if.then15

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %arrayidx4, align 4
  br label %do.body

do.body:                                          ; preds = %if.then15, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd_mp2_pci_suspend.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amd_mp2_pci_suspend, %if.then21)) #6
          to label %for.inc [label %if.then21], !srcloc !92

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv24 = zext i8 %18 to i32
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd_mp2_pci_suspend.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %conv24, i32 noundef %20) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %do.body, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.053, 1
  %21 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_hid_devices, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %work_buffer = getelementptr inbounds %struct.amdtp_cl_data, ptr %3, i32 0, i32 21
  %call29 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work_buffer) #6
  %mp2_ops.i = getelementptr inbounds %struct.amd_mp2_dev, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %mp2_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mp2_ops.i, align 4
  %clear_intr.i = getelementptr inbounds %struct.amd_mp2_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %clear_intr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clear_intr.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %for.end.amd_sfh_clear_intr.exit_crit_edge, label %if.then.i

for.end.amd_sfh_clear_intr.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %amd_sfh_clear_intr.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %26(ptr noundef %1) #6
  br label %amd_sfh_clear_intr.exit

amd_sfh_clear_intr.exit:                          ; preds = %if.then.i, %for.end.amd_sfh_clear_intr.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_mp2_pci_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cl_data1 = getelementptr inbounds %struct.amd_mp2_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cl_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_data1, align 4
  %num_hid_devices = getelementptr inbounds %struct.amdtp_cl_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_hid_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp47.not = icmp eq i32 %5, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mp2_ops = getelementptr inbounds %struct.amd_mp2_dev, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdtp_cl_data, ptr %3, i32 0, i32 12, i32 %i.048
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp2 = icmp eq i32 %7, 5
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx3 = getelementptr %struct.amdtp_cl_data, ptr %3, i32 0, i32 16, i32 %i.048
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr %struct.amdtp_cl_data, ptr %3, i32 0, i32 11, i32 %i.048
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %12 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mp2_ops, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %info.sroa.0.sroa.0.0.insert.ext = zext i8 %9 to i32
  %info.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %info.sroa.0.sroa.0.0.insert.ext, 24
  %info.sroa.0.sroa.0.0.insert.insert = or i32 %info.sroa.0.sroa.0.0.insert.shift, 16777215
  %.fca.0.insert = insertvalue [3 x i32] poison, i32 %info.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue [3 x i32] %.fca.0.insert, i32 200, 1
  %.fca.2.insert = insertvalue [3 x i32] %.fca.1.insert, i32 %11, 2
  tail call void %15(ptr noundef %1, [3 x i32] %.fca.2.insert) #6
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3, align 1
  %call8 = tail call i32 @amd_sfh_wait_for_response(ptr noundef %1, i8 noundef zeroext %17, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 4
  br i1 %cmp9, label %if.then10, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %arrayidx, align 4
  br label %do.body

do.body:                                          ; preds = %if.then10, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd_mp2_pci_resume.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amd_mp2_pci_resume, %if.then16)) #6
          to label %for.inc [label %if.then16], !srcloc !92

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %20 to i32
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd_mp2_pci_resume.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %22) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %do.body, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %23 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_hid_devices, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %work_buffer = getelementptr inbounds %struct.amdtp_cl_data, ptr %3, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work_buffer, i32 noundef 20) #6
  %mp2_ops.i = getelementptr inbounds %struct.amd_mp2_dev, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %mp2_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mp2_ops.i, align 4
  %clear_intr.i = getelementptr inbounds %struct.amd_mp2_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %clear_intr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clear_intr.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %for.end.amd_sfh_clear_intr.exit_crit_edge, label %if.then.i

for.end.amd_sfh_clear_intr.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %amd_sfh_clear_intr.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %29(ptr noundef %1) #6
  br label %amd_sfh_clear_intr.exit

amd_sfh_clear_intr.exit:                          ; preds = %if.then.i, %for.end.amd_sfh_clear_intr.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amd_sfh_wait_for_response(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !60, !61, !62, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__param_sensor_mask, !1, !"__param_sensor_mask", i1 false, i1 false}
!1 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_sensor_masktype236, !1, !"__UNIQUE_ID_sensor_masktype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_sensor_mask237, !4, !"__UNIQUE_ID_sensor_mask237", i1 false, i1 false}
!4 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 34, i32 1}
!5 = !{ptr @__initcall__kmod_amd_sfh__240_403_amd_mp2_pci_driver_init6, !6, !"__initcall__kmod_amd_sfh__240_403_amd_mp2_pci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 403, i32 1}
!7 = !{ptr @__exitcall_amd_mp2_pci_driver_exit, !6, !"__exitcall_amd_mp2_pci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description241, !9, !"__UNIQUE_ID_description241", i1 false, i1 false}
!9 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 405, i32 1}
!10 = !{ptr @__UNIQUE_ID_file242, !11, !"__UNIQUE_ID_file242", i1 false, i1 false}
!11 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 406, i32 1}
!12 = !{ptr @__UNIQUE_ID_license243, !11, !"__UNIQUE_ID_license243", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author244, !14, !"__UNIQUE_ID_author244", i1 false, i1 false}
!14 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 407, i32 1}
!15 = !{ptr @__UNIQUE_ID_author245, !16, !"__UNIQUE_ID_author245", i1 false, i1 false}
!16 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 408, i32 1}
!17 = !{ptr @__UNIQUE_ID_author246, !18, !"__UNIQUE_ID_author246", i1 false, i1 false}
!18 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 409, i32 1}
!19 = !{ptr @__param_str_sensor_mask, !1, !"__param_str_sensor_mask", i1 false, i1 false}
!20 = !{ptr @sensor_mask_override, !21, !"sensor_mask_override", i1 false, i1 false}
!21 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 32, i32 12}
!22 = distinct !{null, !23, !"dmi_sensor_mask_overrides", i1 false, i1 false}
!23 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 181, i32 35}
!24 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 398, i32 11}
!27 = !{ptr @amd_mp2_pci_driver, !28, !"amd_mp2_pci_driver", i1 false, i1 false}
!28 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 397, i32 26}
!29 = !{ptr @amd_mp2_pci_tbl, !30, !"amd_mp2_pci_tbl", i1 false, i1 false}
!30 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 391, i32 35}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 306, i32 4}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @amd_mp2_pci_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @amd_mp2_pci_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 319, i32 3}
!41 = !{ptr @amd_mp2_pci_probe._entry.7, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @amd_mp2_pci_probe._entry_ptr.9, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 326, i32 3}
!45 = !{ptr @amd_mp2_pci_probe._entry.10, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @amd_mp2_pci_probe._entry_ptr.12, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @amd_sfh_ops_v2, !48, !"amd_sfh_ops_v2", i1 false, i1 false}
!48 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 241, i32 33}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 125, i32 3}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @amd_sfh_irq_init_v2._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @amd_sfh_irq_init_v2._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @amd_sfh_ops, !55, !"amd_sfh_ops", i1 false, i1 false}
!55 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 250, i32 33}
!56 = !{ptr @amd_mp2_pm_ops, !57, !"amd_mp2_pm_ops", i1 false, i1 false}
!57 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 388, i32 8}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 377, i32 4}
!60 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @amd_mp2_pci_suspend.__UNIQUE_ID_ddebug239, !59, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_pcie.c", i32 352, i32 4}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @amd_mp2_pci_resume.__UNIQUE_ID_ddebug238, !63, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2154131097}
!76 = !{i64 6233248}
!77 = !{i64 2154131470}
!78 = !{i64 2154471324}
!79 = !{i64 2154471770}
!80 = !{i64 2154472236}
!81 = !{i64 2154472681}
!82 = !{i64 6233666}
!83 = !{i64 2154474316}
!84 = !{i64 2154466652}
!85 = !{i64 2154467118}
!86 = !{i64 2154467563}
!87 = !{i64 2154465828}
!88 = !{i64 2154466386}
!89 = !{i64 2154468375}
!90 = !{i64 2154468638}
!91 = !{i64 2154469095}
!92 = !{i64 2148765452, i64 2148765457, i64 2148765470, i64 2148765514, i64 2148765548, i64 2148765569}
