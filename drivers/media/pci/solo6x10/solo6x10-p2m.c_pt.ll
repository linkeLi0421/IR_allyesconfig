; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-p2m.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-p2m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.solo_p2m_desc = type { i32, i32, i32, i32 }
%struct.solo_dev = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_device, %struct.gpio_chip, i8, i8, i8, i8, [2 x %struct.i2c_adapter], i32, %struct.mutex, i32, %struct.wait_queue_head, ptr, i32, i32, [4 x %struct.solo_p2m_dev], %struct.atomic_t, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, %struct.v4l2_ctrl_handler, [16 x ptr], i16, i8, i32, i16, i16, i16, i16, i16, i16, i8, %struct.spinlock, [2 x i32], ptr, ptr, %struct.atomic_t, i32, %struct.device, i32, %struct.bin_attribute, i32, ptr, %struct.wait_queue_head, ptr, i32, i32, %struct.vb2_queue, i32, ptr, %struct.mutex, %struct.spinlock, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.102, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.102 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.solo_p2m_dev = type { %struct.mutex, %struct.completion, i32, i32, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }

@__param_str_multi_p2m = internal constant [19 x i8] c"solo6x10.multi_p2m\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@multi_p2m = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_multi_p2m = internal constant %struct.kernel_param { ptr @__param_str_multi_p2m, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @multi_p2m } }, section "__param", align 4
@__UNIQUE_ID_multi_p2mtype300 = internal constant [33 x i8] c"solo6x10.parmtype=multi_p2m:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_multi_p2m301 = internal constant [79 x i8] c"solo6x10.parm=multi_p2m:Use multiple P2M DMA channels (default: no, 6010-only)\00", section ".modinfo", align 1
@__param_str_desc_mode = internal constant [19 x i8] c"solo6x10.desc_mode\00", align 1
@desc_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_desc_mode = internal constant %struct.kernel_param { ptr @__param_str_desc_mode, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @desc_mode } }, section "__param", align 4
@__UNIQUE_ID_desc_modetype302 = internal constant [33 x i8] c"solo6x10.parmtype=desc_mode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_desc_mode303 = internal constant [82 x i8] c"solo6x10.parm=desc_mode:Allow use of descriptor mode DMA (default: no, 6010-only)\00", section ".modinfo", align 1
@solo_p2m_dma.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/solo6x10/solo6x10-p2m.c\00", [54 x i8] zeroinitializer }, align 32
@solo_p2m_dma.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@solo_p2m_dma_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@solo_p2m_fill_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@solo_p2m_fill_desc.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@solo_p2m_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&p2m_dev->mutex\00", [16 x i8] zeroinitializer }, align 32
@solo_p2m_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 305, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error detecting SDRAM size\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"solo_p2m_init\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@solo_p2m_init._entry_ptr = internal global ptr @solo_p2m_init._entry, section ".printk_index", align 4
@solo_p2m_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str, i32 312, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SDRAM is not large enough (%u < %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@solo_p2m_init._entry_ptr.10 = internal global ptr @solo_p2m_init._entry.8, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"multi_p2m\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 18, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"desc_mode\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 23, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 35, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 258, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 305, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private constant [45 x i8] c"../drivers/media/pci/solo6x10/solo6x10-p2m.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 310, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 326, i32 6 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 87, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_desc_mode303, ptr @__UNIQUE_ID_desc_modetype302, ptr @__UNIQUE_ID_multi_p2m301, ptr @__UNIQUE_ID_multi_p2mtype300, ptr @__param_desc_mode, ptr @__param_multi_p2m, ptr @solo_p2m_init._entry, ptr @solo_p2m_init._entry.8, ptr @solo_p2m_init._entry_ptr, ptr @solo_p2m_init._entry_ptr.10, ptr @multi_p2m, ptr @desc_mode, ptr @.str, ptr @solo_p2m_init.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @init_completion.__key, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_p2m to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @desc_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_p2m_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_p2m_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_p2m_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef %wr, ptr noundef %sys_addr, i32 noundef %ext_addr, i32 noundef %size, i32 noundef %repeat, i32 noundef %ext_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sys_addr to i32
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b128 = load i1, ptr @solo_p2m_dma.__already_done, align 1
  br i1 %.b128, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !57

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @solo_p2m_dma.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool40.not = icmp eq i32 %size, 0
  br i1 %tobool40.not, label %land.rhs49, label %if.end97

land.rhs49:                                       ; preds = %if.end38
  %.b126127 = load i1, ptr @solo_p2m_dma.__already_done.1, align 1
  br i1 %.b126127, label %land.rhs49.cleanup_crit_edge, label %if.then60, !prof !57

land.rhs49.cleanup_crit_edge:                     ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then60:                                        ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @solo_p2m_dma.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end97:                                         ; preds = %if.end38
  %1 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %solo_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wr)
  %tobool98.not = icmp eq i32 %wr, 0
  %cond = select i1 %tobool98.not, i32 2, i32 1
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sys_addr) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end97
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !57

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #6
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %sys_addr, i32 noundef %size) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %0, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %7, i32 %shr.i
  %and.i = and i32 %0, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %size, i32 noundef %cond, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %8 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %solo_dev, align 8
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev100, i32 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end104

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end104:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call105 = tail call i32 @solo_p2m_dma_t(ptr noundef %solo_dev, i32 noundef %wr, i32 noundef %retval.0.i, i32 noundef %ext_addr, i32 noundef %size, i32 noundef %repeat, i32 noundef %ext_size)
  %10 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %solo_dev, align 8
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev107, i32 noundef %retval.0.i, i32 noundef %size, i32 noundef %cond, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %dma_map_single_attrs.exit.cleanup_crit_edge, %if.then60, %land.rhs49.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call105, %if.end104 ], [ -22, %if.then ], [ -22, %if.then60 ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %land.rhs49.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_p2m_dma_t(ptr noundef %solo_dev, i32 noundef %wr, i32 noundef %dma_addr, i32 noundef %ext_addr, i32 noundef %size, i32 noundef %repeat, i32 noundef %ext_size) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca [2 x %struct.solo_p2m_desc], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #6
  %0 = getelementptr inbounds [2 x %struct.solo_p2m_desc], ptr %desc, i32 0, i32 1
  %1 = getelementptr inbounds [2 x %struct.solo_p2m_desc], ptr %desc, i32 0, i32 1, i32 1
  %and.i = and i32 %dma_addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %2 = call ptr @memset(ptr %desc, i32 255, i32 16)
  br i1 %tobool.not.i, label %entry.if.end28.i_crit_edge, label %land.rhs.i

entry.if.end28.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

land.rhs.i:                                       ; preds = %entry
  %.b124.i = load i1, ptr @solo_p2m_fill_desc.__already_done, align 1
  br i1 %.b124.i, label %land.rhs.i.if.end28.i_crit_edge, label %if.then.i, !prof !57

land.rhs.i.if.end28.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @solo_p2m_fill_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 9, ptr noundef null) #6
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end28.i_crit_edge, %entry.if.end28.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool37.not.i = icmp eq i32 %size, 0
  br i1 %tobool37.not.i, label %land.rhs46.i, label %if.end28.i.if.end84.i_crit_edge

