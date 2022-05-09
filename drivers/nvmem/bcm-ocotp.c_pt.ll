; ModuleID = '/llk/IR_all_yes/drivers/nvmem/bcm-ocotp.c_pt.bc'
source_filename = "../drivers/nvmem/bcm-ocotp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.otpc_map = type { i32, [4 x i16], [4 x i16] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.otpc_priv = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_nvmem_bcm_ocotp__183_323_bcm_otpc_driver_init6 = internal global ptr @bcm_otpc_driver_init, section ".initcall6.init", align 4
@bcm_otpc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_otpc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_otpc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_otpc_driver_exit = internal global ptr @bcm_otpc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [49 x i8] c"nvmem_bcm_ocotp.description=Broadcom OTPC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [51 x i8] c"nvmem_bcm_ocotp.file=drivers/nvmem/nvmem-bcm-ocotp\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [31 x i8] c"nvmem_bcm_ocotp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"brcm-otpc\00", [22 x i8] zeroinitializer }, align 32
@bcm_otpc_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @otp_map }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ocotp-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @otp_map_v2 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bcm_otpc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to map I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm_otpc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nvmem/bcm-ocotp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_otpc_probe._entry_ptr = internal global ptr @bcm_otpc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,ocotp-size\00", [16 x i8] zeroinitializer }, align 32
@bcm_otpc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"size parameter not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm_otpc_probe._entry_ptr.9 = internal global ptr @bcm_otpc_probe._entry.7, section ".printk_index", align 4
@bcm_otpc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"size must be > 0\0A\00", [46 x i8] zeroinitializer }, align 32
@bcm_otpc_probe._entry_ptr.12 = internal global ptr @bcm_otpc_probe._entry.10, section ".printk_index", align 4
@bcm_otpc_nvmem_config = internal global { %struct.nvmem_config, [40 x i8] } { %struct.nvmem_config { ptr null, ptr @.str.16, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @bcm_otpc_read, ptr @bcm_otpc_write, ptr null, i32 0, i32 4, i32 4, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@otp_map_v2 = internal global { %struct.otpc_map, [44 x i8] } { %struct.otpc_map { i32 2, [4 x i16] [i16 16, i16 92, i16 0, i16 0], [4 x i16] [i16 44, i16 100, i16 0, i16 0] }, [44 x i8] zeroinitializer }, align 32
@bcm_otpc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error registering nvmem config\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm_otpc_probe._entry_ptr.15 = internal global ptr @bcm_otpc_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcm-ocotp\00", [22 x i8] zeroinitializer }, align 32
@bcm_otpc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"otp read error: 0x%x\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm_otpc_read\00", [18 x i8] zeroinitializer }, align 32
@bcm_otpc_read._entry_ptr = internal global ptr @bcm_otpc_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm_otpc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"otp write error: 0x%x\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm_otpc_write\00", [17 x i8] zeroinitializer }, align 32
@bcm_otpc_write._entry_ptr = internal global ptr @bcm_otpc_write._entry, section ".printk_index", align 4
@enable_ocotp_program.vals = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 15, i32 4, i32 8, i32 13], [16 x i8] zeroinitializer }, align 32
@otp_map = internal global { %struct.otpc_map, [44 x i8] } { %struct.otpc_map { i32 1, [4 x i16] [i16 16, i16 0, i16 0, i16 0], [4 x i16] [i16 44, i16 0, i16 0, i16 0] }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"bcm_otpc_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 315, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 318, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"bcm_otpc_dt_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 240, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 275, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 286, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 288, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 291, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"bcm_otpc_nvmem_config\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 231, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"otp_map_v2\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 75, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 308, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 232, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 177, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 221, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [5 x i8] c"vals\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 132, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant [8 x i8] c"otp_map\00", align 1
@___asan_gen_.100 = private constant [29 x i8] c"../drivers/nvmem/bcm-ocotp.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 69, i32 24 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_bcm_otpc_driver_exit, ptr @__initcall__kmod_nvmem_bcm_ocotp__183_323_bcm_otpc_driver_init6, ptr @bcm_otpc_driver_exit, ptr @bcm_otpc_probe._entry, ptr @bcm_otpc_probe._entry.10, ptr @bcm_otpc_probe._entry.13, ptr @bcm_otpc_probe._entry.7, ptr @bcm_otpc_probe._entry_ptr, ptr @bcm_otpc_probe._entry_ptr.12, ptr @bcm_otpc_probe._entry_ptr.15, ptr @bcm_otpc_probe._entry_ptr.9, ptr @bcm_otpc_read._entry, ptr @bcm_otpc_read._entry_ptr, ptr @bcm_otpc_write._entry, ptr @bcm_otpc_write._entry_ptr, ptr @bcm_otpc_driver, ptr @.str, ptr @bcm_otpc_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @bcm_otpc_nvmem_config, ptr @otp_map_v2, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @enable_ocotp_program.vals, ptr @otp_map], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_otpc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_otpc_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_otpc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_otpc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_otpc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_otpc_nvmem_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otp_map_v2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_otpc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_otpc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_otpc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_ocotp_program.vals to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otp_map to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_otpc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_otpc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_otpc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_otpc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_otpc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_words = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_words) #6
  %0 = ptrtoint ptr %num_words to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_words, align 4, !annotation !65
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev1) #6
  %map = getelementptr inbounds %struct.otpc_priv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %map, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call7) #6
  %base = getelementptr inbounds %struct.otpc_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %do.body15

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

