; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_ra8875.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_ra8875.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fbtft_display = type { i32, i32, i32, i32, i32, %struct.fbtft_ops, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.fbtft_par = type { ptr, ptr, ptr, ptr, ptr, [16 x i32], %struct.anon.85, ptr, i8, %struct.fbtft_ops, %struct.spinlock, i32, i32, %struct.anon.86, ptr, %struct.anon.87, i32, i8, i64, i8, ptr, i8 }
%struct.anon.85 = type { ptr, i32 }
%struct.anon.86 = type { ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.anon.87 = type { %struct.mutex, ptr, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.__va_list = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_ra8875__306_296_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias307 = internal constant [30 x i8] c"fb_ra8875.alias=spi:fb_ra8875\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [35 x i8] c"fb_ra8875.alias=platform:fb_ra8875\00", section ".modinfo", align 1
@__UNIQUE_ID_alias309 = internal constant [27 x i8] c"fb_ra8875.alias=spi:ra8875\00", section ".modinfo", align 1
@__UNIQUE_ID_alias310 = internal constant [32 x i8] c"fb_ra8875.alias=platform:ra8875\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [62 x i8] c"fb_ra8875.description=FB driver for the RA8875 LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author312 = internal constant [24 x i8] c"fb_ra8875.author=Pf@nne\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [47 x i8] c"fb_ra8875.file=drivers/staging/fbtft/fb_ra8875\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [22 x i8] c"fb_ra8875.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fb_ra8875\00", [22 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raio,ra8875\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 0, i32 0, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr @write_spi, ptr null, ptr @write_vmem16_bus8, ptr @write_reg8_bus8, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(len=%zu): \00", [18 x i8] zeroinitializer }, align 32
@__func__.write_spi = private unnamed_addr constant [10 x i8] c"write_spi\00", align 1
@write_spi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.write_spi, ptr @.str.3, i32 31, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: par->spi is unexpectedly NULL\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/fbtft/fb_ra8875.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_spi._entry_ptr = internal global ptr @write_spi._entry, section ".printk_index", align 4
@write_vmem16_bus8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 256, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(offset=%zu, len=%zu)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write_vmem16_bus8\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@write_vmem16_bus8._entry_ptr = internal global ptr @write_vmem16_bus8._entry, section ".printk_index", align 4
@write_vmem16_bus8.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"    to_copy=%zu, remain=%zu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s: \00", [27 x i8] zeroinitializer }, align 32
@__func__.write_reg8_bus8 = private unnamed_addr constant [16 x i8] c"write_reg8_bus8\00", align 1
@write_reg8_bus8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.write_reg8_bus8, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"write() failed and returned %dn\00", [32 x i8] zeroinitializer }, align 32
@write_reg8_bus8._entry_ptr = internal global ptr @write_reg8_bus8._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@write_reg8_bus8._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.write_reg8_bus8, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@write_reg8_bus8._entry_ptr.13 = internal global ptr @write_reg8_bus8._entry.12, section ".printk_index", align 4
@init_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 45, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_display\00", [19 x i8] zeroinitializer }, align 32
@init_display._entry_ptr = internal global ptr @init_display._entry, section ".printk_index", align 4
@init_display._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 49, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"display size %dx%d\0A\00", [44 x i8] zeroinitializer }, align 32
@init_display._entry_ptr.18 = internal global ptr @init_display._entry.16, section ".printk_index", align 4
@init_display._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"display size is not supported!!\00", [32 x i8] zeroinitializer }, align 32
@init_display._entry_ptr.21 = internal global ptr @init_display._entry.19, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 320, i64 480, i64 640, i64 800]
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 296, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 285, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 26, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 30, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 255, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 268, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 204, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 214, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 232, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 44, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 46, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [37 x i8] c"../drivers/staging/fbtft/fb_ra8875.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 153, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_alias310, ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_ra8875__306_296_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @init_display._entry, ptr @init_display._entry.16, ptr @init_display._entry.19, ptr @init_display._entry_ptr, ptr @init_display._entry_ptr.18, ptr @init_display._entry_ptr.21, ptr @write_reg8_bus8._entry, ptr @write_reg8_bus8._entry.12, ptr @write_reg8_bus8._entry_ptr, ptr @write_reg8_bus8._entry_ptr.13, ptr @write_spi._entry, ptr @write_spi._entry_ptr, ptr @write_vmem16_bus8._entry, ptr @write_vmem16_bus8._entry_ptr, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_spi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem16_bus8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_reg8_bus8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_reg8_bus8._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_display._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_display._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fbtft_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @fbtft_driver_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @fbtft_driver_spi_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fbtft_driver_platform_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef %spi, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fbtft_remove_common(ptr noundef %spi, ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_probe_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_spi(ptr nocapture noundef readonly %par, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %t = alloca %struct.spi_transfer, align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #7
  %0 = getelementptr inbounds i8, ptr %t, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf, ptr %t, align 4
  %len1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %len1, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1000000, ptr %speed_hz, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %5 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug, align 8
  %and = and i32 %6, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !75

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ...) @fbtft_dbg_hex(ptr noundef %10, i32 noundef 1, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.write_spi, i32 noundef %len) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %11 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %par, align 8
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %info9 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %13 = ptrtoint ptr %info9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info9, align 8
  %device10 = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %device10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.write_spi) #10
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %17 = getelementptr inbounds i8, ptr %m, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.spi_message_add_tail.exit_crit_edge