if.end28.i.if.end84.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i

land.rhs46.i:                                     ; preds = %if.end28.i
  %.b122123.i = load i1, ptr @solo_p2m_fill_desc.__already_done.2, align 1
  br i1 %.b122123.i, label %land.rhs46.i.if.end84.i_crit_edge, label %if.then57.i, !prof !57

land.rhs46.i.if.end84.i_crit_edge:                ; preds = %land.rhs46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i

if.then57.i:                                      ; preds = %land.rhs46.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @solo_p2m_fill_desc.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 129, i32 noundef 9, ptr noundef null) #6
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then57.i, %land.rhs46.i.if.end84.i_crit_edge, %if.end28.i.if.end84.i_crit_edge
  %shr.i = lshr i32 %size, 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wr)
  %tobool92.not.i = icmp eq i32 %wr, 0
  %or93.i = select i1 %tobool92.not.i, i32 129, i32 131
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or93.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat)
  %tobool94.not.i = icmp eq i32 %repeat, 0
  br i1 %tobool94.not.i, label %if.end84.i.solo_p2m_fill_desc.exit_crit_edge, label %if.then95.i

if.end84.i.solo_p2m_fill_desc.exit_crit_edge:     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %solo_p2m_fill_desc.exit

if.then95.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = shl i32 %ext_size, 18
  %shl97.i = and i32 %5, -1048576
  %or99.i = or i32 %shl97.i, %shr.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or99.i, ptr %1, align 4
  %shl101.i = shl i32 %shr.i, 20
  %shl102.i = shl i32 %repeat, 10
  %or103.i = or i32 %shl102.i, %or93.i
  %or105.i = or i32 %or103.i, %shl101.i
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or105.i, ptr %0, align 4
  br label %solo_p2m_fill_desc.exit

