; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-vp3054-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-vp3054-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vp3054_i2c_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_vp3054_i2c_probe\09\09\09\09"
module asm "\09.long\09__crc_vp3054_i2c_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp3054_i2c_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22vp3054_i2c_probe\22\09\09\09\09\09"
module asm "__kstrtabns_vp3054_i2c_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vp3054_i2c_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_vp3054_i2c_remove\09\09\09\09"
module asm "\09.long\09__crc_vp3054_i2c_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp3054_i2c_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22vp3054_i2c_remove\22\09\09\09\09\09"
module asm "__kstrtabns_vp3054_i2c_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cx88_core = type { %struct.list_head, %struct.refcount_struct, i32, [32 x i8], i32, i32, i32, ptr, ptr, [3 x i32], i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i32, %struct.cx88_board, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.IR_i2c_init_data, %struct.wm8775_platform_data, %struct.mutex, i32, ptr, ptr, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx88_board = type { ptr, i32, i32, i8, i8, i32, [8 x %struct.cx88_input], %struct.cx88_input, i32, i32, i32, i32 }
%struct.cx88_input = type { i32, i32, i32, i32, i32, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.wm8775_platform_data = type { i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cx8802_dev = type { ptr, %struct.spinlock, ptr, i8, i8, %struct.cx88_dmaqueue, %struct.vb2_queue, i32, i32, %struct.cx8802_suspend_state, %struct.list_head, %struct.video_device, i32, %struct.cx2341x_handler, %struct.vb2_dvb_frontends, ptr, i8, %struct.list_head, %struct.work_struct }
%struct.cx88_dmaqueue = type { %struct.list_head, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx8802_suspend_state = type { i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.106 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.103], %struct.media_entity_enum, i32 }
%struct.anon.103 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.128, %struct.anon.129, %struct.anon.130, %struct.anon.131 }
%struct.anon.124 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.125 = type { ptr, ptr }
%struct.anon.126 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.127 = type { ptr, ptr }
%struct.anon.128 = type { ptr, ptr, ptr }
%struct.anon.129 = type { ptr, ptr }
%struct.anon.130 = type { ptr, ptr }
%struct.anon.131 = type { ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.vp3054_i2c_state = type { %struct.i2c_adapter, %struct.i2c_algo_bit_data, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.123, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.123 = type { ptr }

@__UNIQUE_ID_description385 = internal constant [61 x i8] c"cx88_vp3054_i2c.description=driver for cx2388x VP3054 design\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [62 x i8] c"cx88_vp3054_i2c.author=Chris Pascoe <c.pascoe@itee.uq.edu.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [60 x i8] c"cx88_vp3054_i2c.file=drivers/media/pci/cx88/cx88-vp3054-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [28 x i8] c"cx88_vp3054_i2c.license=GPL\00", section ".modinfo", align 1
@vp3054_i2c_algo_template = internal constant { %struct.i2c_algo_bit_data, [56 x i8] } { %struct.i2c_algo_bit_data { ptr null, ptr @vp3054_bit_setsda, ptr @vp3054_bit_setscl, ptr @vp3054_bit_getsda, ptr @vp3054_bit_getscl, ptr null, ptr null, i32 16, i32 200, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vp3054_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cx88_vp3054_i2c: vp3054_i2c register FAILED\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vp3054_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/cx88/cx88-vp3054-i2c.c\00", [55 x i8] zeroinitializer }, align 32
@vp3054_i2c_probe._entry_ptr = internal global ptr @vp3054_i2c_probe._entry, section ".printk_index", align 4
@__kstrtab_vp3054_i2c_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp3054_i2c_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_vp3054_i2c_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp3054_i2c_probe to i32), ptr @__kstrtab_vp3054_i2c_probe, ptr @__kstrtabns_vp3054_i2c_probe }, section "___ksymtab+vp3054_i2c_probe", align 4
@__kstrtab_vp3054_i2c_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp3054_i2c_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_vp3054_i2c_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp3054_i2c_remove to i32), ptr @__kstrtab_vp3054_i2c_remove, ptr @__kstrtabns_vp3054_i2c_remove }, section "___ksymtab+vp3054_i2c_remove", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [25 x i8] c"vp3054_i2c_algo_template\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 80, i32 39 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [44 x i8] c"../drivers/media/pci/cx88/cx88-vp3054-i2c.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 120, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_license388, ptr @__ksymtab_vp3054_i2c_probe, ptr @__ksymtab_vp3054_i2c_remove, ptr @vp3054_i2c_probe._entry, ptr @vp3054_i2c_probe._entry_ptr, ptr @vp3054_i2c_algo_template, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3054_i2c_algo_template to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3054_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vp3054_i2c_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %boardnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %3)
  %cmp.not = icmp eq i32 %3, 42
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1408) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %vp3054 = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %vp3054 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %vp3054, align 4
  %algo = getelementptr inbounds %struct.vp3054_i2c_state, ptr %call7.i.i, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %algo, ptr @vp3054_i2c_algo_template, i32 40)
  %pci = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev4, ptr %parent, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %name7 = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 3
  %call9 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name7, i32 noundef 48) #5
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %algo, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %algo, ptr %algo_data, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %16 = ptrtoint ptr %vp3054 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vp3054, align 4
  %state4.i = getelementptr inbounds %struct.vp3054_i2c_state, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %state4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state4.i, align 8
  %and5.i = and i32 %19, -258
  %and.i = or i32 %and5.i, 1
  store i32 %and.i, ptr %state4.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %state4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state4.i, align 8
  %or9.i = or i32 %21, 65536
  %22 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #5
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %15, i32 0, i32 7
  %23 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %24, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #5, !srcloc !29
  %25 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio.i, align 4
  %add.ptr11.i = getelementptr i32, ptr %26, i32 868356
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %30 = ptrtoint ptr %vp3054 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vp3054, align 4
  %state4.i46 = getelementptr inbounds %struct.vp3054_i2c_state, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %state4.i46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state4.i46, align 8
  %and5.i47 = and i32 %33, -515
  %and.i48 = or i32 %and5.i47, 2
  store i32 %and.i48, ptr %state4.i46, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %state4.i46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state4.i46, align 8
  %or9.i50 = or i32 %35, 131072
  %36 = tail call i32 @llvm.bswap.i32(i32 %or9.i50) #5
  %lmmio.i51 = getelementptr inbounds %struct.cx88_core, ptr %29, i32 0, i32 7
  %37 = ptrtoint ptr %lmmio.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio.i51, align 4
  %add.ptr.i52 = getelementptr i32, ptr %38, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %36) #5, !srcloc !29
  %39 = ptrtoint ptr %lmmio.i51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio.i51, align 4
  %add.ptr11.i53 = getelementptr i32, ptr %40, i32 868356
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i53) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  %call16 = tail call i32 @i2c_bit_add_bus(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end3.cleanup_crit_edge, label %do.end

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %42 = ptrtoint ptr %vp3054 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vp3054, align 4
  tail call void @kfree(ptr noundef %43) #5
  %44 = ptrtoint ptr %vp3054 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %vp3054, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call16, %do.end ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp3054_bit_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %vp3054 = getelementptr inbounds %struct.cx8802_dev, ptr %data, i32 0, i32 15
  %2 = ptrtoint ptr %vp3054 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vp3054, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %state4 = getelementptr inbounds %struct.vp3054_i2c_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state4, align 8
  %and5 = and i32 %5, -258
  %. = select i1 %tobool.not, i32 256, i32 1
  %and = or i32 %and5, %.
  store i32 %and, ptr %state4, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %state8 = getelementptr inbounds %struct.vp3054_i2c_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state8, align 8
  %or9 = or i32 %7, 65536
  %8 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %10, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !29
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %12, i32 868356
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp3054_bit_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %vp3054 = getelementptr inbounds %struct.cx8802_dev, ptr %data, i32 0, i32 15
  %2 = ptrtoint ptr %vp3054 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vp3054, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %state4 = getelementptr inbounds %struct.vp3054_i2c_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state4, align 8
  %and5 = and i32 %5, -515
  %. = select i1 %tobool.not, i32 512, i32 2
  %and = or i32 %and5, %.
  store i32 %and, ptr %state4, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %state8 = getelementptr inbounds %struct.vp3054_i2c_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state8, align 8
  %or9 = or i32 %7, 131072
  %8 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %10, i32 868356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !29
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %12, i32 868356
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vp3054_i2c_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vp3054 = getelementptr inbounds %struct.cx8802_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %vp3054 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp3054, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %boardnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %5)
  %cmp.not = icmp eq i32 %5, 42
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_adapter(ptr noundef nonnull %1) #5
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp3054_bit_getsda(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 868356
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  %5 = lshr i32 %4, 25
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp3054_bit_getscl(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 868356
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %5 = lshr i32 %4, 24
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__UNIQUE_ID_description385, !1, !"__UNIQUE_ID_description385", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-vp3054-i2c.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_author386, !3, !"__UNIQUE_ID_author386", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx88/cx88-vp3054-i2c.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file387, !5, !"__UNIQUE_ID_file387", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx88/cx88-vp3054-i2c.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license388, !5, !"__UNIQUE_ID_license388", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/cx88/cx88-vp3054-i2c.c", i32 120, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vp3054_i2c_probe._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @vp3054_i2c_probe._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_vp3054_i2c_probe, !14, !"__ksymtab_vp3054_i2c_probe", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx88/cx88-vp3054-i2c.c", i32 128, i32 1}
!15 = !{ptr @__ksymtab_vp3054_i2c_remove, !16, !"__ksymtab_vp3054_i2c_remove", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx88/cx88-vp3054-i2c.c", i32 141, i32 1}
!17 = !{ptr @vp3054_i2c_algo_template, !18, !"vp3054_i2c_algo_template", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx88/cx88-vp3054-i2c.c", i32 80, i32 39}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2158604349}
!29 = !{i64 5004009}
!30 = !{i64 5004427}
!31 = !{i64 2158605229}
!32 = !{i64 2158605579}
!33 = !{i64 2158606459}
!34 = !{i64 2158607663}
!35 = !{i64 2158607061}