if.end11.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end11.spi_message_add_tail.exit_crit_edge
  %27 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %par, align 8
  %call = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %m) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_message_add_tail.exit, %do.end8
  %retval.0 = phi i32 [ %call, %spi_message_add_tail.exit ], [ -1, %do.end8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_vmem16_bus8(ptr noundef %par, i32 noundef %offset, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !75

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %offset, i32 noundef %len) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %info6 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %6 = ptrtoint ptr %info6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info6, align 8
  %8 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %txbuf = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 6
  %len7 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len7, align 4
  %div876 = lshr i32 %12, 1
  %13 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %txbuf, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 1
  %sub = add nsw i32 %div876, -2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %14, align 1
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %tobool13.not80 = icmp ult i32 %len, 2
  br i1 %tobool13.not80, label %do.end5.cleanup_crit_edge, label %while.body.preheader

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.preheader:                             ; preds = %do.end5
  %add.ptr = getelementptr i8, ptr %10, i32 %offset
  %div75 = lshr i32 %len, 1
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.preheader
  %vmem16.083 = phi ptr [ %add.ptr32, %if.end38.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %remain.081 = phi i32 [ %sub39, %if.end38.while.body_crit_edge ], [ %div75, %while.body.preheader ]
  %16 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %remain.081)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_vmem16_bus8.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_vmem16_bus8, %if.then23)) #7
          to label %do.end29 [label %if.then23], !srcloc !76

if.then23:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %info6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info6, align 8
  %device25 = getelementptr inbounds %struct.fb_info, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device25, align 4
  %sub26 = sub i32 %remain.081, %16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_vmem16_bus8.__UNIQUE_ID_ddebug305, ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef %16, i32 noundef %sub26) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3078.not = icmp eq i32 %16, 0
  br i1 %cmp3078.not, label %do.end29.for.end_crit_edge, label %do.end29.for.body_crit_edge

do.end29.for.body_crit_edge:                      ; preds = %do.end29
  br label %for.body