solo_p2m_fill_desc.exit:                          ; preds = %if.then95.i, %if.end84.i.solo_p2m_fill_desc.exit_crit_edge
  %8 = getelementptr inbounds [2 x %struct.solo_p2m_desc], ptr %desc, i32 0, i32 1, i32 3
  %9 = getelementptr inbounds [2 x %struct.solo_p2m_desc], ptr %desc, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dma_addr, ptr %9, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ext_addr, ptr %8, align 4
  %call = call i32 @solo_p2m_dma_desc(ptr noundef %solo_dev, ptr noundef nonnull %desc, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_p2m_dma_desc(ptr noundef %solo_dev, ptr noundef %desc, i32 noundef %desc_dma, i32 noundef %desc_cnt) local_unnamed_addr #0 align 64 {
entry:
  %val.i179 = alloca i16, align 2
  %val.i175 = alloca i16, align 2
  %val.i171 = alloca i16, align 2
  %val.i167 = alloca i16, align 2
  %val.i163 = alloca i16, align 2
  %val.i159 = alloca i16, align 2
  %val.i155 = alloca i16, align 2
  %val.i151 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr @multi_p2m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %p2m_count = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %p2m_count, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @llvm.prefetch.p0(ptr %p2m_count, i32 1, i32 3, i32 1) #6
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %p2m_count, ptr %p2m_count, i32 1, ptr elementtype(i32) %p2m_count) #6, !srcloc !59
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !60
  %rem = srem i32 %asmresult.i.i.i.i, 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %p2m_id.0 = phi i32 [ %rem, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %arrayidx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %p2m_id.0
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %arrayidx, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %completion = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %p2m_id.0, i32 1
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %error = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %p2m_id.0, i32 5
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %desc_cnt)
  %cmp6 = icmp sgt i32 %desc_cnt, 1
  br i1 %cmp6, label %land.lhs.true7, label %if.end5.if.else_crit_edge

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true7:                                   ; preds = %if.end5
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp9.not = icmp eq i32 %7, 1
  br i1 %cmp9.not, label %land.lhs.true7.if.else_crit_edge, label %land.lhs.true10

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %8 = load i32, ptr @desc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %land.lhs.true10.if.else_crit_edge, label %if.then12

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  %desc_idx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %p2m_id.0, i32 3
  %9 = ptrtoint ptr %desc_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %desc_idx, align 4
  %desc_count = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %p2m_id.0, i32 2
  %10 = ptrtoint ptr %desc_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %desc_count, align 4
  %mul = shl nsw i32 %p2m_id.0, 5
  %add = add nsw i32 %mul, 128
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !61
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %add15 = add nsw i32 %mul, 132
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %val.i, align 2, !annotation !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %desc_dma) #6
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %18, i32 %add15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %16) #6, !srcloc !65
  %19 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %add17 = add nsw i32 %mul, 136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i151) #6
  %21 = ptrtoint ptr %val.i151 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %val.i151, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %22 = call i32 @llvm.bswap.i32(i32 %desc_cnt) #6
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %24, i32 %add17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %22) #6, !srcloc !65
  %25 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %solo_dev, align 8
  %call.i154 = call i32 @pci_read_config_word(ptr noundef %26, i32 noundef 6, ptr noundef nonnull %val.i151) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i151) #6
  %or = or i32 %14, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i155) #6
  %27 = ptrtoint ptr %val.i155 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %val.i155, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %28 = call i32 @llvm.bswap.i32(i32 %or) #6
  %29 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %30, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %28) #6, !srcloc !65
  %31 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %solo_dev, align 8
  %call.i158 = call i32 @pci_read_config_word(ptr noundef %32, i32 noundef 6, ptr noundef nonnull %val.i155) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i155) #6
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %land.lhs.true7.if.else_crit_edge, %if.end5.if.else_crit_edge
  %desc_count20 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %p2m_id.0, i32 2
  %33 = ptrtoint ptr %desc_count20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %desc_cnt, ptr %desc_count20, align 4
  %desc_idx21 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %p2m_id.0, i32 3
  %34 = ptrtoint ptr %desc_idx21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %desc_idx21, align 4
  %descs = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %p2m_id.0, i32 4
  %35 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %desc, ptr %descs, align 4
  %mul22 = shl nsw i32 %p2m_id.0, 5
  %add23 = add nsw i32 %mul22, 152
  %arrayidx24 = getelementptr %struct.solo_p2m_desc, ptr %desc, i32 1
  %dma_addr = getelementptr %struct.solo_p2m_desc, ptr %desc, i32 1, i32 2
  %36 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i159) #6
  %38 = ptrtoint ptr %val.i159 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %val.i159, align 2, !annotation !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  %reg_base.i160 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %40 = ptrtoint ptr %reg_base.i160 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i160, align 4
  %add.ptr.i161 = getelementptr i8, ptr %41, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 %39) #6, !srcloc !65
  %42 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %solo_dev, align 8
  %call.i162 = call i32 @pci_read_config_word(ptr noundef %43, i32 noundef 6, ptr noundef nonnull %val.i159) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i159) #6
  %add26 = add nsw i32 %mul22, 156
  %ext_addr = getelementptr %struct.solo_p2m_desc, ptr %desc, i32 1, i32 3
  %44 = ptrtoint ptr %ext_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ext_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i163) #6
  %46 = ptrtoint ptr %val.i163 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %val.i163, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %47 = call i32 @llvm.bswap.i32(i32 %45) #6
  %48 = ptrtoint ptr %reg_base.i160 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base.i160, align 4
  %add.ptr.i165 = getelementptr i8, ptr %49, i32 %add26
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %47) #6, !srcloc !65
  %50 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %solo_dev, align 8
  %call.i166 = call i32 @pci_read_config_word(ptr noundef %51, i32 noundef 6, ptr noundef nonnull %val.i163) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i163) #6
  %add29 = add nsw i32 %mul22, 148
  %cfg = getelementptr %struct.solo_p2m_desc, ptr %desc, i32 1, i32 1
  %52 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cfg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i167) #6
  %54 = ptrtoint ptr %val.i167 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %val.i167, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %55 = call i32 @llvm.bswap.i32(i32 %53) #6
  %56 = ptrtoint ptr %reg_base.i160 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base.i160, align 4
  %add.ptr.i169 = getelementptr i8, ptr %57, i32 %add29
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %55) #6, !srcloc !65
  %58 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %solo_dev, align 8
  %call.i170 = call i32 @pci_read_config_word(ptr noundef %59, i32 noundef 6, ptr noundef nonnull %val.i167) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i167) #6
  %add32 = add nsw i32 %mul22, 144
  %60 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx24, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i171) #6
  %62 = ptrtoint ptr %val.i171 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %val.i171, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %63 = call i32 @llvm.bswap.i32(i32 %61) #6
  %64 = ptrtoint ptr %reg_base.i160 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base.i160, align 4
  %add.ptr.i173 = getelementptr i8, ptr %65, i32 %add32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 %63) #6, !srcloc !65
  %66 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %solo_dev, align 8
  %call.i174 = call i32 @pci_read_config_word(ptr noundef %67, i32 noundef 6, ptr noundef nonnull %val.i171) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i171) #6
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then12
  %config.0 = phi i32 [ %14, %if.then12 ], [ 0, %if.else ]
  %p2m_jiffies = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 26
  %68 = ptrtoint ptr %p2m_jiffies to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %p2m_jiffies, align 8
  %call36 = call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef %69) #6
  %70 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool38.not = icmp eq i32 %71, 0
  br i1 %tobool38.not, label %if.else78, label %land.rhs

