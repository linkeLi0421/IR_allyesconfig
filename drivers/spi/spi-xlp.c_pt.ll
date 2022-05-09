; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-xlp.c_pt.bc'
source_filename = "../drivers/spi/spi-xlp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.xlp_spi_priv = type { %struct.device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.completion }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_xlp__238_445_xlp_spi_driver_init6 = internal global ptr @xlp_spi_driver_init, section ".initcall6.init", align 4
@xlp_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xlp_spi_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xlp_spi_driver_exit = internal global ptr @xlp_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [62 x i8] c"spi_xlp.author=Kamlakant Patel <kamlakant.patel@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [55 x i8] c"spi_xlp.description=Netlogic XLP SPI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [33 x i8] c"spi_xlp.file=drivers/spi/spi-xlp\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [23 x i8] c"spi_xlp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xlp-spi\00", [24 x i8] zeroinitializer }, align 32
@xlp_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xlp_spi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/spi/spi-xlp.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xlp_spi_probe._entry_ptr = internal global ptr @xlp_spi_probe._entry, section ".printk_index", align 4
@xlp_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not get spi clock\0A\00", [39 x i8] zeroinitializer }, align 32
@xlp_spi_probe._entry_ptr.8 = internal global ptr @xlp_spi_probe._entry.6, section ".printk_index", align 4
@xlp_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not alloc master\0A\00", [40 x i8] zeroinitializer }, align 32
@xlp_spi_probe._entry_ptr.11 = internal global ptr @xlp_spi_probe._entry.9, section ".printk_index", align 4
@xlp_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"spi register master failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@xlp_spi_probe._entry_ptr.14 = internal global ptr @xlp_spi_probe._entry.12, section ".printk_index", align 4
@xlp_spi_xfer_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xfer timedout!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xlp_spi_xfer_block\00", [45 x i8] zeroinitializer }, align 32
@xlp_spi_xfer_block._entry_ptr = internal global ptr @xlp_spi_xfer_block._entry, section ".printk_index", align 4
@xlp_spi_xfer_block._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Over/Underflow rx %d tx %d xfer %d!\0A\00", [59 x i8] zeroinitializer }, align 32
@xlp_spi_xfer_block._entry_ptr.19 = internal global ptr @xlp_spi_xfer_block._entry.17, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"xlp_spi_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 438, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 441, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 389, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 395, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 403, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 421, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 307, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private constant [25 x i8] c"../drivers/spi/spi-xlp.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 311, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 87, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_xlp_spi_driver_exit, ptr @__initcall__kmod_spi_xlp__238_445_xlp_spi_driver_init6, ptr @xlp_spi_driver_exit, ptr @xlp_spi_probe._entry, ptr @xlp_spi_probe._entry.12, ptr @xlp_spi_probe._entry.6, ptr @xlp_spi_probe._entry.9, ptr @xlp_spi_probe._entry_ptr, ptr @xlp_spi_probe._entry_ptr.11, ptr @xlp_spi_probe._entry_ptr.14, ptr @xlp_spi_probe._entry_ptr.8, ptr @xlp_spi_xfer_block._entry, ptr @xlp_spi_xfer_block._entry.17, ptr @xlp_spi_xfer_block._entry_ptr, ptr @xlp_spi_xfer_block._entry_ptr.19, ptr @xlp_spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @init_completion.__key, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp_spi_xfer_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp_spi_xfer_block._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xlp_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xlp_spi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xlp_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @xlp_spi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlp_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1024, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.xlp_spi_priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call.i90 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call8, ptr noundef nonnull @xlp_spi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool13.not = icmp eq i32 %call.i90, 0
  br i1 %tobool13.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call8) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %cmp.i91 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  %4 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %call27 = tail call i32 @clk_get_rate(ptr noundef %call18) #5
  %spi_clk = getelementptr inbounds %struct.xlp_spi_priv, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %spi_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call27, ptr %spi_clk, align 8
  %call.i92 = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext false) #5
  %tobool30.not = icmp eq ptr %call.i92, null
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i92, i32 0, i32 2
  %6 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %bus_num, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i92, i32 0, i32 3
  %7 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %num_chipselect, align 2
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i92, i32 0, i32 5
  %8 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %mode_bits, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i92, i32 0, i32 20
  %9 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xlp_spi_setup, ptr %setup, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i92, i32 0, i32 51
  %10 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xlp_spi_transfer_one, ptr %transfer_one, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %of_node39 = getelementptr inbounds %struct.device, ptr %call.i92, i32 0, i32 27
  %13 = ptrtoint ptr %of_node39 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %of_node39, align 8
  %done = getelementptr inbounds %struct.xlp_spi_priv, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.xlp_spi_priv, ptr %call.i, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i92, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %19, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 33554432) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %21, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 67108864) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add.ptr.i.3.i = getelementptr i8, ptr %23, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i, i32 134217728) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %25, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 65536) #5, !srcloc !56
  %call41 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i92) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end36.cleanup_crit_edge, label %spi_controller_put.exit

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