do.end29.for.end_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end29.for.body_crit_edge
  %i.079 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end29.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %vmem16.083, i32 %i.079
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 2
  %arrayidx31 = getelementptr i16, ptr %add.ptr10, i32 %i.079
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx31, align 2
  %inc = add nuw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end29.for.end_crit_edge
  %24 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fbtftops, align 4
  %26 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %txbuf, align 4
  %mul = shl i32 %16, 1
  %add = or i32 %mul, 1
  %call35 = tail call i32 %25(ptr noundef %par, ptr noundef %27, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %for.end.cleanup_crit_edge, label %if.end38

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %for.end
  %add.ptr32 = getelementptr i16, ptr %vmem16.083, i32 %16
  %sub39 = sub i32 %remain.081, %16
  %tobool13.not = icmp eq i32 %sub39, 0
  br i1 %tobool13.not, label %if.end38.cleanup_crit_edge, label %if.end38.while.body_crit_edge

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end38.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end5.cleanup_crit_edge ], [ %call35, %if.end38.cleanup_crit_edge ], [ %call35, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_reg8_bus8(ptr noundef %par, i32 noundef %len, ...) #2 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !77
  %buf1 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 7
  %1 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buf1, align 4
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %3 = ptrtoint ptr %fbtftops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @write_spi, ptr %fbtftops, align 4
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then, !prof !75

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp89 = icmp sgt i32 %len, 0
  br i1 %cmp89, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %argp.cur = load ptr, ptr %args, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %args, align 4
  %7 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %argp.cur, align 4
  %conv = trunc i32 %8 to i8
  %arrayidx = getelementptr i8, ptr %2, i32 %i.090
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 8
  %and5 = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %for.end.if.end14_crit_edge, label %if.then13, !prof !75

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  call void (ptr, i32, ptr, i32, ptr, ...) @fbtft_dbg_hex(ptr noundef %15, i32 noundef 1, ptr noundef %2, i32 noundef %len, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.write_reg8_bus8) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %2, align 1
  %17 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %17)
  %argp.cur15 = load ptr, ptr %args, align 4
  %argp.next16 = getelementptr inbounds i8, ptr %argp.cur15, i32 4
  store ptr %argp.next16, ptr %args, align 4
  %18 = ptrtoint ptr %argp.cur15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %argp.cur15, align 4
  %conv17 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv17, ptr %incdec.ptr, align 1
  %21 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fbtftops, align 4
  %23 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf1, align 4
  %call = call i32 %22(ptr noundef %par, ptr noundef %24, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp21 = icmp slt i32 %call, 0
  br i1 %cmp21, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.va_end(ptr nonnull %args)
  %info27 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %25 = ptrtoint ptr %info27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info27, align 8
  %device28 = getelementptr inbounds %struct.fb_info, ptr %26, i32 0, i32 21
  %27 = ptrtoint ptr %device28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %call) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end14
  %dec = add i32 %len, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 21474800) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool30.not = icmp eq i32 %dec, 0
  br i1 %tobool30.not, label %if.end29.if.end53_crit_edge, label %if.then31

if.end29.if.end53_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then31:                                        ; preds = %if.end29
  %30 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %31, align 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then31
  %.pn93 = phi ptr [ %31, %if.then31 ], [ %buf.0, %while.body.while.body_crit_edge ]
  %i.192 = phi i32 [ %dec, %if.then31 ], [ %dec34, %while.body.while.body_crit_edge ]
  %dec34 = add i32 %i.192, -1
  %buf.0 = getelementptr i8, ptr %.pn93, i32 1
  %33 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %33)
  %argp.cur36 = load ptr, ptr %args, align 4
  %argp.next37 = getelementptr inbounds i8, ptr %argp.cur36, i32 4
  store ptr %argp.next37, ptr %args, align 4
  %34 = ptrtoint ptr %argp.cur36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %argp.cur36, align 4
  %conv38 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %buf.0 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv38, ptr %buf.0, align 1
  %tobool35.not = icmp eq i32 %dec34, 0
  br i1 %tobool35.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  %37 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fbtftops, align 4
  %39 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf1, align 4
  %call43 = call i32 %38(ptr noundef %par, ptr noundef %40, i32 noundef %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %while.end.if.end53_crit_edge

while.end.if.end53_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then46:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.va_end(ptr nonnull %args)
  %info50 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %41 = ptrtoint ptr %info50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %info50, align 8
  %device51 = getelementptr inbounds %struct.fb_info, ptr %42, i32 0, i32 21
  %43 = ptrtoint ptr %device51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device51, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.11, i32 noundef %call43) #10
  br label %cleanup