land.rhs:                                         ; preds = %if.end34
  %.b147 = load i1, ptr @solo_p2m_dma_desc.__already_done, align 1
  br i1 %.b147, label %land.rhs.if.end82_crit_edge, label %if.then46, !prof !57

land.rhs.if.end82_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then46:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @solo_p2m_dma_desc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 9, ptr noundef null) #6
  br label %if.end82

if.else78:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp79 = icmp eq i32 %call36, 0
  br i1 %cmp79, label %if.then80, label %if.else78.if.end82_crit_edge

if.else78.if.end82_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then80:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #8
  %p2m_timeouts = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 27
  %72 = ptrtoint ptr %p2m_timeouts to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %p2m_timeouts, align 4
  %inc = add i32 %73, 1
  store i32 %inc, ptr %p2m_timeouts, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.else78.if.end82_crit_edge, %if.then46, %land.rhs.if.end82_crit_edge
  %ret.0 = phi i32 [ -11, %if.then80 ], [ 0, %if.else78.if.end82_crit_edge ], [ -5, %if.then46 ], [ -5, %land.rhs.if.end82_crit_edge ]
  %mul83 = shl nsw i32 %p2m_id.0, 5
  %add84 = add nsw i32 %mul83, 144
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i175) #6
  %74 = ptrtoint ptr %val.i175 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -1, ptr %val.i175, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %reg_base.i176 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %75 = ptrtoint ptr %reg_base.i176 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_base.i176, align 4
  %add.ptr.i177 = getelementptr i8, ptr %76, i32 %add84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 0) #6, !srcloc !65
  %77 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %solo_dev, align 8
  %call.i178 = call i32 @pci_read_config_word(ptr noundef %78, i32 noundef 6, ptr noundef nonnull %val.i175) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i175) #6
  br i1 %cmp6, label %land.lhs.true86, label %if.end82.if.end94_crit_edge

if.end82.if.end94_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

land.lhs.true86:                                  ; preds = %if.end82
  %79 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp88.not = icmp eq i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %config.0)
  %tobool90.not = icmp eq i32 %config.0, 0
  %or.cond = select i1 %cmp88.not, i1 true, i1 %tobool90.not
  br i1 %or.cond, label %land.lhs.true86.if.end94_crit_edge, label %if.then91

land.lhs.true86.if.end94_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then91:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  %add93 = add nsw i32 %mul83, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i179) #6
  %81 = ptrtoint ptr %val.i179 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -1, ptr %val.i179, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %82 = call i32 @llvm.bswap.i32(i32 %config.0) #6
  %83 = ptrtoint ptr %reg_base.i176 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_base.i176, align 4
  %add.ptr.i181 = getelementptr i8, ptr %84, i32 %add93
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 %82) #6, !srcloc !65
  %85 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %solo_dev, align 8
  %call.i182 = call i32 @pci_read_config_word(ptr noundef %86, i32 noundef 6, ptr noundef nonnull %val.i179) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i179) #6
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %land.lhs.true86.if.end94_crit_edge, %if.end82.if.end94_crit_edge
  call void @mutex_unlock(ptr noundef %arrayidx) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end94 ], [ -4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_p2m_fill_desc(ptr nocapture noundef %desc, i32 noundef %wr, i32 noundef %dma_addr, i32 noundef %ext_addr, i32 noundef %size, i32 noundef %repeat, i32 noundef %ext_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dma_addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b124 = load i1, ptr @solo_p2m_fill_desc.__already_done, align 1
  br i1 %.b124, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !57

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @solo_p2m_fill_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 9, ptr noundef null) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool37.not = icmp eq i32 %size, 0
  br i1 %tobool37.not, label %land.rhs46, label %if.end28.if.end84_crit_edge

if.end28.if.end84_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

land.rhs46:                                       ; preds = %if.end28
  %.b122123 = load i1, ptr @solo_p2m_fill_desc.__already_done.2, align 1
  br i1 %.b122123, label %land.rhs46.if.end84_crit_edge, label %if.then57, !prof !57

land.rhs46.if.end84_crit_edge:                    ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then57:                                        ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @solo_p2m_fill_desc.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 129, i32 noundef 9, ptr noundef null) #6
  br label %if.end84