spi_controller_put.exit:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  tail call void @put_device(ptr noundef nonnull %call.i92) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end36.cleanup_crit_edge, %do.end34, %do.end23, %do.end, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call.i90, %do.end ], [ %4, %do.end23 ], [ %call41, %spi_controller_put.exit ], [ -12, %do.end34 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlp_spi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cs = getelementptr inbounds %struct.xlp_spi_priv, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cs, align 4
  %base.i = getelementptr inbounds %struct.xlp_spi_priv, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %mul.i = shl i32 %1, 6
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !57
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %and = and i32 %5, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %tx_len = getelementptr inbounds %struct.xlp_spi_priv, ptr %dev_id, i32 0, i32 4
  %6 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  %8 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cs, align 4
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 24
  %mul.i.i = shl i32 %9, 6
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %13 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not37.i = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp38.i = icmp sgt i32 %12, -1
  %or.cond39.i = select i1 %tobool.not37.i, i1 %cmp38.i, i1 false
  br i1 %or.cond39.i, label %while.body.lr.ph.i, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.lr.ph.i:                               ; preds = %if.then5
  %15 = lshr i32 %12, 28
  %tx_buf.i = getelementptr inbounds %struct.xlp_spi_priv, ptr %dev_id, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %16 = phi i32 [ %14, %while.body.lr.ph.i ], [ %sub6.i, %for.end.i.while.body.i_crit_edge ]
  %txfifo_cnt.040.i = phi i32 [ %15, %while.body.lr.ph.i ], [ %inc8.i, %for.end.i.while.body.i_crit_edge ]
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 4) #5
  %i.032.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.032.i)
  %cmp333.i = icmp sgt i32 %i.032.i, -1
  br i1 %cmp333.i, label %for.body.lr.ph.i, label %while.body.i.for.end.i_crit_edge

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.body.i
  %18 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_buf.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ %i.032.i, %for.body.lr.ph.i ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %tx_data.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %j.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %19, i32 %i.036.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %21 to i32
  %mul.i46 = shl i32 %j.034.i, 3
  %shl.i = shl i32 %conv.i, %mul.i46
  %or.i = or i32 %shl.i, %tx_data.035.i
  %inc.i = add nuw i32 %j.034.i, 1
  %i.0.i = add i32 %i.036.i, -1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %tx_data.0.lcssa.i = phi i32 [ 0, %while.body.i.for.end.i_crit_edge ], [ %or.i, %for.body.i.for.end.i_crit_edge ]
  %22 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %tx_data.0.lcssa.i) #5
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %26, i32 28
  %mul.i30.i = shl i32 %23, 6
  %add.ptr1.i31.i = getelementptr i8, ptr %add.ptr.i29.i, i32 %mul.i30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i31.i, i32 %24) #5, !srcloc !56
  %27 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_len, align 4
  %sub6.i = sub i32 %28, %17
  store i32 %sub6.i, ptr %tx_len, align 4
  %29 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_buf.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %30, i32 %17
  store ptr %add.ptr.i47, ptr %tx_buf.i, align 4
  %inc8.i = add nuw nsw i32 %txfifo_cnt.040.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %tobool.not.i = icmp ne i32 %sub6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %txfifo_cnt.040.i)
  %cmp.i = icmp ult i32 %txfifo_cnt.040.i, 7
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %for.end.i.while.body.i_crit_edge, label %for.end.i.if.end6_crit_edge

