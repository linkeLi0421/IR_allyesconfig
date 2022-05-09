; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/kcs_bmc_npcm7xx.c_pt.bc'
source_filename = "../drivers/char/ipmi/kcs_bmc_npcm7xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.npcm7xx_kcs_reg = type { i32, i32, i32, i32, i32 }
%struct.kcs_bmc_device_ops = type { ptr, ptr, ptr, ptr }
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
%struct.npcm7xx_kcs_bmc = type { %struct.kcs_bmc_device, ptr, ptr }
%struct.kcs_bmc_device = type { %struct.list_head, ptr, i32, %struct.kcs_ioreg, ptr, %struct.spinlock, ptr }
%struct.kcs_ioreg = type { i32, i32, i32 }

@__initcall__kmod_kcs_bmc_npcm7xx__187_248_npcm_kcs_bmc_driver_init6 = internal global ptr @npcm_kcs_bmc_driver_init, section ".initcall6.init", align 4
@npcm_kcs_bmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @npcm7xx_kcs_probe, ptr @npcm7xx_kcs_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @npcm_kcs_bmc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_npcm_kcs_bmc_driver_exit = internal global ptr @npcm_kcs_bmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [55 x i8] c"kcs_bmc_npcm7xx.file=drivers/char/ipmi/kcs_bmc_npcm7xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [31 x i8] c"kcs_bmc_npcm7xx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [60 x i8] c"kcs_bmc_npcm7xx.author=Avi Fishman <avifishman70@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [65 x i8] c"kcs_bmc_npcm7xx.author=Haiyue Wang <haiyue.wang@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [75 x i8] c"kcs_bmc_npcm7xx.description=NPCM7xx device interface to the KCS BMC device\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"npcm-kcs-bmc\00", [19 x i8] zeroinitializer }, align 32
@npcm_kcs_bmc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-kcs-bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kcs_chan\00", [23 x i8] zeroinitializer }, align 32
@npcm7xx_kcs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no valid 'kcs_chan' configured\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"npcm7xx_kcs_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/char/ipmi/kcs_bmc_npcm7xx.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@npcm7xx_kcs_probe._entry_ptr = internal global ptr @npcm7xx_kcs_probe._entry, section ".printk_index", align 4
@npcm7xx_kcs_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Couldn't get regmap\0A\00", [43 x i8] zeroinitializer }, align 32
@npcm7xx_kcs_probe._entry_ptr.9 = internal global ptr @npcm7xx_kcs_probe._entry.7, section ".printk_index", align 4
@npcm7xx_kcs_reg_tbl = internal constant { [3 x %struct.npcm7xx_kcs_reg], [36 x i8] } { [3 x %struct.npcm7xx_kcs_reg] [%struct.npcm7xx_kcs_reg { i32 12, i32 14, i32 16, i32 24, i32 28 }, %struct.npcm7xx_kcs_reg { i32 30, i32 32, i32 34, i32 42, i32 46 }, %struct.npcm7xx_kcs_reg { i32 48, i32 50, i32 52, i32 60, i32 64 }], [36 x i8] zeroinitializer }, align 32
@npcm7xx_kcs_ops = internal constant { %struct.kcs_bmc_device_ops, [16 x i8] } { %struct.kcs_bmc_device_ops { ptr @npcm7xx_kcs_irq_mask_update, ptr @npcm7xx_kcs_inb, ptr @npcm7xx_kcs_outb, ptr @npcm7xx_kcs_updateb }, [16 x i8] zeroinitializer }, align 32
@npcm7xx_kcs_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 210, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register channel %d: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@npcm7xx_kcs_probe._entry_ptr.13 = internal global ptr @npcm7xx_kcs_probe._entry.10, section ".printk_index", align 4
@npcm7xx_kcs_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016nuvoton-kcs-bmc: channel=%u idr=0x%x odr=0x%x str=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@npcm7xx_kcs_probe._entry_ptr.16 = internal global ptr @npcm7xx_kcs_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_read() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regmap_write() failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"regmap_update_bits() failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"npcm_kcs_bmc_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 240, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 242, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"npcm_kcs_bmc_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 234, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 174, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 176, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 186, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"npcm7xx_kcs_reg_tbl\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 76, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"npcm7xx_kcs_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 159, i32 40 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 210, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 214, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 94, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 105, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [39 x i8] c"../drivers/char/ipmi/kcs_bmc_npcm7xx.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 114, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_npcm_kcs_bmc_driver_exit, ptr @__initcall__kmod_kcs_bmc_npcm7xx__187_248_npcm_kcs_bmc_driver_init6, ptr @npcm7xx_kcs_probe._entry, ptr @npcm7xx_kcs_probe._entry.10, ptr @npcm7xx_kcs_probe._entry.14, ptr @npcm7xx_kcs_probe._entry.7, ptr @npcm7xx_kcs_probe._entry_ptr, ptr @npcm7xx_kcs_probe._entry_ptr.13, ptr @npcm7xx_kcs_probe._entry_ptr.16, ptr @npcm7xx_kcs_probe._entry_ptr.9, ptr @npcm_kcs_bmc_driver_exit, ptr @npcm_kcs_bmc_driver, ptr @.str, ptr @npcm_kcs_bmc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @npcm7xx_kcs_reg_tbl, ptr @npcm7xx_kcs_ops, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_kcs_bmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_kcs_bmc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_kcs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_kcs_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_kcs_reg_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_kcs_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_kcs_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm7xx_kcs_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_kcs_bmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @npcm_kcs_bmc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @npcm_kcs_bmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @npcm_kcs_bmc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_kcs_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %chan = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #5
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chan, align 4, !annotation !60
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %chan, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.not = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = add i32 %4, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %5)
  %6 = icmp ult i32 %5, -3
  br i1 %6, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 88, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %of_node9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node9, align 8
  %call10 = call ptr @syscon_node_to_regmap(ptr noundef %10) #5
  %map = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %map, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 4
  %sub = add i32 %13, -1
  %arrayidx = getelementptr [3 x %struct.npcm7xx_kcs_reg], ptr @npcm7xx_kcs_reg_tbl, i32 0, i32 %sub
  %reg = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx, ptr %reg, align 4
  %dev20 = getelementptr inbounds %struct.kcs_bmc_device, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %dev20, align 4
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %channel, align 4
  %dib = getelementptr [3 x %struct.npcm7xx_kcs_reg], ptr @npcm7xx_kcs_reg_tbl, i32 0, i32 %sub, i32 2
  %17 = ptrtoint ptr %dib to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dib, align 4
  %ioreg = getelementptr inbounds %struct.kcs_bmc_device, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %ioreg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ioreg, align 4
  %dob = getelementptr [3 x %struct.npcm7xx_kcs_reg], ptr @npcm7xx_kcs_reg_tbl, i32 0, i32 %sub, i32 1
  %20 = ptrtoint ptr %dob to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dob, align 4
  %odr = getelementptr inbounds %struct.kcs_bmc_device, ptr %call.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %odr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %odr, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %str = getelementptr inbounds %struct.kcs_bmc_device, ptr %call.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %str, align 4
  %ops = getelementptr inbounds %struct.kcs_bmc_device, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @npcm7xx_kcs_ops, ptr %ops, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i87 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp.i88 = icmp slt i32 %call.i87, 0
  br i1 %cmp.i88, label %if.end17.cleanup_crit_edge, label %if.end.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.npcm7xx_kcs_config_irq.exit_crit_edge