if.end53:                                         ; preds = %while.end.if.end53_crit_edge, %if.end29.if.end53_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  %45 = ptrtoint ptr %fbtftops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @fbtft_write_spi, ptr %fbtftops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 21474800) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then46, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_addr_win(ptr noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_register, align 4
  %and = and i32 %xs, 255
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 2, i32 noundef 48, i32 noundef %and) #7
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  %and3 = lshr i32 %xs, 8
  %4 = and i32 %and3, 255
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 2, i32 noundef 49, i32 noundef %4) #7
  %5 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_register, align 4
  %and6 = and i32 %ys, 255
  tail call void (ptr, i32, ...) %6(ptr noundef %par, i32 noundef 2, i32 noundef 50, i32 noundef %and6) #7
  %7 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_register, align 4
  %and9 = lshr i32 %ys, 8
  %9 = and i32 %and9, 255
  tail call void (ptr, i32, ...) %8(ptr noundef %par, i32 noundef 2, i32 noundef 51, i32 noundef %9) #7
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  %add = add i32 %xe, %xs
  %and13 = and i32 %add, 255
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 2, i32 noundef 52, i32 noundef %and13) #7
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  %and17 = lshr i32 %add, 8
  %14 = and i32 %and17, 255
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 2, i32 noundef 53, i32 noundef %14) #7
  %15 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_register, align 4
  %add21 = add i32 %ye, %ys
  %and22 = and i32 %add21, 255
  tail call void (ptr, i32, ...) %16(ptr noundef %par, i32 noundef 2, i32 noundef 54, i32 noundef %and22) #7
  %17 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register, align 4
  %and26 = lshr i32 %add21, 8
  %19 = and i32 %and26, 255
  tail call void (ptr, i32, ...) %18(ptr noundef %par, i32 noundef 2, i32 noundef 55, i32 noundef %19) #7
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 2, i32 noundef 70, i32 noundef %and) #7
  %22 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register, align 4
  %and34 = and i32 %and3, 3
  tail call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 2, i32 noundef 71, i32 noundef %and34) #7
  %24 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %25(ptr noundef %par, i32 noundef 2, i32 noundef 72, i32 noundef %and6) #7
  %26 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register, align 4
  %and41 = and i32 %and9, 1
  tail call void (ptr, i32, ...) %27(ptr noundef %par, i32 noundef 2, i32 noundef 73, i32 noundef %and41) #7
  %28 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %29(ptr noundef %par, i32 noundef 1, i32 noundef 2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dc = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #7
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  %and = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end, !prof !75

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 8
  %and7 = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body5.do.end24_crit_edge, label %do.end17, !prof !75

do.body5.do.end24_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.end17:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %info18 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %10 = ptrtoint ptr %info18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info18, align 8
  %device19 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device19, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.17, i32 noundef %15, i32 noundef %17) #10
  br label %do.end24

do.end24:                                         ; preds = %do.end17, %do.body5.do.end24_crit_edge
  %reset = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 5
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset, align 4
  tail call void %19(ptr noundef %par) #7
  %info25 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %20 = ptrtoint ptr %info25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info25, align 8
  %var26 = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %var26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %var26, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %do.end24.do.end213_crit_edge [
    i32 320, label %land.lhs.true
    i32 480, label %land.lhs.true69
    i32 640, label %land.lhs.true118
    i32 800, label %land.lhs.true167
  ]

do.end24.do.end213_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end213

land.lhs.true:                                    ; preds = %do.end24
  %yres30 = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %yres30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %yres30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %26)
  %cmp31 = icmp eq i32 %26, 240
  br i1 %cmp31, label %land.lhs.true.if.end219_crit_edge, label %land.lhs.true.do.end213_crit_edge

land.lhs.true.do.end213_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end213

land.lhs.true.if.end219_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

land.lhs.true69:                                  ; preds = %do.end24
  %yres72 = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %yres72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yres72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %28)
  %cmp73 = icmp eq i32 %28, 272
  br i1 %cmp73, label %land.lhs.true69.if.end219_crit_edge, label %land.lhs.true69.do.end213_crit_edge

land.lhs.true69.do.end213_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end213

land.lhs.true69.if.end219_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

land.lhs.true118:                                 ; preds = %do.end24
  %yres121 = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %yres121 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %yres121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %30)
  %cmp122 = icmp eq i32 %30, 480
  br i1 %cmp122, label %land.lhs.true118.if.end219_crit_edge, label %land.lhs.true118.do.end213_crit_edge

land.lhs.true118.do.end213_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end213

land.lhs.true118.if.end219_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

land.lhs.true167:                                 ; preds = %do.end24
  %yres170 = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %yres170 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %yres170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %32)
  %cmp171 = icmp eq i32 %32, 480
  br i1 %cmp171, label %land.lhs.true167.if.end219_crit_edge, label %land.lhs.true167.do.end213_crit_edge

land.lhs.true167.do.end213_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end213

land.lhs.true167.if.end219_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

do.end213:                                        ; preds = %land.lhs.true167.do.end213_crit_edge, %land.lhs.true118.do.end213_crit_edge, %land.lhs.true69.do.end213_crit_edge, %land.lhs.true.do.end213_crit_edge, %do.end24.do.end213_crit_edge
  %device215 = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 21
  %33 = ptrtoint ptr %device215 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device215, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.20) #10
  br label %return