for.end.i.if.end6_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end6:                                          ; preds = %for.end.i.if.end6_crit_edge, %if.then5.if.end6_crit_edge, %if.then3.if.end6_crit_edge
  %and7 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %txerrors = getelementptr inbounds %struct.xlp_spi_priv, ptr %dev_id, i32 0, i32 6
  %31 = ptrtoint ptr %txerrors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txerrors, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %txerrors, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %and12 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end23_crit_edge, label %if.then14

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then14:                                        ; preds = %if.end11
  %rx_len = getelementptr inbounds %struct.xlp_spi_priv, ptr %dev_id, i32 0, i32 5
  %33 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool15.not = icmp eq i32 %34, 0
  br i1 %tobool15.not, label %if.then14.if.end17_crit_edge, label %if.then16

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then16:                                        ; preds = %if.then14
  %35 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cs, align 4
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i50 = getelementptr i8, ptr %38, i32 24
  %mul.i.i51 = shl i32 %36, 6
  %add.ptr1.i.i52 = getelementptr i8, ptr %add.ptr.i.i50, i32 %mul.i.i51
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i52) #5, !srcloc !57
  %40 = lshr i32 %39, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %and.i = and i32 %40, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not33.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not33.i, label %if.then16.if.end17_crit_edge, label %while.body.lr.ph.i53

if.then16.if.end17_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

while.body.lr.ph.i53:                             ; preds = %if.then16
  %rx_buf.i = getelementptr inbounds %struct.xlp_spi_priv, ptr %dev_id, i32 0, i32 3
  br label %while.body.i54

while.body.i54:                                   ; preds = %for.end.i66.while.body.i54_crit_edge, %while.body.lr.ph.i53
  %rxfifo_cnt.034.i = phi i32 [ %and.i, %while.body.lr.ph.i53 ], [ %dec8.i, %for.end.i66.while.body.i54_crit_edge ]
  %41 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cs, align 4
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %44, i32 32
  %mul.i27.i = shl i32 %42, 6
  %add.ptr1.i28.i = getelementptr i8, ptr %add.ptr.i26.i, i32 %mul.i27.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i28.i) #5, !srcloc !57
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %47 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_len, align 8
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 4) #5
  %i.029.i = add i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.029.i)
  %cmp330.i = icmp sgt i32 %i.029.i, -1
  br i1 %cmp330.i, label %while.body.i54.for.body.i62_crit_edge, label %while.body.i54.for.end.i66_crit_edge

while.body.i54.for.end.i66_crit_edge:             ; preds = %while.body.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i66

while.body.i54.for.body.i62_crit_edge:            ; preds = %while.body.i54
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.body.i62.for.body.i62_crit_edge, %while.body.i54.for.body.i62_crit_edge
  %i.032.i55 = phi i32 [ %i.0.i60, %for.body.i62.for.body.i62_crit_edge ], [ %i.029.i, %while.body.i54.for.body.i62_crit_edge ]
  %j.031.i = phi i32 [ %inc.i59, %for.body.i62.for.body.i62_crit_edge ], [ 0, %while.body.i54.for.body.i62_crit_edge ]
  %mul.i56 = shl i32 %j.031.i, 3
  %shr.i = lshr i32 %46, %mul.i56
  %conv.i57 = trunc i32 %shr.i to i8
  %50 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_buf.i, align 8
  %arrayidx.i58 = getelementptr i8, ptr %51, i32 %i.032.i55
  %52 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i57, ptr %arrayidx.i58, align 1
  %inc.i59 = add nuw i32 %j.031.i, 1
  %i.0.i60 = add i32 %i.032.i55, -1
  %exitcond.not.i61 = icmp eq i32 %inc.i59, %49
  br i1 %exitcond.not.i61, label %for.body.i62.for.end.i66_crit_edge, label %for.body.i62.for.body.i62_crit_edge