if.end84:                                         ; preds = %if.then57, %land.rhs46.if.end84_crit_edge, %if.end28.if.end84_crit_edge
  %shr = lshr i32 %size, 2
  %cfg = getelementptr inbounds %struct.solo_p2m_desc, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wr)
  %tobool92.not = icmp eq i32 %wr, 0
  %or93 = select i1 %tobool92.not, i32 129, i32 131
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or93, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat)
  %tobool94.not = icmp eq i32 %repeat, 0
  br i1 %tobool94.not, label %if.end84.if.end106_crit_edge, label %if.then95

if.end84.if.end106_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then95:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %2 = shl i32 %ext_size, 18
  %shl97 = and i32 %2, -1048576
  %or99 = or i32 %shl97, %shr
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or99, ptr %cfg, align 4
  %shl101 = shl i32 %shr, 20
  %shl102 = shl i32 %repeat, 10
  %or103 = or i32 %shl102, %or93
  %or105 = or i32 %or103, %shl101
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or105, ptr %desc, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then95, %if.end84.if.end106_crit_edge
  %dma_addr107 = getelementptr inbounds %struct.solo_p2m_desc, ptr %desc, i32 0, i32 2
  %5 = ptrtoint ptr %dma_addr107 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dma_addr, ptr %dma_addr107, align 4
  %ext_addr108 = getelementptr inbounds %struct.solo_p2m_desc, ptr %desc, i32 0, i32 3
  %6 = ptrtoint ptr %ext_addr108 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ext_addr, ptr %ext_addr108, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_p2m_isr(ptr noundef %solo_dev, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %val.i44 = alloca i16, align 2
  %val.i40 = alloca i16, align 2
  %val.i36 = alloca i16, align 2
  %val.i32 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_count = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %id, i32 2
  %0 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_count, align 4
  %desc_idx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %id, i32 3
  %2 = ptrtoint ptr %desc_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp sgt i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %completion = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %id, i32 1
  tail call void @complete(ptr noundef %completion) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nsw i32 %3, 1
  %4 = ptrtoint ptr %desc_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc, ptr %desc_idx, align 4
  %descs = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %id, i32 4
  %5 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %descs, align 4
  %arrayidx4 = getelementptr %struct.solo_p2m_desc, ptr %6, i32 %inc
  %mul = shl i32 %id, 5
  %add = add i32 %mul, 144
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %val.i, align 2, !annotation !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !65
  %10 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %11, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %add6 = add i32 %mul, 152
  %dma_addr = getelementptr %struct.solo_p2m_desc, ptr %6, i32 %inc, i32 2
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i32) #6
  %14 = ptrtoint ptr %val.i32 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %val.i32, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %15 = call i32 @llvm.bswap.i32(i32 %13) #6
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %17, i32 %add6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %15) #6, !srcloc !65
  %18 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %solo_dev, align 8
  %call.i35 = call i32 @pci_read_config_word(ptr noundef %19, i32 noundef 6, ptr noundef nonnull %val.i32) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i32) #6
  %add8 = add i32 %mul, 156
  %ext_addr = getelementptr %struct.solo_p2m_desc, ptr %6, i32 %inc, i32 3
  %20 = ptrtoint ptr %ext_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ext_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i36) #6
  %22 = ptrtoint ptr %val.i36 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %val.i36, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %23 = call i32 @llvm.bswap.i32(i32 %21) #6
  %24 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %25, i32 %add8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %23) #6, !srcloc !65
  %26 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %solo_dev, align 8
  %call.i39 = call i32 @pci_read_config_word(ptr noundef %27, i32 noundef 6, ptr noundef nonnull %val.i36) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i36) #6
  %add10 = add i32 %mul, 148
  %cfg = getelementptr %struct.solo_p2m_desc, ptr %6, i32 %inc, i32 1
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i40) #6
  %30 = ptrtoint ptr %val.i40 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %val.i40, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %31 = call i32 @llvm.bswap.i32(i32 %29) #6
  %32 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %33, i32 %add10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %31) #6, !srcloc !65
  %34 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %solo_dev, align 8
  %call.i43 = call i32 @pci_read_config_word(ptr noundef %35, i32 noundef 6, ptr noundef nonnull %val.i40) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i40) #6
  %36 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i44) #6
  %38 = ptrtoint ptr %val.i44 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %val.i44, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %39 = call i32 @llvm.bswap.i32(i32 %37) #6
  %40 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %41, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %39) #6, !srcloc !65
  %42 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %solo_dev, align 8
  %call.i47 = call i32 @pci_read_config_word(ptr noundef %43, i32 noundef 6, ptr noundef nonnull %val.i44) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i44) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_p2m_error_isr(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %3 = and i32 %2, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 0, i32 5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %error, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %val.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #6, !srcloc !65
  %8 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %9, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %completion = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 0, i32 1
  call void @complete(ptr noundef %completion) #6
  %error.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 1, i32 5
  %10 = ptrtoint ptr %error.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %error.1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %val.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i11.1 = getelementptr i8, ptr %13, i32 176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.1, i32 0) #6, !srcloc !65
  %14 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %solo_dev, align 8
  %call.i.1 = call i32 @pci_read_config_word(ptr noundef %15, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %completion.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 1, i32 1
  call void @complete(ptr noundef %completion.1) #6
  %error.2 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 2, i32 5
  %16 = ptrtoint ptr %error.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %error.2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %val.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i11.2 = getelementptr i8, ptr %19, i32 208
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.2, i32 0) #6, !srcloc !65
  %20 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %solo_dev, align 8
  %call.i.2 = call i32 @pci_read_config_word(ptr noundef %21, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %completion.2 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 2, i32 1
  call void @complete(ptr noundef %completion.2) #6
  %error.3 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 3, i32 5
  %22 = ptrtoint ptr %error.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %error.3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %val.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i11.3 = getelementptr i8, ptr %25, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.3, i32 0) #6, !srcloc !65
  %26 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %solo_dev, align 8
  %call.i.3 = call i32 @pci_read_config_word(ptr noundef %27, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %completion.3 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 3, i32 1
  call void @complete(ptr noundef %completion.3) #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_p2m_exit(ptr nocapture noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_mask.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %0 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_mask.i, align 8
  %and.i = and i32 %1, -131073
  store i32 %and.i, ptr %irq_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #6
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %3 = call i32 @llvm.bswap.i32(i32 %and.i) #6
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #6, !srcloc !65
  %6 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %7, i32 noundef 6, ptr noundef nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #6
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_mask.i, align 8
  %and.i.1 = and i32 %9, -262145
  store i32 %and.i.1, ptr %irq_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #6
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %11 = call i32 @llvm.bswap.i32(i32 %and.i.1) #6
  %12 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %13, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 %11) #6, !srcloc !65
  %14 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %solo_dev, align 8
  %call.i.i.1 = call i32 @pci_read_config_word(ptr noundef %15, i32 noundef 6, ptr noundef nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #6
  %16 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_mask.i, align 8
  %and.i.2 = and i32 %17, -524289
  store i32 %and.i.2, ptr %irq_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #6
  %18 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %val.i.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %19 = call i32 @llvm.bswap.i32(i32 %and.i.2) #6
  %20 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %21, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2, i32 %19) #6, !srcloc !65
  %22 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %solo_dev, align 8
  %call.i.i.2 = call i32 @pci_read_config_word(ptr noundef %23, i32 noundef 6, ptr noundef nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #6
  %24 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_mask.i, align 8
  %and.i.3 = and i32 %25, -1048577
  store i32 %and.i.3, ptr %irq_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #6
  %26 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %val.i.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %27 = call i32 @llvm.bswap.i32(i32 %and.i.3) #6
  %28 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %29, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3, i32 %27) #6, !srcloc !65
  %30 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %solo_dev, align 8
  %call.i.i.3 = call i32 @pci_read_config_word(ptr noundef %31, i32 noundef 6, ptr noundef nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_p2m_init(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i395 = alloca i16, align 2
  %val.i392 = alloca i16, align 2
  %val.i388 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  %val.i384 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %irq_mask.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0399 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %i.0399
  call void @__mutex_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.3, ptr noundef nonnull @solo_p2m_init.__key) #6
  %completion = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %i.0399, i32 1
  %0 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 24, i32 %i.0399, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #6
  %mul = shl i32 %i.0399, 5
  %add = add nuw nsw i32 %mul, 144
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %val.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !65
  %4 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %add3 = add nuw nsw i32 %mul, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i384) #6
  %6 = ptrtoint ptr %val.i384 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val.i384, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i386 = getelementptr i8, ptr %8, i32 %add3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i386, i32 369098752) #6, !srcloc !65
  %9 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %solo_dev, align 8
  %call.i387 = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 6, ptr noundef nonnull %val.i384) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i384) #6
  %shl = shl i32 131072, %i.0399
  %11 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_mask.i, align 8
  %or.i = or i32 %12, %shl
  store i32 %or.i, ptr %irq_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #6
  %13 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %val.i.i, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %14 = call i32 @llvm.bswap.i32(i32 %or.i) #6
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #6, !srcloc !65
  %17 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %18, i32 noundef 6, ptr noundef nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #6
  %inc = add nuw nsw i32 %i.0399, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %sdram_size = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 52
  %19 = ptrtoint ptr %sdram_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sdram_size, align 8
  %sys_config = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 54
  br label %for.body7