if.end.i.npcm7xx_kcs_config_irq.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm7xx_kcs_config_irq.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 4
  br label %npcm7xx_kcs_config_irq.exit

npcm7xx_kcs_config_irq.exit:                      ; preds = %if.end.i.i, %if.end.i.npcm7xx_kcs_config_irq.exit_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i ], [ %29, %if.end.i.npcm7xx_kcs_config_irq.exit_crit_edge ]
  %call.i.i89 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call.i87, ptr noundef nonnull @npcm7xx_kcs_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %tobool27.not = icmp eq i32 %call.i.i89, 0
  br i1 %tobool27.not, label %if.end29, label %npcm7xx_kcs_config_irq.exit.cleanup_crit_edge

npcm7xx_kcs_config_irq.exit.cleanup_crit_edge:    ; preds = %npcm7xx_kcs_config_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %npcm7xx_kcs_config_irq.exit
  %32 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map, align 4
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg, align 4
  %ctl.i = getelementptr inbounds %struct.npcm7xx_kcs_reg, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctl.i, align 4
  %call.i.i90 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef %37, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 4
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg, align 4
  %ctl12.i = getelementptr inbounds %struct.npcm7xx_kcs_reg, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %ctl12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctl12.i, align 4
  %call.i28.i = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %43, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %44 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map, align 4
  %46 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg, align 4
  %ie.i = getelementptr inbounds %struct.npcm7xx_kcs_reg, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ie.i, align 4
  %call.i.i94 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %49, i32 noundef 9, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call30 = call i32 @kcs_bmc_add_device(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.end41, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %51, i32 noundef %call30) #8
  br label %cleanup