do.body15:                                        ; preds = %if.end6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !69
  %call.i75 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull %num_words, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool25.not = icmp eq i32 %call.i75, 0
  br i1 %tobool25.not, label %if.else, label %do.end29

do.end29:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.else:                                          ; preds = %do.body15
  %10 = ptrtoint ptr %num_words to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_words, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end35:                                         ; preds = %if.else
  %mul = shl i32 %11, 2
  store i32 %mul, ptr getelementptr inbounds (%struct.nvmem_config, ptr @bcm_otpc_nvmem_config, i32 0, i32 18), align 4
  store ptr %dev1, ptr @bcm_otpc_nvmem_config, align 4
  store ptr %call.i, ptr getelementptr inbounds (%struct.nvmem_config, ptr @bcm_otpc_nvmem_config, i32 0, i32 21), align 4
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %cmp37 = icmp eq ptr %13, @otp_map_v2
  br i1 %cmp37, label %if.then38, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  store i32 8, ptr getelementptr inbounds (%struct.nvmem_config, ptr @bcm_otpc_nvmem_config, i32 0, i32 19), align 4
  store i32 8, ptr getelementptr inbounds (%struct.nvmem_config, ptr @bcm_otpc_nvmem_config, i32 0, i32 20), align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %config = getelementptr inbounds %struct.otpc_priv, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bcm_otpc_nvmem_config, ptr %config, align 4
  %call40 = call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull @bcm_otpc_nvmem_config) #6
  %cmp.i76 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %do.end45, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  %15 = ptrtoint ptr %call40 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end39.cleanup_crit_edge, %do.end33, %do.end29, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ -22, %do.end29 ], [ -22, %do.end33 ], [ %15, %do.end45 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_words) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_otpc_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp45.not = icmp eq i32 %bytes, 0
  br i1 %cmp45.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %config = getelementptr inbounds %struct.otpc_priv, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %word_size, align 4
  %div = udiv i32 %offset, %3
  %base = getelementptr inbounds %struct.otpc_priv, ptr %context, i32 0, i32 1
  %map = getelementptr inbounds %struct.otpc_priv, ptr %context, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %buf.048 = phi ptr [ %val, %for.body.lr.ph ], [ %buf.1.lcssa, %for.end.for.body_crit_edge ]
  %bytes_read.047 = phi i32 [ 0, %for.body.lr.ph ], [ %bytes_read.1.lcssa, %for.end.for.body_crit_edge ]
  %address.046 = phi i32 [ %div, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !69
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %inc = add i32 %address.046, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %address.046, 65535
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %add.ptr.i32 = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %8) #6, !srcloc !69
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %add.ptr.i33 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 16777216) #6, !srcloc !69
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr.i34 = getelementptr i8, ptr %12, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body
  %retries.08.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %14 = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %inc.i = add nuw nsw i32 %retries.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5000
  br i1 %exitcond.not.i, label %if.end.i.do.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %retries.08.i)
  %cmp2.i = icmp eq i32 %retries.08.i, 5000
  br i1 %cmp2.i, label %for.end.i.do.end_crit_edge, label %for.cond4.preheader

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond4.preheader:                              ; preds = %for.end.i
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp540.not = icmp eq i32 %19, 0
  br i1 %cmp540.not, label %for.cond4.preheader.for.end_crit_edge, label %for.cond4.preheader.for.body6_crit_edge

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.cond4.preheader.for.end_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end:                                           ; preds = %for.end.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %20 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, i32 noundef -11) #9
  br label %cleanup

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %22 = phi ptr [ %31, %for.body6.for.body6_crit_edge ], [ %17, %for.cond4.preheader.for.body6_crit_edge ]
  %buf.143 = phi ptr [ %incdec.ptr, %for.body6.for.body6_crit_edge ], [ %buf.048, %for.cond4.preheader.for.body6_crit_edge ]
  %bytes_read.142 = phi i32 [ %add, %for.body6.for.body6_crit_edge ], [ %bytes_read.047, %for.cond4.preheader.for.body6_crit_edge ]
  %i.041 = phi i32 [ %inc11, %for.body6.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %arrayidx = getelementptr %struct.otpc_map, ptr %22, i32 0, i32 1, i32 %i.041
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %26 to i32
  %add.ptr = getelementptr i8, ptr %24, i32 %conv
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !67
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %incdec.ptr = getelementptr i32, ptr %buf.143, i32 1
  %29 = ptrtoint ptr %buf.143 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %buf.143, align 4
  %add = add i32 %bytes_read.142, 4
  %inc11 = add nuw i32 %i.041, 1
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %cmp5 = icmp ult i32 %inc11, %33
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.end_crit_edge

for.body6.for.end_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.end:                                          ; preds = %for.body6.for.end_crit_edge, %for.cond4.preheader.for.end_crit_edge
  %bytes_read.1.lcssa = phi i32 [ %bytes_read.047, %for.cond4.preheader.for.end_crit_edge ], [ %add, %for.body6.for.end_crit_edge ]
  %buf.1.lcssa = phi ptr [ %buf.048, %for.cond4.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.body6.for.end_crit_edge ]
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %add.ptr.i36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #6, !srcloc !69
  %cmp = icmp ult i32 %bytes_read.1.lcssa, %bytes
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_otpc_write(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.otpc_priv, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %word_size, align 4
  %.frozen = freeze i32 %3
  %div = udiv i32 %offset, %.frozen
  %4 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %offset, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.otpc_priv, ptr %context, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #6, !srcloc !69
  %add.ptr.i11.i = getelementptr i8, ptr %6, i32 44
  %add.ptr.i12.i = getelementptr i8, ptr %6, i32 8
  %add.ptr.i13.i = getelementptr i8, ptr %6, i32 12
  br label %for.body.i

for.cond.i.critedge:                              ; preds = %for.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 0) #6, !srcloc !69
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.cond.i.critedge.for.body.i19.i_crit_edge, label %for.cond.i.critedge.for.body.i_crit_edge

for.cond.i.critedge.for.body.i_crit_edge:         ; preds = %for.cond.i.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.critedge.for.body.i19.i_crit_edge:     ; preds = %for.cond.i.critedge
  br label %for.body.i19.i

for.body.i:                                       ; preds = %for.cond.i.critedge.for.body.i_crit_edge, %if.end
  %i.029.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.critedge.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @enable_ocotp_program.vals, i32 0, i32 %i.029.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %9) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 16777216) #6, !srcloc !69
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i
  %retries.08.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %inc.i.i = add nuw nsw i32 %retries.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5000
  br i1 %exitcond.not.i.i, label %if.end.i.i.for.end.thread.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end.i.i.for.end.thread.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %retries.08.i.i)
  %cmp2.i.i = icmp eq i32 %retries.08.i.i, 5000
  br i1 %cmp2.i.i, label %for.end.i.i.for.end.thread.i.i_crit_edge, label %for.cond.i.critedge

