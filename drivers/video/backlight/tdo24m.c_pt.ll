; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/tdo24m.c_pt.bc'
source_filename = "../drivers/video/backlight/tdo24m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.tdo24m = type { ptr, ptr, %struct.spi_message, %struct.spi_transfer, ptr, ptr, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_tdo24m__303_444_tdo24m_driver_init6 = internal global ptr @tdo24m_driver_init, section ".initcall6.init", align 4
@tdo24m_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @tdo24m_probe, ptr @tdo24m_remove, ptr @tdo24m_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tdo24m_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tdo24m_driver_exit = internal global ptr @tdo24m_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [48 x i8] c"tdo24m.author=Eric Miao <eric.miao@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [55 x i8] c"tdo24m.description=Driver for Toppoly TDO24M LCD Panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [43 x i8] c"tdo24m.file=drivers/video/backlight/tdo24m\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [19 x i8] c"tdo24m.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [24 x i8] c"tdo24m.alias=spi:tdo24m\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tdo24m\00", [25 x i8] zeroinitializer }, align 32
@tdo24m_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tdo24m_suspend, ptr @tdo24m_resume, ptr @tdo24m_suspend, ptr @tdo24m_resume, ptr @tdo24m_suspend, ptr @tdo24m_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tdo24m_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unsupported model\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tdo24m_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/backlight/tdo24m.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tdo24m_probe._entry_ptr = internal global ptr @tdo24m_probe._entry, section ".printk_index", align 4
@tdo24m_ops = internal global { %struct.lcd_ops, [40 x i8] } { %struct.lcd_ops { ptr @tdo24m_get_power, ptr @tdo24m_set_power, ptr null, ptr null, ptr @tdo24m_set_mode, ptr null }, [40 x i8] zeroinitializer }, align 32
@lcd_vga_pass_through_tdo24m = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1073832214, i32 1073838464, i32 1073857280, i32 1073769808, i32 1073772288, i32 -1], [40 x i8] zeroinitializer }, align 32
@lcd_panel_config = internal constant { [28 x i32], [48 x i8] } { [28 x i32] [i32 -2098987015, i32 17, i32 1073837313, i32 1073837824, i32 1073771872, i32 1073839888, i32 1073832790, i32 1073833267, i32 1073833745, i32 1073834242, i32 1073834805, i32 1073835328, i32 1073835779, i32 1073838848, i32 1073839360, i32 1073840401, i32 1073840913, i32 1073841425, i32 -2096217792, i32 -2095922752, i32 -2095701728, i32 1073843648, i32 -2095159485, i32 1073844548, i32 1073845043, i32 1073845504, i32 -2085485584, i32 -1], [48 x i8] zeroinitializer }, align 32
@lcd_vga_transfer_tdo24m = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1073848066, i32 -2092822268, i32 1073849089, i32 -2092291840, i32 -2092026609, i32 -2091761745, i32 1073851156, i32 33, i32 41, i32 -1], [56 x i8] zeroinitializer }, align 32
@lcd_qvga_pass_through_tdo24m = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1073832214, i32 1073838465, i32 1073857280, i32 1073769808, i32 1073772322, i32 -1], [40 x i8] zeroinitializer }, align 32
@lcd_qvga_transfer = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1073851650, i32 -2090987260, i32 1073852673, i32 -2090467064, i32 -2089153782, i32 -2088889063, i32 1073856778, i32 33, i32 41, i32 -1], [56 x i8] zeroinitializer }, align 32
@lcd_vga_pass_through_tdo35s = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1073832214, i32 1073838464, i32 1073857280, i32 1073772288, i32 -1], [44 x i8] zeroinitializer }, align 32
@lcd_vga_transfer_tdo35s = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1073848066, i32 -2092822268, i32 1073849089, i32 -2092302050, i32 -2092029656, i32 -2091757212, i32 1073851176, i32 33, i32 41, i32 -1], [56 x i8] zeroinitializer }, align 32
@lcd_qvga_pass_through_tdo35s = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1073832214, i32 1073838465, i32 1073857280, i32 1073772322, i32 -1], [44 x i8] zeroinitializer }, align 32
@lcd_panel_on = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 41, i32 -2098987015, i32 17, i32 1073832214, i32 -1], [44 x i8] zeroinitializer }, align 32
@lcd_panel_reset = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 0, i32 0, i32 0, i32 -1], [44 x i8] zeroinitializer }, align 32
@lcd_panel_off = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 40, i32 -2099052286, i32 16, i32 1073832192, i32 -1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"tdo24m_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 434, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 436, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"tdo24m_pm_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 424, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 383, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"tdo24m_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 325, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"lcd_vga_pass_through_tdo24m\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 71, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"lcd_panel_config\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 144, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"lcd_vga_transfer_tdo24m\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 89, i32 23 }
@___asan_gen_.48 = private unnamed_addr constant [29 x i8] c"lcd_qvga_pass_through_tdo24m\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 80, i32 23 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"lcd_qvga_transfer\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 102, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"lcd_vga_pass_through_tdo35s\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 115, i32 23 }
@___asan_gen_.57 = private unnamed_addr constant [24 x i8] c"lcd_vga_transfer_tdo35s\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 131, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant [29 x i8] c"lcd_qvga_pass_through_tdo35s\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 123, i32 23 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"lcd_panel_on\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 55, i32 23 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"lcd_panel_reset\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 47, i32 23 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"lcd_panel_off\00", align 1
@___asan_gen_.70 = private constant [36 x i8] c"../drivers/video/backlight/tdo24m.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 63, i32 23 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_tdo24m_driver_exit, ptr @__initcall__kmod_tdo24m__303_444_tdo24m_driver_init6, ptr @tdo24m_driver_exit, ptr @tdo24m_probe._entry, ptr @tdo24m_probe._entry_ptr, ptr @tdo24m_driver, ptr @.str, ptr @tdo24m_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tdo24m_ops, ptr @lcd_vga_pass_through_tdo24m, ptr @lcd_panel_config, ptr @lcd_vga_transfer_tdo24m, ptr @lcd_qvga_pass_through_tdo24m, ptr @lcd_qvga_transfer, ptr @lcd_vga_pass_through_tdo35s, ptr @lcd_vga_transfer_tdo35s, ptr @lcd_qvga_pass_through_tdo35s, ptr @lcd_panel_on, ptr @lcd_panel_reset, ptr @lcd_panel_off], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdo24m_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdo24m_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdo24m_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdo24m_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_vga_pass_through_tdo24m to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_panel_config to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_vga_transfer_tdo24m to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_qvga_pass_through_tdo24m to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_qvga_transfer to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_vga_pass_through_tdo35s to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_vga_transfer_tdo35s to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_qvga_pass_through_tdo35s to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_panel_on to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_panel_reset to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_panel_off to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tdo24m_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @tdo24m_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tdo24m_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @tdo24m_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdo24m_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %model.0 = phi i32 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %bits_per_word, align 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %mode, align 8
  %call2 = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 180, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %call.i, align 4
  %power = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %power, align 4
  %mode11 = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %mode11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %mode11, align 4
  %call.i75 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 4, i32 noundef 3520) #5
  %buf = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i75, ptr %buf, align 4
  %cmp = icmp eq ptr %call.i75, null
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %msg = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 2
  %xfer = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 2, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 2, i32 10
  %14 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 2, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %cs_change = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 3, i32 7
  %16 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %cs_change, align 4
  %17 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i75, ptr %xfer, align 4
  %transfer_list.i = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 3, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end16.spi_message_add_tail.exit_crit_edge