do.end41:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chan, align 4
  %54 = ptrtoint ptr %ioreg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ioreg, align 4
  %56 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %odr, align 4
  %58 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %str, align 4
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end35, %npcm7xx_kcs_config_irq.exit.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end16 ], [ %call30, %do.end35 ], [ 0, %do.end41 ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i.i89, %npcm7xx_kcs_config_irq.exit.cleanup_crit_edge ], [ %call.i87, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_kcs_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kcs_bmc_remove_device(ptr noundef %1) #5
  %map.i = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i, align 4
  %reg.i = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %ie.i = getelementptr inbounds %struct.npcm7xx_kcs_reg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ie.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %7, i32 noundef 9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 4
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i, align 4
  %ctl.i = getelementptr inbounds %struct.npcm7xx_kcs_reg, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctl.i, align 4
  %call.i.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %13, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 4
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %ctl12.i = getelementptr inbounds %struct.npcm7xx_kcs_reg, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ctl12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctl12.i, align 4
  %call.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %19, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcm7xx_kcs_irq_mask_update(ptr nocapture noundef readonly %kcs_bmc, i8 noundef zeroext %mask, i8 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %mask to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %map = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %reg = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %kcs_bmc, i32 0, i32 2
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %ctl = getelementptr inbounds %struct.npcm7xx_kcs_reg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctl, align 4
  %6 = shl i8 %state, 1
  %7 = and i8 %6, 2
  %mul = zext i8 %7 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %5, i32 noundef 2, i32 noundef %mul, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and7 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end22_crit_edge, label %if.then9

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %map10 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %8 = ptrtoint ptr %map10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map10, align 4
  %reg11 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %kcs_bmc, i32 0, i32 2
  %10 = ptrtoint ptr %reg11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg11, align 4
  %ctl12 = getelementptr inbounds %struct.npcm7xx_kcs_reg, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ctl12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctl12, align 4
  %14 = lshr i8 %state, 1
  %.lobit = and i8 %14, 1
  %15 = zext i8 %.lobit to i32
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %13, i32 noundef 1, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then9, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kcs_bmc_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @npcm7xx_kcs_inb(ptr nocapture noundef readonly %kcs_bmc, i32 noundef %reg) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %map = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %reg, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cond26 = icmp eq i32 %call1, 0
  br i1 %cond26, label %cond.true, label %do.end, !prof !61

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %call1) #5
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %conv = trunc i32 %4 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end
  %cond = phi i8 [ %conv, %cond.true ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i8 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcm7xx_kcs_outb(ptr nocapture noundef readonly %kcs_bmc, i32 noundef %reg, i8 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %conv = zext i8 %data to i32
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %reg, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !61

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 105, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %call1) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @npcm7xx_kcs_updateb(ptr nocapture noundef readonly %kcs_bmc, i32 noundef %reg, i8 noundef zeroext %mask, i8 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.npcm7xx_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %conv = zext i8 %mask to i32
  %conv1 = zext i8 %data to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %reg, i32 noundef %conv, i32 noundef %conv1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !61

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 114, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %call.i) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm7xx_kcs_irq(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kcs_bmc_handle_event(ptr noundef %arg) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kcs_bmc_handle_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_kcs_bmc_npcm7xx__187_248_npcm_kcs_bmc_driver_init6, !1, !"__initcall__kmod_kcs_bmc_npcm7xx__187_248_npcm_kcs_bmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 248, i32 1}
!2 = !{ptr @__exitcall_npcm_kcs_bmc_driver_exit, !1, !"__exitcall_npcm_kcs_bmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 250, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author190, !7, !"__UNIQUE_ID_author190", i1 false, i1 false}
!7 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 251, i32 1}
!8 = !{ptr @__UNIQUE_ID_author191, !9, !"__UNIQUE_ID_author191", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 252, i32 1}
!10 = !{ptr @__UNIQUE_ID_description192, !11, !"__UNIQUE_ID_description192", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 253, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 242, i32 12}
!14 = !{ptr @npcm_kcs_bmc_driver, !15, !"npcm_kcs_bmc_driver", i1 false, i1 false}
!15 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 240, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 174, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 176, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @npcm7xx_kcs_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @npcm7xx_kcs_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 186, i32 3}
!28 = !{ptr @npcm7xx_kcs_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @npcm7xx_kcs_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 210, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @npcm7xx_kcs_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @npcm7xx_kcs_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 214, i32 2}
!37 = !{ptr @npcm7xx_kcs_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @npcm7xx_kcs_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @npcm7xx_kcs_reg_tbl, !40, !"npcm7xx_kcs_reg_tbl", i1 false, i1 false}
!40 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 76, i32 37}
!41 = !{ptr @npcm7xx_kcs_ops, !42, !"npcm7xx_kcs_ops", i1 false, i1 false}
!42 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 159, i32 40}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 94, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 105, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 114, i32 2}
!49 = !{ptr @npcm_kcs_bmc_match, !50, !"npcm_kcs_bmc_match", i1 false, i1 false}
!50 = !{!"../drivers/char/ipmi/kcs_bmc_npcm7xx.c", i32 234, i32 34}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{!"branch_weights", i32 2000, i32 1}