for.end.i.i.for.end.thread.i.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %for.end.i.i.for.end.thread.i.i_crit_edge, %if.end.i.i.for.end.thread.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 0) #6, !srcloc !69
  br label %cleanup

for.body.i19.i:                                   ; preds = %if.end.i22.i.for.body.i19.i_crit_edge, %for.cond.i.critedge.for.body.i19.i_crit_edge
  %retries.08.i16.i = phi i32 [ %inc.i20.i, %if.end.i22.i.for.body.i19.i_crit_edge ], [ 0, %for.cond.i.critedge.for.body.i19.i_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %14 = and i32 %13, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i18.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i18.i, label %if.end.i22.i, label %for.end.i24.i

if.end.i22.i:                                     ; preds = %for.body.i19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %inc.i20.i = add nuw nsw i32 %retries.08.i16.i, 1
  %exitcond.not.i21.i = icmp eq i32 %inc.i20.i, 5000
  br i1 %exitcond.not.i21.i, label %if.end.i22.i.cleanup_crit_edge, label %if.end.i22.i.for.body.i19.i_crit_edge

if.end.i22.i.for.body.i19.i_crit_edge:            ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i19.i

if.end.i22.i.cleanup_crit_edge:                   ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.i24.i:                                    ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %retries.08.i16.i)
  %cmp2.i23.i = icmp eq i32 %retries.08.i16.i, 5000
  br i1 %cmp2.i23.i, label %for.end.i24.i.cleanup_crit_edge, label %for.cond.preheader