for.body7:                                        ; preds = %for.inc27.for.body7_crit_edge, %for.end
  %i.1400 = phi i32 [ 2, %for.end ], [ %dec, %for.inc27.for.body7_crit_edge ]
  %shl8 = shl i32 %i.1400, 6
  %or11 = or i32 %shl8, 293
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i388) #6
  %20 = ptrtoint ptr %val.i388 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %val.i388, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %21 = call i32 @llvm.bswap.i32(i32 %or11) #6
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i390 = getelementptr i8, ptr %23, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i390, i32 %21) #6, !srcloc !65
  %24 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %solo_dev, align 8
  %call.i391 = call i32 @pci_read_config_word(ptr noundef %25, i32 noundef 6, ptr noundef nonnull %val.i388) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i388) #6
  %26 = ptrtoint ptr %sys_config to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sys_config, align 8
  %or12 = or i32 %27, -2147483648
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i392) #6
  %28 = ptrtoint ptr %val.i392 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %val.i392, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %29 = call i32 @llvm.bswap.i32(i32 %or12) #6
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #6, !srcloc !65
  %32 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %solo_dev, align 8
  %call.i394 = call i32 @pci_read_config_word(ptr noundef %33, i32 noundef 6, ptr noundef nonnull %val.i392) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i392) #6
  %34 = ptrtoint ptr %sys_config to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sys_config, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i395) #6
  %36 = ptrtoint ptr %val.i395 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %val.i395, align 2, !annotation !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @arm_heavy_mb() #6
  %37 = call i32 @llvm.bswap.i32(i32 %35) #6
  %38 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !65
  %40 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %solo_dev, align 8
  %call.i397 = call i32 @pci_read_config_word(ptr noundef %41, i32 noundef 6, ptr noundef nonnull %val.i395) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i395) #6
  %42 = zext i32 %i.1400 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.1400, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb16
  ]