if.end219:                                        ; preds = %land.lhs.true167.if.end219_crit_edge, %land.lhs.true118.if.end219_crit_edge, %land.lhs.true69.if.end219_crit_edge, %land.lhs.true.if.end219_crit_edge
  %.sink448 = phi i32 [ 10, %land.lhs.true.if.end219_crit_edge ], [ 10, %land.lhs.true69.if.end219_crit_edge ], [ 11, %land.lhs.true118.if.end219_crit_edge ], [ 11, %land.lhs.true167.if.end219_crit_edge ]
  %.sink431 = phi i32 [ 3, %land.lhs.true.if.end219_crit_edge ], [ 130, %land.lhs.true69.if.end219_crit_edge ], [ 1, %land.lhs.true118.if.end219_crit_edge ], [ 129, %land.lhs.true167.if.end219_crit_edge ]
  %.sink427 = phi i32 [ 39, %land.lhs.true.if.end219_crit_edge ], [ 59, %land.lhs.true69.if.end219_crit_edge ], [ 79, %land.lhs.true118.if.end219_crit_edge ], [ 99, %land.lhs.true167.if.end219_crit_edge ]
  %.sink424 = phi i32 [ 0, %land.lhs.true.if.end219_crit_edge ], [ 0, %land.lhs.true69.if.end219_crit_edge ], [ 5, %land.lhs.true118.if.end219_crit_edge ], [ 3, %land.lhs.true167.if.end219_crit_edge ]
  %.sink421 = phi i32 [ 5, %land.lhs.true.if.end219_crit_edge ], [ 1, %land.lhs.true69.if.end219_crit_edge ], [ 15, %land.lhs.true118.if.end219_crit_edge ], [ 3, %land.lhs.true167.if.end219_crit_edge ]
  %.sink418 = phi i32 [ 4, %land.lhs.true.if.end219_crit_edge ], [ 0, %land.lhs.true69.if.end219_crit_edge ], [ 1, %land.lhs.true118.if.end219_crit_edge ], [ 2, %land.lhs.true167.if.end219_crit_edge ]
  %.sink415 = phi i32 [ 3, %land.lhs.true.if.end219_crit_edge ], [ 5, %land.lhs.true69.if.end219_crit_edge ], [ 0, %land.lhs.true118.if.end219_crit_edge ], [ 0, %land.lhs.true167.if.end219_crit_edge ]
  %.sink412 = phi i32 [ 239, %land.lhs.true.if.end219_crit_edge ], [ 15, %land.lhs.true69.if.end219_crit_edge ], [ 223, %land.lhs.true118.if.end219_crit_edge ], [ 223, %land.lhs.true167.if.end219_crit_edge ]
  %.sink409 = phi i32 [ 0, %land.lhs.true.if.end219_crit_edge ], [ 1, %land.lhs.true69.if.end219_crit_edge ], [ 1, %land.lhs.true118.if.end219_crit_edge ], [ 1, %land.lhs.true167.if.end219_crit_edge ]
  %.sink406 = phi i32 [ 5, %land.lhs.true.if.end219_crit_edge ], [ 2, %land.lhs.true69.if.end219_crit_edge ], [ 10, %land.lhs.true118.if.end219_crit_edge ], [ 20, %land.lhs.true167.if.end219_crit_edge ]
  %.sink401 = phi i32 [ 14, %land.lhs.true.if.end219_crit_edge ], [ 7, %land.lhs.true69.if.end219_crit_edge ], [ 14, %land.lhs.true118.if.end219_crit_edge ], [ 6, %land.lhs.true167.if.end219_crit_edge ]
  %.sink = phi i32 [ 2, %land.lhs.true.if.end219_crit_edge ], [ 9, %land.lhs.true69.if.end219_crit_edge ], [ 1, %land.lhs.true118.if.end219_crit_edge ], [ 1, %land.lhs.true167.if.end219_crit_edge ]
  %write_register76 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %35 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %36(ptr noundef %par, i32 noundef 2, i32 noundef 136, i32 noundef %.sink448) #7
  %37 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %38(ptr noundef %par, i32 noundef 2, i32 noundef 137, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #7
  %49 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %50(ptr noundef %par, i32 noundef 2, i32 noundef 16, i32 noundef 12) #7
  %51 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %52(ptr noundef %par, i32 noundef 2, i32 noundef 4, i32 noundef %.sink431) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #7
  %54 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %55(ptr noundef %par, i32 noundef 2, i32 noundef 20, i32 noundef %.sink427) #7
  %56 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %57(ptr noundef %par, i32 noundef 2, i32 noundef 21, i32 noundef %.sink424) #7
  %58 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %59(ptr noundef %par, i32 noundef 2, i32 noundef 22, i32 noundef %.sink421) #7
  %60 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %61(ptr noundef %par, i32 noundef 2, i32 noundef 23, i32 noundef %.sink418) #7
  %62 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %63(ptr noundef %par, i32 noundef 2, i32 noundef 24, i32 noundef %.sink415) #7
  %64 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %65(ptr noundef %par, i32 noundef 2, i32 noundef 25, i32 noundef %.sink412) #7
  %66 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %67(ptr noundef %par, i32 noundef 2, i32 noundef 26, i32 noundef %.sink409) #7
  %68 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %69(ptr noundef %par, i32 noundef 2, i32 noundef 27, i32 noundef %.sink406) #7
  %70 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %71(ptr noundef %par, i32 noundef 2, i32 noundef 28, i32 noundef 0) #7
  %72 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %73(ptr noundef %par, i32 noundef 2, i32 noundef 29, i32 noundef %.sink401) #7
  %74 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %75(ptr noundef %par, i32 noundef 2, i32 noundef 30, i32 noundef 0) #7
  %76 = ptrtoint ptr %write_register76 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write_register76, align 4
  tail call void (ptr, i32, ...) %77(ptr noundef %par, i32 noundef 2, i32 noundef 31, i32 noundef %.sink) #7
  %write_register221 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %78 = ptrtoint ptr %write_register221 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_register221, align 4
  tail call void (ptr, i32, ...) %79(ptr noundef %par, i32 noundef 2, i32 noundef 138, i32 noundef 129) #7
  %80 = ptrtoint ptr %write_register221 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_register221, align 4
  tail call void (ptr, i32, ...) %81(ptr noundef %par, i32 noundef 2, i32 noundef 139, i32 noundef 255) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748000) #7
  %92 = ptrtoint ptr %write_register221 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write_register221, align 4
  tail call void (ptr, i32, ...) %93(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 128) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #7
  br label %return