for.body.i62.for.body.i62_crit_edge:              ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i62

for.body.i62.for.end.i66_crit_edge:               ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i66

for.end.i66:                                      ; preds = %for.body.i62.for.end.i66_crit_edge, %while.body.i54.for.end.i66_crit_edge
  %53 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_len, align 8
  %sub6.i63 = sub i32 %54, %49
  store i32 %sub6.i63, ptr %rx_len, align 8
  %55 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buf.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %56, i32 %49
  store ptr %add.ptr.i64, ptr %rx_buf.i, align 8
  %dec8.i = add nsw i32 %rxfifo_cnt.034.i, -1
  %tobool.not.i65 = icmp eq i32 %dec8.i, 0
  br i1 %tobool.not.i65, label %for.end.i66.if.end17_crit_edge, label %for.end.i66.while.body.i54_crit_edge

for.end.i66.while.body.i54_crit_edge:             ; preds = %for.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i54

for.end.i66.if.end17_crit_edge:                   ; preds = %for.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end17:                                         ; preds = %for.end.i66.if.end17_crit_edge, %if.then16.if.end17_crit_edge, %if.then14.if.end17_crit_edge
  %and18 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %rxerrors = getelementptr inbounds %struct.xlp_spi_priv, ptr %dev_id, i32 0, i32 7
  %57 = ptrtoint ptr %rxerrors to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rxerrors, align 8
  %inc21 = add i32 %58, 1
  store i32 %inc21, ptr %rxerrors, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %59 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %61 = shl nuw nsw i32 %and, 24
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %63, i32 12
  %mul.i69 = shl i32 %60, 6
  %add.ptr1.i70 = getelementptr i8, ptr %add.ptr.i68, i32 %mul.i69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i70, i32 %61) #5, !srcloc !56
  %and25 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.then27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %done = getelementptr inbounds %struct.xlp_spi_priv, ptr %dev_id, i32 0, i32 11
  tail call void @complete(ptr noundef %done) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then27 ], [ 1, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlp_spi_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %5 to i32
  %spi_clk = getelementptr inbounds %struct.xlp_spi_priv, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spi_clk, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %8 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_speed_hz, align 8
  %add = add i32 %7, -1
  %sub = add i32 %add, %9
  %div = udiv i32 %sub, %9
  %10 = tail call i32 @llvm.umax.i32(i32 %div, i32 4)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 65535)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %base.i = getelementptr inbounds %struct.xlp_spi_priv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  %mul.i = shl nuw nsw i32 %conv, 6
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %12) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 8
  %add.ptr.i70 = getelementptr i8, ptr %16, i32 20
  %add.ptr1.i72 = getelementptr i8, ptr %add.ptr.i70, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i72, i32 -2147483648) #5, !srcloc !56
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  %add.ptr1.i75 = getelementptr i8, ptr %18, i32 %mul.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i75) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 8
  %and = and i32 %21, 1
  %and13 = and i32 %21, 2
  %and21 = and i32 %21, 4
  %22 = and i32 %19, -117702657
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %and29 = shl i32 %21, 7
  %24 = and i32 %and29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp37 = icmp eq i32 %11, 4
  %cfg.4.v = select i1 %cmp37, i32 2096, i32 48
  %and18.masked.masked = or i32 %23, %cfg.4.v
  %and26.masked = or i32 %and18.masked.masked, %and
  %cfg.2 = or i32 %and26.masked, %and13
  %25 = or i32 %cfg.2, %and21
  %26 = or i32 %25, %24
  %cfg.4 = xor i32 %26, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %cfg.4) #5
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 8
  %add.ptr1.i78 = getelementptr i8, ptr %29, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i78, i32 %27) #5, !srcloc !56
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlp_spi_transfer_one(ptr noundef %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %2 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %3 to i32
  %cs = getelementptr inbounds %struct.xlp_spi_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %cs, align 4
  %5 = call ptr @memcpy(ptr %1, ptr %spi, i32 928)
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %cur_msg.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 31
  %6 = ptrtoint ptr %cur_msg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_msg.i, align 4
  %8 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_list.i, align 4
  %cmp.i.i = icmp ne ptr %9, %7
  %spec.select = zext i1 %cmp.i.i to i8
  %10 = getelementptr inbounds %struct.xlp_spi_priv, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %10, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not37.i = icmp eq i32 %13, 0
  br i1 %tobool.not37.i, label %entry.xlp_spi_txrx_bufs.exit_crit_edge, label %while.body.lr.ph.i

entry.xlp_spi_txrx_bufs.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xlp_spi_txrx_bufs.exit

while.body.lr.ph.i:                               ; preds = %entry
  %rx_buf2.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %14 = ptrtoint ptr %rx_buf2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf2.i, align 4
  %16 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %tx_buf.041.i = phi ptr [ %17, %while.body.lr.ph.i ], [ %spec.select.i, %if.end8.i.while.body.i_crit_edge ]
  %rx_buf.040.i = phi ptr [ %15, %while.body.lr.ph.i ], [ %rx_buf.1.i, %if.end8.i.while.body.i_crit_edge ]
  %bytesleft.038.i = phi i32 [ %13, %while.body.lr.ph.i ], [ %sub.i, %if.end8.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %bytesleft.038.i)
  %cmp.i = icmp sgt i32 %bytesleft.038.i, 28
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call fastcc i32 @xlp_spi_xfer_block(ptr noundef %1, ptr noundef %tx_buf.041.i, ptr noundef %rx_buf.040.i, i32 noundef 28, i32 noundef 1) #5
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %10, align 4, !range !60
  %20 = zext i8 %19 to i32
  %call4.i = tail call fastcc i32 @xlp_spi_xfer_block(ptr noundef %1, ptr noundef %tx_buf.041.i, ptr noundef %rx_buf.040.i, i32 noundef %bytesleft.038.i, i32 noundef %20) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %sz.0.i = phi i32 [ %call.i, %if.then.i ], [ %call4.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.0.i)
  %cmp5.i = icmp slt i32 %sz.0.i, 0
  br i1 %cmp5.i, label %if.end.i.xlp_spi_txrx_bufs.exit_crit_edge, label %if.end8.i

if.end.i.xlp_spi_txrx_bufs.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xlp_spi_txrx_bufs.exit

if.end8.i:                                        ; preds = %if.end.i
  %sub.i = sub i32 %bytesleft.038.i, %sz.0.i
  %tobool9.not.i = icmp eq ptr %tx_buf.041.i, null
  %add.ptr.i = getelementptr i8, ptr %tx_buf.041.i, i32 %sz.0.i
  %spec.select.i = select i1 %tobool9.not.i, ptr null, ptr %add.ptr.i
  %tobool12.not.i = icmp eq ptr %rx_buf.040.i, null
  %add.ptr14.i = getelementptr i8, ptr %rx_buf.040.i, i32 %sz.0.i
  %rx_buf.1.i = select i1 %tobool12.not.i, ptr null, ptr %add.ptr14.i
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end8.i.xlp_spi_txrx_bufs.exit_crit_edge, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end8.i.xlp_spi_txrx_bufs.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xlp_spi_txrx_bufs.exit

xlp_spi_txrx_bufs.exit:                           ; preds = %if.end8.i.xlp_spi_txrx_bufs.exit_crit_edge, %if.end.i.xlp_spi_txrx_bufs.exit_crit_edge, %entry.xlp_spi_txrx_bufs.exit_crit_edge
  %21 = phi i32 [ 0, %entry.xlp_spi_txrx_bufs.exit_crit_edge ], [ 0, %if.end8.i.xlp_spi_txrx_bufs.exit_crit_edge ], [ -5, %if.end.i.xlp_spi_txrx_bufs.exit_crit_edge ]
  tail call void @spi_finalize_current_transfer(ptr noundef %master) #5
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlp_spi_xfer_block(ptr noundef %xs, ptr noundef %tx_buf, ptr noundef %rx_buf, i32 noundef %xfer_len, i32 noundef %cmd_cont) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf1 = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 2
  %0 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tx_buf, ptr %tx_buf1, align 4
  %rx_buf2 = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 3
  %1 = ptrtoint ptr %rx_buf2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rx_buf, ptr %rx_buf2, align 8
  %cmp = icmp eq ptr %tx_buf, null
  %spec.select = select i1 %cmp, i32 0, i32 %xfer_len
  %tx_len = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 4
  %2 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %tx_len, align 4
  %cmp5 = icmp eq ptr %rx_buf, null
  %cond9 = select i1 %cmp5, i32 0, i32 %xfer_len
  %rx_len = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 5
  %3 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond9, ptr %rx_len, align 8
  %rxerrors = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 7
  %4 = ptrtoint ptr %rxerrors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rxerrors, align 8
  %txerrors = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 6
  %5 = ptrtoint ptr %txerrors to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %txerrors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %cs.i = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 8
  %6 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs.i, align 4
  %base.i.i = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 24
  %mul.i.i = shl i32 %7, 6
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %11 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not37.i = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp38.i = icmp sgt i32 %10, -1
  %or.cond39.i = select i1 %tobool.not37.i, i1 %cmp38.i, i1 false
  br i1 %or.cond39.i, label %while.body.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.then
  %13 = lshr i32 %10, 28
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = phi i32 [ %12, %while.body.lr.ph.i ], [ %sub6.i, %for.end.i.while.body.i_crit_edge ]
  %txfifo_cnt.040.i = phi i32 [ %13, %while.body.lr.ph.i ], [ %inc8.i, %for.end.i.while.body.i_crit_edge ]
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 4) #5
  %i.032.i = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.032.i)
  %cmp333.i = icmp sgt i32 %i.032.i, -1
  br i1 %cmp333.i, label %for.body.lr.ph.i, label %while.body.i.for.end.i_crit_edge

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.body.i
  %16 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_buf1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ %i.032.i, %for.body.lr.ph.i ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %tx_data.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %j.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %17, i32 %i.036.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %19 to i32
  %mul.i = shl i32 %j.034.i, 3
  %shl.i = shl i32 %conv.i, %mul.i
  %or.i = or i32 %shl.i, %tx_data.035.i
  %inc.i = add nuw i32 %j.034.i, 1
  %i.0.i = add i32 %i.036.i, -1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %tx_data.0.lcssa.i = phi i32 [ 0, %while.body.i.for.end.i_crit_edge ], [ %or.i, %for.body.i.for.end.i_crit_edge ]
  %20 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %tx_data.0.lcssa.i) #5
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %24, i32 28
  %mul.i30.i = shl i32 %21, 6
  %add.ptr1.i31.i = getelementptr i8, ptr %add.ptr.i29.i, i32 %mul.i30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i31.i, i32 %22) #5, !srcloc !56
  %25 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_len, align 4
  %sub6.i = sub i32 %26, %15
  store i32 %sub6.i, ptr %tx_len, align 4
  %27 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_buf1, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 %15
  store ptr %add.ptr.i, ptr %tx_buf1, align 4
  %inc8.i = add nuw nsw i32 %txfifo_cnt.040.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %tobool.not.i = icmp ne i32 %sub6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %txfifo_cnt.040.i)
  %cmp.i = icmp ult i32 %txfifo_cnt.040.i, 7
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %for.end.i.while.body.i_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %29 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_buf1, align 4
  %tobool.not.i65 = icmp ne ptr %30, null
  %spec.select.i = zext i1 %tobool.not.i65 to i32
  %31 = ptrtoint ptr %rx_buf2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_buf2, align 8
  %tobool1.not.i = icmp eq ptr %32, null
  %or3.i = or i32 %spec.select.i, 2
  %cmd.1.i = select i1 %tobool1.not.i, i32 %spec.select.i, i32 %or3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_cont)
  %tobool5.not.i = icmp eq i32 %cmd_cont, 0
  %or7.i = or i32 %cmd.1.i, 16
  %cmd.2.i = select i1 %tobool5.not.i, i32 %cmd.1.i, i32 %or7.i
  %mul.i66 = shl i32 %xfer_len, 19
  %shl.i67 = add i32 %mul.i66, -65536
  %or9.i = or i32 %cmd.2.i, %shl.i67
  %cs.i68 = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 8
  %33 = ptrtoint ptr %cs.i68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cs.i68, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #5
  %base.i.i69 = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 1
  %36 = ptrtoint ptr %base.i.i69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i69, align 8
  %add.ptr.i.i70 = getelementptr i8, ptr %37, i32 8
  %mul.i.i71 = shl i32 %34, 6
  %add.ptr1.i.i72 = getelementptr i8, ptr %add.ptr.i.i70, i32 %mul.i.i71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i72, i32 %35) #5, !srcloc !56
  %38 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool12.not = icmp eq i32 %39, 0
  %. = select i1 %tobool12.not, i32 352321536, i32 520093696
  %40 = ptrtoint ptr %cs.i68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cs.i68, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %base.i.i69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i69, align 8
  %add.ptr.i73 = getelementptr i8, ptr %43, i32 16
  %mul.i74 = shl i32 %41, 6
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i73, i32 %mul.i74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %.) #5, !srcloc !56
  %done = getelementptr inbounds %struct.xlp_spi_priv, ptr %xs, i32 0, i32 11
  %call17 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 100) #5
  %44 = ptrtoint ptr %cs.i68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cs.i68, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %base.i.i69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i69, align 8
  %add.ptr.i76 = getelementptr i8, ptr %47, i32 16
  %mul.i77 = shl i32 %45, 6
  %add.ptr1.i78 = getelementptr i8, ptr %add.ptr.i76, i32 %mul.i77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i78, i32 0) #5, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %xs, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %48 = ptrtoint ptr %txerrors to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %txerrors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool23.not = icmp eq i32 %49, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %if.end21.do.end29_crit_edge