sw.bb:                                            ; preds = %for.body7
  %call = call fastcc i32 @solo_p2m_test(ptr noundef %solo_dev, i32 noundef 134152192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sw.bb.for.inc27_crit_edge

sw.bb.for.inc27_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

lor.lhs.false:                                    ; preds = %sw.bb
  %call14 = call fastcc i32 @solo_p2m_test(ptr noundef %solo_dev, i32 noundef 100597760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.for.inc27_crit_edge

lor.lhs.false.for.inc27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body7
  %call17 = call fastcc i32 @solo_p2m_test(ptr noundef %solo_dev, i32 noundef 67043328)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %sw.bb16.sw.epilog_crit_edge, label %sw.bb16.for.inc27_crit_edge

sw.bb16.for.inc27_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body7
  %call21 = call fastcc i32 @solo_p2m_test(ptr noundef %solo_dev, i32 noundef 33488896)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.for.inc27_crit_edge

sw.default.for.inc27_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge
  %shl25 = shl i32 33554432, %i.1400
  %43 = ptrtoint ptr %sdram_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shl25, ptr %sdram_size, align 8
  br label %for.end28

for.inc27:                                        ; preds = %sw.default.for.inc27_crit_edge, %sw.bb16.for.inc27_crit_edge, %lor.lhs.false.for.inc27_crit_edge, %sw.bb.for.inc27_crit_edge
  %dec = add nsw i32 %i.1400, -1
  %cmp6.not = icmp eq i32 %i.1400, 0
  br i1 %cmp6.not, label %for.end28thread-pre-split, label %for.inc27.for.body7_crit_edge

for.inc27.for.body7_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.end28thread-pre-split:                        ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %sdram_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %sdram_size, align 8
  br label %for.end28

for.end28:                                        ; preds = %for.end28thread-pre-split, %sw.epilog
  %45 = phi i32 [ %.pr, %for.end28thread-pre-split ], [ %shl25, %sw.epilog ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool30.not = icmp eq i32 %45, 0
  br i1 %tobool30.not, label %do.end34, label %if.end35

do.end34:                                         ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %solo_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end35:                                         ; preds = %for.end28
  %type = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp36 = icmp eq i32 %49, 0
  %add40 = select i1 %cmp36, i32 7405568, i32 9502720
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %45)
  %cmp42 = icmp slt i32 %45, 33554433
  %mul45 = select i1 %cmp42, i32 5898240, i32 20054016
  %add46 = add nuw nsw i32 %add40, %mul45
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %50 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_chans, align 8
  %mul48 = mul i32 %51, 2621440
  %add49 = add i32 %add46, %mul48
  %mul51 = shl i32 %51, 19
  %52 = add i32 %mul51, %add49
  %sub72 = sub i32 %45, %52
  %53 = call i32 @llvm.smin.i32(i32 %sub72, i32 16711680)
  %54 = call i32 @llvm.smax.i32(i32 %mul51, i32 %53)
  %add81 = add i32 %54, %add49
  %sub139 = sub i32 %45, %add81
  %55 = call i32 @llvm.smin.i32(i32 %sub139, i32 16711680)
  %56 = call i32 @llvm.smax.i32(i32 %mul51, i32 %55)
  %add152 = add i32 %56, %add81
  call void @__sanitizer_cov_trace_cmp4(i32 %add152, i32 %45)
  %cmp154 = icmp sgt i32 %add152, %45
  br i1 %cmp154, label %do.end158, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end158:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %solo_dev, align 8
  %dev160 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev160, ptr noundef nonnull @.str.9, i32 noundef %45, i32 noundef %add152) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end158, %if.end35.cleanup_crit_edge, %do.end34
  %retval.0 = phi i32 [ -5, %do.end158 ], [ -5, %do.end34 ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @solo_p2m_test(ptr noundef %solo_dev, i32 noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 4) #6
  %0 = inttoptr i32 %call1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 4) #6
  %1 = inttoptr i32 %call2 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.01 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %shl = shl i32 %i.01, 16
  %add = add nuw nsw i32 %i.01, 1
  %or = or i32 %shl, %add
  %add.ptr = getelementptr i32, ptr %0, i32 %i.01
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %add.ptr, align 4
  %exitcond.not = icmp eq i32 %add, 8192
  br i1 %exitcond.not, label %for.body.for.body11_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %i.12 = phi i32 [ %add13, %for.body11.for.body11_crit_edge ], [ 8192, %for.body.for.body11_crit_edge ]
  %shl12 = shl i32 %i.12, 16
  %add13 = add nuw nsw i32 %i.12, 1
  %or14 = or i32 %shl12, %add13
  %neg = xor i32 %or14, -1
  %add.ptr15 = getelementptr i32, ptr %0, i32 %i.12
  %3 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %neg, ptr %add.ptr15, align 4
  %exitcond4.not = icmp eq i32 %add13, 16384
  br i1 %exitcond4.not, label %for.end18, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11

for.end18:                                        ; preds = %for.body11
  %4 = call ptr @memset(ptr %1, i32 85, i32 65536)
  %call19 = tail call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %0, i32 noundef %base, i32 noundef 65536, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end21, label %for.end18.test_fail_crit_edge

for.end18.test_fail_crit_edge:                    ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_fail

if.end21:                                         ; preds = %for.end18
  %call22 = tail call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 0, ptr noundef nonnull %1, i32 noundef %base, i32 noundef 65536, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.for.body29_crit_edge, label %if.end21.test_fail_crit_edge

if.end21.test_fail_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_fail

if.end21.for.body29_crit_edge:                    ; preds = %if.end21
  br label %for.body29

for.cond26:                                       ; preds = %for.body29
  %inc36 = add nuw nsw i32 %i.23, 1
  %exitcond5.not = icmp eq i32 %inc36, 16384
  br i1 %exitcond5.not, label %for.cond26.test_fail_crit_edge, label %for.cond26.for.body29_crit_edge

for.cond26.for.body29_crit_edge:                  ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29

for.cond26.test_fail_crit_edge:                   ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_fail

for.body29:                                       ; preds = %for.cond26.for.body29_crit_edge, %if.end21.for.body29_crit_edge
  %i.23 = phi i32 [ %inc36, %for.cond26.for.body29_crit_edge ], [ 0, %if.end21.for.body29_crit_edge ]
  %add.ptr30 = getelementptr i32, ptr %0, i32 %i.23
  %5 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr30, align 4
  %add.ptr31 = getelementptr i32, ptr %1, i32 %i.23
  %7 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp32.not = icmp eq i32 %6, %8
  br i1 %cmp32.not, label %for.cond26, label %for.body29.test_fail_crit_edge

for.body29.test_fail_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_fail

test_fail:                                        ; preds = %for.body29.test_fail_crit_edge, %for.cond26.test_fail_crit_edge, %if.end21.test_fail_crit_edge, %for.end18.test_fail_crit_edge
  %ret.0 = phi i32 [ -5, %for.end18.test_fail_crit_edge ], [ -5, %if.end21.test_fail_crit_edge ], [ 0, %for.cond26.test_fail_crit_edge ], [ -5, %for.body29.test_fail_crit_edge ]
  tail call void @free_pages(i32 noundef %call1, i32 noundef 4) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %test_fail, %if.end.cleanup.sink.split_crit_edge
  %call2.sink = phi i32 [ %call2, %test_fail ], [ %call1, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %test_fail ], [ -1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @free_pages(i32 noundef %call2.sink, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__param_multi_p2m, !1, !"__param_multi_p2m", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_multi_p2mtype300, !1, !"__UNIQUE_ID_multi_p2mtype300", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_multi_p2m301, !4, !"__UNIQUE_ID_multi_p2m301", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 20, i32 1}
!5 = !{ptr @__param_desc_mode, !6, !"__param_desc_mode", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 24, i32 1}
!7 = !{ptr @__UNIQUE_ID_desc_modetype302, !6, !"__UNIQUE_ID_desc_modetype302", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_desc_mode303, !9, !"__UNIQUE_ID_desc_mode303", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 25, i32 1}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 35, i32 6}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 37, i32 6}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 105, i32 6}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 128, i32 2}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 129, i32 2}
!21 = !{ptr @solo_p2m_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 258, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 305, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @solo_p2m_init._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @solo_p2m_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 310, i32 3}
!33 = !{ptr @solo_p2m_init._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @solo_p2m_init._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @multi_p2m, !36, !"multi_p2m", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 18, i32 12}
!37 = !{ptr @desc_mode, !38, !"desc_mode", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/solo6x10/solo6x10-p2m.c", i32 23, i32 12}
!39 = !{ptr @__param_str_multi_p2m, !1, !"__param_str_multi_p2m", i1 false, i1 false}
!40 = !{ptr @__param_str_desc_mode, !6, !"__param_str_desc_mode", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @init_completion.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/completion.h", i32 87, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2148301517}
!59 = !{i64 2148216826, i64 2148216858, i64 2148216887, i64 2148216921, i64 2148216952, i64 2148216975}
!60 = !{i64 2148301746}
!61 = !{i64 5388494}
!62 = !{i64 2156748096}
!63 = !{!"auto-init"}
!64 = !{i64 2156748487}
!65 = !{i64 5388076}