for.end.i24.i.cleanup_crit_edge:                  ; preds = %for.end.i24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %for.end.i24.i
  %map = getelementptr inbounds %struct.otpc_priv, ptr %context, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %poll_cpu_status.exit.for.cond_crit_edge, %for.cond.preheader
  %buf.0 = phi ptr [ %buf.1.lcssa, %poll_cpu_status.exit.for.cond_crit_edge ], [ %val, %for.cond.preheader ]
  %bytes_written.0 = phi i32 [ %bytes_written.1.lcssa, %poll_cpu_status.exit.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %address.0 = phi i32 [ %inc, %poll_cpu_status.exit.for.cond_crit_edge ], [ %div, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_written.0, i32 %bytes)
  %cmp = icmp ult i32 %bytes_written.0, %bytes
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #6, !srcloc !69
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %inc = add i32 %address.0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %address.0, 65535
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %add.ptr.i51 = getelementptr i8, ptr %19, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %20) #6, !srcloc !69
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp975.not = icmp eq i32 %24, 0
  br i1 %cmp975.not, label %for.body.for.end_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  br label %do.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body.do.body_crit_edge
  %i.078 = phi i32 [ %inc13, %do.body.do.body_crit_edge ], [ 0, %for.body.do.body_crit_edge ]
  %bytes_written.177 = phi i32 [ %add, %do.body.do.body_crit_edge ], [ %bytes_written.0, %for.body.do.body_crit_edge ]
  %buf.176 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %buf.0, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %buf.176 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf.176, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %arrayidx = getelementptr %struct.otpc_map, ptr %31, i32 0, i32 2, i32 %i.078
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %33 to i32
  %add.ptr = getelementptr i8, ptr %29, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #6, !srcloc !69
  %incdec.ptr = getelementptr i32, ptr %buf.176, i32 1
  %add = add i32 %bytes_written.177, 4
  %inc13 = add nuw i32 %i.078, 1
  %34 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %cmp9 = icmp ult i32 %inc13, %37
  br i1 %cmp9, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.body.for.end_crit_edge
  %buf.1.lcssa = phi ptr [ %buf.0, %for.body.for.end_crit_edge ], [ %incdec.ptr, %do.body.for.end_crit_edge ]
  %bytes_written.1.lcssa = phi i32 [ %bytes_written.0, %for.body.for.end_crit_edge ], [ %add, %do.body.for.end_crit_edge ]
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %add.ptr.i52 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 16777216) #6, !srcloc !69
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr.i53 = getelementptr i8, ptr %41, i32 12
  br label %for.body.i56

for.body.i56:                                     ; preds = %if.end.i.for.body.i56_crit_edge, %for.end
  %retries.08.i = phi i32 [ 0, %for.end ], [ %inc.i57, %if.end.i.for.body.i56_crit_edge ]
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %43 = and i32 %42, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i55 = icmp eq i32 %43, 0
  br i1 %tobool.not.i55, label %if.end.i, label %for.end.i

if.end.i:                                         ; preds = %for.body.i56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #6
  %inc.i57 = add nuw nsw i32 %retries.08.i, 1
  %exitcond.not.i58 = icmp eq i32 %inc.i57, 5000
  br i1 %exitcond.not.i58, label %if.end.i.for.end.thread.i_crit_edge, label %if.end.i.for.body.i56_crit_edge

if.end.i.for.body.i56_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i56

if.end.i.for.end.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i

for.end.i:                                        ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %retries.08.i)
  %cmp2.i = icmp eq i32 %retries.08.i, 5000
  br i1 %cmp2.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.poll_cpu_status.exit_crit_edge

for.end.i.poll_cpu_status.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_cpu_status.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %if.end.i.for.end.thread.i_crit_edge
  br label %poll_cpu_status.exit

poll_cpu_status.exit:                             ; preds = %for.end.thread.i, %for.end.i.poll_cpu_status.exit_crit_edge
  %tobool18.not = phi i1 [ true, %for.end.i.poll_cpu_status.exit_crit_edge ], [ false, %for.end.thread.i ]
  %45 = phi i32 [ 0, %for.end.i.poll_cpu_status.exit_crit_edge ], [ -11, %for.end.thread.i ]
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %add.ptr.i59 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 0) #6, !srcloc !69
  br i1 %tobool18.not, label %poll_cpu_status.exit.for.cond_crit_edge, label %do.end22

poll_cpu_status.exit.for.cond_crit_edge:          ; preds = %poll_cpu_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

do.end22:                                         ; preds = %poll_cpu_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.19, i32 noundef %45) #9
  br label %cleanup