if.end21.do.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

lor.lhs.false:                                    ; preds = %if.end21
  %50 = ptrtoint ptr %rxerrors to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rxerrors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool25.not = icmp eq i32 %51, 0
  br i1 %tobool25.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end29_crit_edge

lor.lhs.false.do.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end29:                                         ; preds = %lor.lhs.false.do.end29_crit_edge, %if.end21.do.end29_crit_edge
  %52 = ptrtoint ptr %rxerrors to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rxerrors, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %xs, ptr noundef nonnull @.str.18, i32 noundef %53, i32 noundef %49, i32 noundef %xfer_len) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %lor.lhs.false.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ %xfer_len, %do.end29 ], [ %xfer_len, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_spi_xlp__238_445_xlp_spi_driver_init6, !1, !"__initcall__kmod_spi_xlp__238_445_xlp_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-xlp.c", i32 445, i32 1}
!2 = !{ptr @__exitcall_xlp_spi_driver_exit, !1, !"__exitcall_xlp_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-xlp.c", i32 447, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-xlp.c", i32 448, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-xlp.c", i32 449, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-xlp.c", i32 441, i32 11}
!12 = !{ptr @xlp_spi_driver, !13, !"xlp_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-xlp.c", i32 438, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-xlp.c", i32 389, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xlp_spi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @xlp_spi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-xlp.c", i32 395, i32 3}
!24 = !{ptr @xlp_spi_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @xlp_spi_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-xlp.c", i32 403, i32 3}
!28 = !{ptr @xlp_spi_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @xlp_spi_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-xlp.c", i32 421, i32 3}
!32 = !{ptr @xlp_spi_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @xlp_spi_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-xlp.c", i32 307, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @xlp_spi_xfer_block._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @xlp_spi_xfer_block._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-xlp.c", i32 311, i32 3}
!41 = !{ptr @xlp_spi_xfer_block._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @xlp_spi_xfer_block._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @init_completion.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/completion.h", i32 87, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2154813211}
!56 = !{i64 6968887}
!57 = !{i64 6969305}
!58 = !{i64 2154812235}
!59 = !{i64 2154812637}
!60 = !{i8 0, i8 2}