return:                                           ; preds = %if.end219, %do.end213
  %retval.0 = phi i32 [ -1, %do.end213 ], [ 0, %if.end219 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_dbg_hex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_write_spi(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_remove_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef null, ptr noundef %pdev) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @fbtft_remove_common(ptr noundef %dev, ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_fb_ra8875__306_296_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_ra8875__306_296_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 296, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias307, !4, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 298, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias308, !6, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 299, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias309, !8, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 300, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias310, !10, !"__UNIQUE_ID_alias310", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 301, i32 1}
!11 = !{ptr @__UNIQUE_ID_description311, !12, !"__UNIQUE_ID_description311", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 303, i32 1}
!13 = !{ptr @__UNIQUE_ID_author312, !14, !"__UNIQUE_ID_author312", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 304, i32 1}
!15 = !{ptr @__UNIQUE_ID_file313, !16, !"__UNIQUE_ID_file313", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 305, i32 1}
!17 = !{ptr @__UNIQUE_ID_license314, !16, !"__UNIQUE_ID_license314", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @display, !21, !"display", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 285, i32 29}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 26, i32 2}
!24 = !{ptr @__func__.write_spi, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 30, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @write_spi._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @write_spi._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 255, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @write_vmem16_bus8._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @write_vmem16_bus8._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 268, i32 3}
!40 = !{ptr @write_vmem16_bus8.__UNIQUE_ID_ddebug305, !39, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 204, i32 3}
!43 = !{ptr @__func__.write_reg8_bus8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 214, i32 3}
!46 = !{ptr @write_reg8_bus8._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @write_reg8_bus8._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @write_reg8_bus8._entry.12, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 232, i32 4}
!50 = !{ptr @write_reg8_bus8._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 44, i32 2}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @init_display._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @init_display._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 46, i32 2}
!58 = !{ptr @init_display._entry.16, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @init_display._entry_ptr.18, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/fbtft/fb_ra8875.c", i32 153, i32 3}
!62 = !{ptr @init_display._entry.19, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @init_display._entry_ptr.21, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!65 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2148959035, i64 2148959040, i64 2148959053, i64 2148959097, i64 2148959131, i64 2148959152}
!77 = !{!"auto-init"}