for.end24:                                        ; preds = %for.cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %add.ptr.i1.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 16777216) #6, !srcloc !69
  %add.ptr.i2.i = getelementptr i8, ptr %17, i32 12
  br label %for.body.i.i63

for.body.i.i63:                                   ; preds = %if.end.i.i66.for.body.i.i63_crit_edge, %for.end24
  %retries.08.i.i61 = phi i32 [ 0, %for.end24 ], [ %inc.i.i64, %if.end.i.i66.for.body.i.i63_crit_edge ]
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %51 = and i32 %50, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i62 = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i62, label %if.end.i.i66, label %for.body.i.i63.disable_ocotp_program.exit_crit_edge

for.body.i.i63.disable_ocotp_program.exit_crit_edge: ; preds = %for.body.i.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ocotp_program.exit

if.end.i.i66:                                     ; preds = %for.body.i.i63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #6
  %inc.i.i64 = add nuw nsw i32 %retries.08.i.i61, 1
  %exitcond.not.i.i65 = icmp eq i32 %inc.i.i64, 5000
  br i1 %exitcond.not.i.i65, label %if.end.i.i66.disable_ocotp_program.exit_crit_edge, label %if.end.i.i66.for.body.i.i63_crit_edge

if.end.i.i66.for.body.i.i63_crit_edge:            ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i63

if.end.i.i66.disable_ocotp_program.exit_crit_edge: ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ocotp_program.exit

disable_ocotp_program.exit:                       ; preds = %if.end.i.i66.disable_ocotp_program.exit_crit_edge, %for.body.i.i63.disable_ocotp_program.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 0) #6, !srcloc !69
  br label %cleanup

cleanup:                                          ; preds = %disable_ocotp_program.exit, %do.end22, %for.end.i24.i.cleanup_crit_edge, %if.end.i22.i.cleanup_crit_edge, %for.end.thread.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end22 ], [ 0, %disable_ocotp_program.exit ], [ -22, %entry.cleanup_crit_edge ], [ -5, %for.end.i24.i.cleanup_crit_edge ], [ -5, %for.end.thread.i.i ], [ -5, %if.end.i22.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_nvmem_bcm_ocotp__183_323_bcm_otpc_driver_init6, !1, !"__initcall__kmod_nvmem_bcm_ocotp__183_323_bcm_otpc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 323, i32 1}
!2 = !{ptr @__exitcall_bcm_otpc_driver_exit, !1, !"__exitcall_bcm_otpc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 325, i32 1}
!5 = !{ptr @__UNIQUE_ID_file185, !6, !"__UNIQUE_ID_file185", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 326, i32 1}
!7 = !{ptr @__UNIQUE_ID_license186, !6, !"__UNIQUE_ID_license186", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 318, i32 11}
!10 = !{ptr @bcm_otpc_driver, !11, !"bcm_otpc_driver", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 315, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 275, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bcm_otpc_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @bcm_otpc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 286, i32 38}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 288, i32 3}
!24 = !{ptr @bcm_otpc_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcm_otpc_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 291, i32 3}
!28 = !{ptr @bcm_otpc_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bcm_otpc_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 308, i32 3}
!32 = !{ptr @bcm_otpc_probe._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm_otpc_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 232, i32 10}
!36 = !{ptr @bcm_otpc_nvmem_config, !37, !"bcm_otpc_nvmem_config", i1 false, i1 false}
!37 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 231, i32 28}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 177, i32 4}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @bcm_otpc_read._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcm_otpc_read._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 221, i32 4}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bcm_otpc_write._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @bcm_otpc_write._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @enable_ocotp_program.vals, !49, !"vals", i1 false, i1 false}
!49 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 132, i32 19}
!50 = !{ptr @otp_map_v2, !51, !"otp_map_v2", i1 false, i1 false}
!51 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 75, i32 24}
!52 = !{ptr @bcm_otpc_dt_ids, !53, !"bcm_otpc_dt_ids", i1 false, i1 false}
!53 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 240, i32 34}
!54 = !{ptr @otp_map, !55, !"otp_map", i1 false, i1 false}
!55 = !{!"../drivers/nvmem/bcm-ocotp.c", i32 69, i32 24}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i64 2153453538}
!67 = !{i64 5795644}
!68 = !{i64 2153454489}
!69 = !{i64 5795226}
!70 = !{i64 2153444014}
!71 = !{i64 2153441946}
!72 = !{i64 2153442788}
!73 = !{i64 2153443459}
!74 = !{i64 2153445202}
!75 = !{i64 2153448586}
!76 = !{i64 2153444560}
!77 = !{i64 2153448833}