if.end16.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 3, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end16.spi_message_add_tail.exit_crit_edge
  %22 = zext i32 %model.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %model.0, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
  ]

sw.bb:                                            ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %color_invert = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %color_invert to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %color_invert, align 4
  %adj_mode = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %adj_mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tdo24m_adj_mode, ptr %adj_mode, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %adj_mode19 = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %adj_mode19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tdo35s_adj_mode, ptr %adj_mode19, align 4
  %color_invert20 = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %color_invert20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %color_invert20, align 4
  br label %sw.epilog

do.end:                                           ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb
  %call24 = tail call ptr @devm_lcd_device_register(ptr noundef %spi, ptr noundef nonnull @.str, ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef nonnull @tdo24m_ops) #5
  %lcd_dev = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %lcd_dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call24, ptr %lcd_dev, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end30

if.then27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %sw.epilog
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %30 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp2.i = icmp slt i32 %31, 2
  br i1 %cmp2.i, label %if.end30.if.then10.i_crit_edge, label %if.then.i

if.end30.if.then10.i_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then.i:                                        ; preds = %if.end30
  %call.i.i = tail call fastcc i32 @tdo24m_writes(ptr noundef nonnull %call.i, ptr noundef nonnull @lcd_panel_on) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call fastcc i32 @tdo24m_writes(ptr noundef nonnull %call.i, ptr noundef nonnull @lcd_panel_reset) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %adj_mode.i.i = getelementptr inbounds %struct.tdo24m, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %adj_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adj_mode.i.i, align 4
  %34 = ptrtoint ptr %mode11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mode11, align 4
  %call5.i.i = tail call i32 %33(ptr noundef nonnull %call.i, i32 noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i.i.if.then10.i_crit_edge, label %if.end4.i.i.cleanup_crit_edge

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i.i.if.then10.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.end4.i.i.if.then10.i_crit_edge, %if.end30.if.then10.i_crit_edge
  %36 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %power, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i, %if.end4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then27, %do.end, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %28, %if.then27 ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %if.then10.i ], [ %call5.i.i, %if.end4.i.i.cleanup_crit_edge ], [ %call1.i.i, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdo24m_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power1.i = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i = icmp slt i32 %3, 2
  br i1 %cmp2.i, label %if.then7.i, label %entry.if.then10.i_crit_edge

entry.if.then10.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then7.i:                                       ; preds = %entry
  %call.i20.i = tail call fastcc i32 @tdo24m_writes(ptr noundef %1, ptr noundef nonnull @lcd_panel_off) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i, label %if.then7.i.if.then10.i_crit_edge, label %if.then7.i.tdo24m_power.exit_crit_edge

if.then7.i.tdo24m_power.exit_crit_edge:           ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tdo24m_power.exit

if.then7.i.if.then10.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.then7.i.if.then10.i_crit_edge, %entry.if.then10.i_crit_edge
  %4 = ptrtoint ptr %power1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %power1.i, align 4
  br label %tdo24m_power.exit

tdo24m_power.exit:                                ; preds = %if.then10.i, %if.then7.i.tdo24m_power.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tdo24m_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power1.i = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i = icmp slt i32 %3, 2
  br i1 %cmp2.i, label %if.then7.i, label %entry.if.then10.i_crit_edge

entry.if.then10.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then7.i:                                       ; preds = %entry
  %call.i20.i = tail call fastcc i32 @tdo24m_writes(ptr noundef %1, ptr noundef nonnull @lcd_panel_off) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i, label %if.then7.i.if.then10.i_crit_edge, label %if.then7.i.tdo24m_power.exit_crit_edge

if.then7.i.tdo24m_power.exit_crit_edge:           ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tdo24m_power.exit

if.then7.i.if.then10.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.then7.i.if.then10.i_crit_edge, %entry.if.then10.i_crit_edge
  %4 = ptrtoint ptr %power1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %power1.i, align 4
  br label %tdo24m_power.exit

tdo24m_power.exit:                                ; preds = %if.then10.i, %if.then7.i.tdo24m_power.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdo24m_adj_mode(ptr noundef %lcd, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %mode, label %entry.return_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %lcd_qvga_pass_through_tdo24m.sink = phi ptr [ @lcd_qvga_pass_through_tdo24m, %sw.bb3 ], [ @lcd_vga_pass_through_tdo24m, %entry.sw.epilog_crit_edge ]
  %lcd_qvga_transfer.sink = phi ptr [ @lcd_qvga_transfer, %sw.bb3 ], [ @lcd_vga_transfer_tdo24m, %entry.sw.epilog_crit_edge ]
  %call4 = tail call fastcc i32 @tdo24m_writes(ptr noundef %lcd, ptr noundef nonnull %lcd_qvga_pass_through_tdo24m.sink)
  %call5 = tail call fastcc i32 @tdo24m_writes(ptr noundef %lcd, ptr noundef nonnull @lcd_panel_config)
  %call6 = tail call fastcc i32 @tdo24m_writes(ptr noundef %lcd, ptr noundef nonnull %lcd_qvga_transfer.sink)
  %mode7 = getelementptr inbounds %struct.tdo24m, ptr %lcd, i32 0, i32 8
  %1 = ptrtoint ptr %mode7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mode, ptr %mode7, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdo35s_adj_mode(ptr noundef %lcd, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %mode, label %entry.return_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %lcd_qvga_pass_through_tdo35s.sink = phi ptr [ @lcd_qvga_pass_through_tdo35s, %sw.bb3 ], [ @lcd_vga_pass_through_tdo35s, %entry.sw.epilog_crit_edge ]
  %lcd_qvga_transfer.sink = phi ptr [ @lcd_qvga_transfer, %sw.bb3 ], [ @lcd_vga_transfer_tdo35s, %entry.sw.epilog_crit_edge ]
  %call4 = tail call fastcc i32 @tdo24m_writes(ptr noundef %lcd, ptr noundef nonnull %lcd_qvga_pass_through_tdo35s.sink)
  %call5 = tail call fastcc i32 @tdo24m_writes(ptr noundef %lcd, ptr noundef nonnull @lcd_panel_config)
  %call6 = tail call fastcc i32 @tdo24m_writes(ptr noundef %lcd, ptr noundef nonnull %lcd_qvga_transfer.sink)
  %mode7 = getelementptr inbounds %struct.tdo24m, ptr %lcd, i32 0, i32 8
  %1 = ptrtoint ptr %mode7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mode, ptr %mode7, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_lcd_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tdo24m_writes(ptr noundef %lcd, ptr nocapture noundef readonly %array) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %array, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not73 = icmp eq i32 %1, -1
  br i1 %cmp.not73, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %color_invert = getelementptr inbounds %struct.tdo24m, ptr %lcd, i32 0, i32 6
  %buf27 = getelementptr inbounds %struct.tdo24m, ptr %lcd, i32 0, i32 4
  %len = getelementptr inbounds %struct.tdo24m, ptr %lcd, i32 0, i32 3, i32 2
  %msg = getelementptr inbounds %struct.tdo24m, ptr %lcd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %28, %for.inc.for.body_crit_edge ]
  %p.074 = phi ptr [ %array, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %color_invert to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %color_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %2)
  %cmp1 = icmp eq i32 %2, 33
  %or.cond = select i1 %tobool.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %shr = lshr i32 %2, 30
  %sub = xor i32 %shr, 7
  %shl = shl i32 %2, %sub
  %5 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %shr, label %if.end.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb23
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shr2 = lshr i32 %shl, 8
  %conv = trunc i32 %shr2 to i8
  %6 = ptrtoint ptr %buf27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf27, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %7, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shr9 = lshr i32 %shl, 16
  %conv11 = trunc i32 %shr9 to i8
  %9 = ptrtoint ptr %buf27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf27, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %10, align 1
  %shr14 = lshr i32 %shl, 8
  %conv16 = trunc i32 %shr14 to i8
  %12 = load ptr, ptr %buf27, align 4
  %arrayidx18 = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv16, ptr %arrayidx18, align 1
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shr24 = lshr i32 %shl, 24
  %conv26 = trunc i32 %shr24 to i8
  %14 = ptrtoint ptr %buf27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf27, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv26, ptr %15, align 1
  %shr29 = lshr i32 %shl, 16
  %conv31 = trunc i32 %shr29 to i8
  %17 = load ptr, ptr %buf27, align 4
  %arrayidx33 = getelementptr i8, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv31, ptr %arrayidx33, align 1
  %shr34 = lshr i32 %shl, 8
  %conv36 = trunc i32 %shr34 to i8
  %19 = load ptr, ptr %buf27, align 4
  %arrayidx38 = getelementptr i8, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv36, ptr %arrayidx38, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb8, %sw.bb
  %.sink76 = phi i32 [ 3, %sw.bb23 ], [ 2, %sw.bb8 ], [ 1, %sw.bb ]
  %conv40 = trunc i32 %shl to i8
  %21 = ptrtoint ptr %buf27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf27, align 4
  %arrayidx42 = getelementptr i8, ptr %22, i32 %.sink76
  %23 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv40, ptr %arrayidx42, align 1
  %add = add nuw nsw i32 %shr, 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %len, align 4
  %25 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lcd, align 4
  %call = tail call i32 @spi_sync(ptr noundef %26, ptr noundef %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool43.not = icmp eq i32 %call, 0
  br i1 %tobool43.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr i32, ptr %p.074, i32 1
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %28, -1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %err.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %sw.epilog.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tdo24m_get_power(ptr nocapture noundef readonly %ld) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdo24m_set_power(ptr nocapture noundef readonly %ld, i32 noundef %power) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %power)
  %cmp.i = icmp slt i32 %power, 2
  %power1.i = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i = icmp slt i32 %3, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true4.critedge.i

land.lhs.true.i:                                  ; preds = %entry
  br i1 %cmp2.i, label %land.lhs.true.i.if.then10.i_crit_edge, label %if.then.i

land.lhs.true.i.if.then10.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i.i = tail call fastcc i32 @tdo24m_writes(ptr noundef %1, ptr noundef nonnull @lcd_panel_on) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.tdo24m_power.exit_crit_edge

if.then.i.tdo24m_power.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tdo24m_power.exit

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call fastcc i32 @tdo24m_writes(ptr noundef %1, ptr noundef nonnull @lcd_panel_reset) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.tdo24m_power.exit_crit_edge

if.end.i.i.tdo24m_power.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tdo24m_power.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %adj_mode.i.i = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %adj_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adj_mode.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode.i.i, align 4
  %call5.i.i = tail call i32 %5(ptr noundef %1, i32 noundef %7) #5
  br label %if.end9.i

land.lhs.true4.critedge.i:                        ; preds = %entry
  br i1 %cmp2.i, label %if.then7.i, label %land.lhs.true4.critedge.i.if.then10.i_crit_edge

land.lhs.true4.critedge.i.if.then10.i_crit_edge:  ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then7.i:                                       ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i20.i = tail call fastcc i32 @tdo24m_writes(ptr noundef %1, ptr noundef nonnull @lcd_panel_off) #5
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end4.i.i
  %ret.0.i = phi i32 [ %call.i20.i, %if.then7.i ], [ %call5.i.i, %if.end4.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i, label %if.end9.i.if.then10.i_crit_edge, label %if.end9.i.tdo24m_power.exit_crit_edge

if.end9.i.tdo24m_power.exit_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tdo24m_power.exit

if.end9.i.if.then10.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.end9.i.if.then10.i_crit_edge, %land.lhs.true4.critedge.i.if.then10.i_crit_edge, %land.lhs.true.i.if.then10.i_crit_edge
  %8 = ptrtoint ptr %power1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %power, ptr %power1.i, align 4
  br label %tdo24m_power.exit

tdo24m_power.exit:                                ; preds = %if.then10.i, %if.end9.i.tdo24m_power.exit_crit_edge, %if.end.i.i.tdo24m_power.exit_crit_edge, %if.then.i.tdo24m_power.exit_crit_edge
  %ret.023.i = phi i32 [ 0, %if.then10.i ], [ %ret.0.i, %if.end9.i.tdo24m_power.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.tdo24m_power.exit_crit_edge ], [ %call.i.i, %if.then.i.tdo24m_power.exit_crit_edge ]
  ret i32 %ret.023.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdo24m_set_mode(ptr nocapture noundef readonly %ld, ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %m, i32 0, i32 2
  %2 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %3)
  %switch.selectcmp.case1 = icmp eq i32 %3, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %3)
  %switch.selectcmp.case2 = icmp eq i32 %3, 480
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %4 = zext i1 %switch.selectcmp to i32
  %mode3 = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp4 = icmp eq i32 %6, %4
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %adj_mode = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %adj_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adj_mode, align 4
  %call7 = tail call i32 %8(ptr noundef %1, i32 noundef %4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdo24m_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power1.i = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i = icmp slt i32 %3, 2
  br i1 %cmp2.i, label %if.then7.i, label %entry.if.then10.i_crit_edge

entry.if.then10.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then7.i:                                       ; preds = %entry
  %call.i20.i = tail call fastcc i32 @tdo24m_writes(ptr noundef %1, ptr noundef nonnull @lcd_panel_off) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i, label %if.then7.i.if.then10.i_crit_edge, label %if.then7.i.tdo24m_power.exit_crit_edge

if.then7.i.tdo24m_power.exit_crit_edge:           ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tdo24m_power.exit

if.then7.i.if.then10.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.then7.i.if.then10.i_crit_edge, %entry.if.then10.i_crit_edge
  %4 = ptrtoint ptr %power1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %power1.i, align 4
  br label %tdo24m_power.exit

tdo24m_power.exit:                                ; preds = %if.then10.i, %if.then7.i.tdo24m_power.exit_crit_edge
  %ret.023.i = phi i32 [ 0, %if.then10.i ], [ %call.i20.i, %if.then7.i.tdo24m_power.exit_crit_edge ]
  ret i32 %ret.023.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdo24m_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power1.i = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i = icmp slt i32 %3, 2
  br i1 %cmp2.i, label %entry.if.then10.i_crit_edge, label %if.then.i

entry.if.then10.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call fastcc i32 @tdo24m_writes(ptr noundef %1, ptr noundef nonnull @lcd_panel_on) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.tdo24m_power.exit_crit_edge

if.then.i.tdo24m_power.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tdo24m_power.exit

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call fastcc i32 @tdo24m_writes(ptr noundef %1, ptr noundef nonnull @lcd_panel_reset) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.tdo24m_power.exit_crit_edge

if.end.i.i.tdo24m_power.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tdo24m_power.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %adj_mode.i.i = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %adj_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adj_mode.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.tdo24m, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode.i.i, align 4
  %call5.i.i = tail call i32 %5(ptr noundef %1, i32 noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i.i.if.then10.i_crit_edge, label %if.end4.i.i.tdo24m_power.exit_crit_edge

if.end4.i.i.tdo24m_power.exit_crit_edge:          ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tdo24m_power.exit

if.end4.i.i.if.then10.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.end4.i.i.if.then10.i_crit_edge, %entry.if.then10.i_crit_edge
  %8 = ptrtoint ptr %power1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %power1.i, align 4
  br label %tdo24m_power.exit

tdo24m_power.exit:                                ; preds = %if.then10.i, %if.end4.i.i.tdo24m_power.exit_crit_edge, %if.end.i.i.tdo24m_power.exit_crit_edge, %if.then.i.tdo24m_power.exit_crit_edge
  %ret.023.i = phi i32 [ 0, %if.then10.i ], [ %call5.i.i, %if.end4.i.i.tdo24m_power.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.tdo24m_power.exit_crit_edge ], [ %call.i.i, %if.then.i.tdo24m_power.exit_crit_edge ]
  ret i32 %ret.023.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_tdo24m__303_444_tdo24m_driver_init6, !1, !"__initcall__kmod_tdo24m__303_444_tdo24m_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/tdo24m.c", i32 444, i32 1}
!2 = !{ptr @__exitcall_tdo24m_driver_exit, !1, !"__exitcall_tdo24m_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/tdo24m.c", i32 446, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/tdo24m.c", i32 447, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/tdo24m.c", i32 448, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias308, !11, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/tdo24m.c", i32 449, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/tdo24m.c", i32 436, i32 12}
!14 = !{ptr @tdo24m_driver, !15, !"tdo24m_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/tdo24m.c", i32 434, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/tdo24m.c", i32 383, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tdo24m_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tdo24m_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lcd_vga_pass_through_tdo24m, !25, !"lcd_vga_pass_through_tdo24m", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/tdo24m.c", i32 71, i32 23}
!26 = !{ptr @lcd_panel_config, !27, !"lcd_panel_config", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/tdo24m.c", i32 144, i32 23}
!28 = !{ptr @lcd_vga_transfer_tdo24m, !29, !"lcd_vga_transfer_tdo24m", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/tdo24m.c", i32 89, i32 23}
!30 = !{ptr @lcd_qvga_pass_through_tdo24m, !31, !"lcd_qvga_pass_through_tdo24m", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/tdo24m.c", i32 80, i32 23}
!32 = !{ptr @lcd_qvga_transfer, !33, !"lcd_qvga_transfer", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/tdo24m.c", i32 102, i32 23}
!34 = !{ptr @lcd_vga_pass_through_tdo35s, !35, !"lcd_vga_pass_through_tdo35s", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/tdo24m.c", i32 115, i32 23}
!36 = !{ptr @lcd_vga_transfer_tdo35s, !37, !"lcd_vga_transfer_tdo35s", i1 false, i1 false}
!37 = !{!"../drivers/video/backlight/tdo24m.c", i32 131, i32 23}
!38 = !{ptr @lcd_qvga_pass_through_tdo35s, !39, !"lcd_qvga_pass_through_tdo35s", i1 false, i1 false}
!39 = !{!"../drivers/video/backlight/tdo24m.c", i32 123, i32 23}
!40 = !{ptr @tdo24m_ops, !41, !"tdo24m_ops", i1 false, i1 false}
!41 = !{!"../drivers/video/backlight/tdo24m.c", i32 325, i32 23}
!42 = !{ptr @lcd_panel_on, !43, !"lcd_panel_on", i1 false, i1 false}
!43 = !{!"../drivers/video/backlight/tdo24m.c", i32 55, i32 23}
!44 = !{ptr @lcd_panel_reset, !45, !"lcd_panel_reset", i1 false, i1 false}
!45 = !{!"../drivers/video/backlight/tdo24m.c", i32 47, i32 23}
!46 = !{ptr @lcd_panel_off, !47, !"lcd_panel_off", i1 false, i1 false}
!47 = !{!"../drivers/video/backlight/tdo24m.c", i32 63, i32 23}
!48 = !{ptr @tdo24m_pm_ops, !49, !"tdo24m_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/video/backlight/tdo24m.c", i32 424, i32 8}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
