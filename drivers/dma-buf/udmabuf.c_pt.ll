; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/udmabuf.c_pt.bc'
source_filename = "../drivers/dma-buf/udmabuf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.79 }
%struct.atomic_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.udmabuf_create_list = type { i32, i32, [0 x %struct.udmabuf_create_item] }
%struct.udmabuf_create_item = type { i32, i32, i64, i64 }
%struct.udmabuf_create = type { i32, i32, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.udmabuf = type { i32, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.81 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.83 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.77, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.77 = type { %struct.atomic_t }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.86, i8 }
%union.anon.86 = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }

@__param_str_list_limit = internal constant [19 x i8] c"udmabuf.list_limit\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@list_limit = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_list_limit = internal constant %struct.kernel_param { ptr @__param_str_list_limit, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @list_limit } }, section "__param", align 4
@__UNIQUE_ID_list_limittype296 = internal constant [32 x i8] c"udmabuf.parmtype=list_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_list_limit297 = internal constant [75 x i8] c"udmabuf.parm=list_limit:udmabuf_create_list->count limit. Default is 1024.\00", section ".modinfo", align 1
@__param_str_size_limit_mb = internal constant [22 x i8] c"udmabuf.size_limit_mb\00", align 1
@size_limit_mb = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_size_limit_mb = internal constant %struct.kernel_param { ptr @__param_str_size_limit_mb, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @size_limit_mb } }, section "__param", align 4
@__UNIQUE_ID_size_limit_mbtype298 = internal constant [35 x i8] c"udmabuf.parmtype=size_limit_mb:int\00", section ".modinfo", align 1
@__UNIQUE_ID_size_limit_mb299 = internal constant [78 x i8] c"udmabuf.parm=size_limit_mb:Max size of a dmabuf, in megabytes. Default is 64.\00", section ".modinfo", align 1
@udmabuf_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str, ptr @udmabuf_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_udmabuf__300_372_udmabuf_dev_init6 = internal global ptr @udmabuf_dev_init, section ".initcall6.init", align 4
@__exitcall_udmabuf_dev_exit = internal global ptr @udmabuf_dev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [49 x i8] c"udmabuf.author=Gerd Hoffmann <kraxel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [37 x i8] c"udmabuf.file=drivers/dma-buf/udmabuf\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [23 x i8] c"udmabuf.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"udmabuf\00", [24 x i8] zeroinitializer }, align 32
@udmabuf_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @udmabuf_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__const.udmabuf_create.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@udmabuf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 1, ptr null, ptr null, ptr null, ptr null, ptr @map_udmabuf, ptr @unmap_udmabuf, ptr @release_udmabuf, ptr @begin_cpu_udmabuf, ptr @end_cpu_udmabuf, ptr @mmap_udmabuf, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@udmabuf_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @udmabuf_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074296131, i64 1075344706]
@___asan_gen_.6 = private unnamed_addr constant [11 x i8] c"list_limit\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 16, i32 12 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"size_limit_mb\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 20, i32 12 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"udmabuf_misc\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 356, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 358, i32 20 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"udmabuf_fops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 348, i32 37 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 156, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"udmabuf_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 150, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 717, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"udmabuf_vm_ops\00", align 1
@___asan_gen_.31 = private constant [29 x i8] c"../drivers/dma-buf/udmabuf.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 41, i32 42 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1160, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__UNIQUE_ID_list_limit297, ptr @__UNIQUE_ID_list_limittype296, ptr @__UNIQUE_ID_size_limit_mb299, ptr @__UNIQUE_ID_size_limit_mbtype298, ptr @__exitcall_udmabuf_dev_exit, ptr @__initcall__kmod_udmabuf__300_372_udmabuf_dev_init6, ptr @__param_list_limit, ptr @__param_size_limit_mb, ptr @udmabuf_dev_exit, ptr @list_limit, ptr @size_limit_mb, ptr @udmabuf_misc, ptr @.str, ptr @udmabuf_fops, ptr @.str.3, ptr @udmabuf_ops, ptr @.str.4, ptr @udmabuf_vm_ops, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @size_limit_mb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udmabuf_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udmabuf_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udmabuf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udmabuf_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @udmabuf_dev_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @misc_deregister(ptr noundef nonnull @udmabuf_misc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @udmabuf_dev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @udmabuf_misc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udmabuf_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %ioctl, i32 noundef %arg) #2 align 64 {
entry:
  %head.i5 = alloca %struct.udmabuf_create_list, align 8
  %create.i = alloca %struct.udmabuf_create, align 8
  %head.i = alloca %struct.udmabuf_create_list, align 8
  %list.i = alloca %struct.udmabuf_create_item, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ioctl to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ioctl, label %entry.sw.epilog_crit_edge [
    i32 1075344706, label %sw.bb
    i32 1074296131, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %create.i) #10
  %1 = getelementptr inbounds %struct.udmabuf_create, ptr %create.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.udmabuf_create, ptr %create.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.udmabuf_create, ptr %create.i, i32 0, i32 3
  %4 = call ptr @memset(ptr %create.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #10
  %5 = getelementptr inbounds %struct.udmabuf_create_list, ptr %head.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %list.i) #10
  %6 = getelementptr inbounds %struct.udmabuf_create_item, ptr %list.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.udmabuf_create_item, ptr %list.i, i32 0, i32 3
  %8 = inttoptr i32 %arg to ptr
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %list.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 24, i32 -1226833920) #13, !srcloc !56
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !57

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %create.i, i32 noundef 24) #10
  %11 = call i32 @llvm.read_register.i32(metadata !46) #10
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !58
  %and.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %create.i, ptr noundef %8, i32 noundef 24) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !57

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.0.i.i10.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 24, %sw.bb.if.then11.i.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 24, %res.0.i.i10.i
  %add.ptr.i.i.i = getelementptr i8, ptr %create.i, i32 %sub.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i10.i)
  br label %udmabuf_ioctl_create.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %head.i, align 8
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %5, align 4
  %19 = ptrtoint ptr %create.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %create.i, align 8
  %21 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %list.i, align 8
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %2, align 8
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %6, align 8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %3, align 8
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %7, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %28 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data.i, align 4
  %call5.i = call fastcc i32 @udmabuf_create(ptr noundef %29, ptr noundef nonnull %head.i, ptr noundef nonnull %list.i) #10
  br label %udmabuf_ioctl_create.exit

udmabuf_ioctl_create.exit:                        ; preds = %if.end.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %list.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %create.i) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i5) #10
  %30 = ptrtoint ptr %head.i5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %head.i5, align 8, !annotation !61
  %31 = getelementptr inbounds %struct.udmabuf_create_list, ptr %head.i5, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %31, align 4, !annotation !61
  %33 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #10
  %call.i.i.i6 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i6, label %sw.bb1.if.then11.i.i.i20_crit_edge, label %land.lhs.true.i.i.i9

sw.bb1.if.then11.i.i.i20_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i20

land.lhs.true.i.i.i9:                             ; preds = %sw.bb1
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 8, i32 -1226833920) #13, !srcloc !56
  %asmresult.i.i.i7 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i7)
  %cmp.i6.i.i8 = icmp eq i32 %asmresult.i.i.i7, 0
  br i1 %cmp.i6.i.i8, label %if.end.i.i.i17, label %land.lhs.true.i.i.i9.if.then11.i.i.i20_crit_edge, !prof !57

land.lhs.true.i.i.i9.if.then11.i.i.i20_crit_edge: ; preds = %land.lhs.true.i.i.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i20

if.end.i.i.i17:                                   ; preds = %land.lhs.true.i.i.i9
  %call.i.i.i.i10 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %head.i5, i32 noundef 8) #10
  %35 = call i32 @llvm.read_register.i32(metadata !46) #10
  %and.i.i.i.i.i.i.i11 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i11 to ptr
  %cpu_domain.i.i.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i12) #4, !srcloc !58
  %and.i.i.i.i.i13 = and i32 %37, -13
  %or.i.i.i.i.i14 = or i32 %and.i.i.i.i.i13, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i14) #10, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  %call1.i.i.i.i15 = call i32 @arm_copy_from_user(ptr noundef nonnull %head.i5, ptr noundef %33, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #10, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i15)
  %tobool4.not.i.i.i16 = icmp eq i32 %call1.i.i.i.i15, 0
  br i1 %tobool4.not.i.i.i16, label %if.end.i21, label %if.end.i.i.i17.if.then11.i.i.i20_crit_edge, !prof !57

if.end.i.i.i17.if.then11.i.i.i20_crit_edge:       ; preds = %if.end.i.i.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i20

if.then11.i.i.i20:                                ; preds = %if.end.i.i.i17.if.then11.i.i.i20_crit_edge, %land.lhs.true.i.i.i9.if.then11.i.i.i20_crit_edge, %sw.bb1.if.then11.i.i.i20_crit_edge
  %res.0.i.i19.i = phi i32 [ %call1.i.i.i.i15, %if.end.i.i.i17.if.then11.i.i.i20_crit_edge ], [ 8, %sw.bb1.if.then11.i.i.i20_crit_edge ], [ 8, %land.lhs.true.i.i.i9.if.then11.i.i.i20_crit_edge ]
  %sub.i.i.i18 = sub i32 8, %res.0.i.i19.i
  %add.ptr.i.i.i19 = getelementptr i8, ptr %head.i5, i32 %sub.i.i.i18
  %38 = call ptr @memset(ptr %add.ptr.i.i.i19, i32 0, i32 %res.0.i.i19.i)
  br label %udmabuf_ioctl_create_list.exit

if.end.i21:                                       ; preds = %if.end.i.i.i17
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %31, align 4
  %41 = load i32, ptr @list_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %41)
  %cmp.i = icmp ugt i32 %40, %41
  br i1 %cmp.i, label %if.end.i21.udmabuf_ioctl_create_list.exit_crit_edge, label %if.end2.i

if.end.i21.udmabuf_ioctl_create_list.exit_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %udmabuf_ioctl_create_list.exit

if.end2.i:                                        ; preds = %if.end.i21
  %mul.i = mul i32 %40, 24
  %add.i = add i32 %arg, 8
  %42 = inttoptr i32 %add.i to ptr
  %call4.i = call ptr @memdup_user(ptr noundef %42, i32 noundef %mul.i) #10
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %call4.i to i32
  br label %udmabuf_ioctl_create_list.exit

if.end8.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %private_data.i22 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %44 = ptrtoint ptr %private_data.i22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private_data.i22, align 4
  %call9.i = call fastcc i32 @udmabuf_create(ptr noundef %45, ptr noundef nonnull %head.i5, ptr noundef %call4.i) #10
  call void @kfree(ptr noundef %call4.i) #10
  br label %udmabuf_ioctl_create_list.exit

udmabuf_ioctl_create_list.exit:                   ; preds = %if.end8.i, %if.then6.i, %if.end.i21.udmabuf_ioctl_create_list.exit_crit_edge, %if.then11.i.i.i20
  %retval.0.i23 = phi i32 [ %43, %if.then6.i ], [ %call9.i, %if.end8.i ], [ -22, %if.end.i21.udmabuf_ioctl_create_list.exit_crit_edge ], [ -14, %if.then11.i.i.i20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i5) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %udmabuf_ioctl_create_list.exit, %udmabuf_ioctl_create.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i23, %udmabuf_ioctl_create_list.exit ], [ %retval.0.i, %udmabuf_ioctl_create.exit ], [ -25, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udmabuf_create(ptr noundef %device, ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %list) unnamed_addr #2 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #10
  %0 = call ptr @memcpy(ptr %exp_info, ptr @__const.udmabuf_create.exp_info, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @size_limit_mb, align 4
  %mul1 = shl i32 %2, 20
  %shr = ashr exact i32 %mul1, 12
  %count = getelementptr inbounds %struct.udmabuf_create_list, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp184.not = icmp eq i32 %4, 0
  br i1 %cmp184.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %if.end9
  %inc = add nuw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0185 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %offset = getelementptr %struct.udmabuf_create_item, ptr %list, i32 %i.0185, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %offset, align 8
  %and = and i64 %6, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp2 = icmp eq i64 %and, 0
  br i1 %cmp2, label %if.end4, label %for.body.if.end104_crit_edge

for.body.if.end104_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.end4:                                          ; preds = %for.body
  %size = getelementptr %struct.udmabuf_create_item, ptr %list, i32 %i.0185, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size, align 8
  %and6 = and i64 %8, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %cmp7 = icmp eq i64 %and6, 0
  br i1 %cmp7, label %if.end9, label %if.end4.if.end104_crit_edge

if.end4.if.end104_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.end9:                                          ; preds = %if.end4
  %shr12 = lshr i64 %8, 12
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call7.i.i, align 8
  %11 = trunc i64 %shr12 to i32
  %conv13 = add i32 %10, %11
  store i32 %conv13, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %shr)
  %cmp15 = icmp ugt i32 %conv13, %shr
  br i1 %cmp15, label %if.end9.if.end104_crit_edge, label %for.cond

if.end9.if.end104_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call7.i.i, align 8
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #10
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !62

kmalloc_array.exit.thread:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %pages176 = getelementptr inbounds %struct.udmabuf, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %pages176 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pages176, align 4
  br label %if.end104

if.end7.i:                                        ; preds = %for.end
  %17 = extractvalue { i32, i1 } %14, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3264) #15
  %pages = getelementptr inbounds %struct.udmabuf, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i, ptr %pages, align 4
  %tobool22.not = icmp eq ptr %call8.i, null
  br i1 %tobool22.not, label %if.end7.i.if.end104_crit_edge, label %for.cond25.preheader

if.end7.i.if.end104_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

for.cond25.preheader:                             ; preds = %if.end7.i
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp27189.not = icmp eq i32 %20, 0
  br i1 %cmp27189.not, label %for.cond25.preheader.for.end82_crit_edge, label %for.cond25.preheader.for.body29_crit_edge

for.cond25.preheader.for.body29_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body29

for.cond25.preheader.for.end82_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end82

for.body29:                                       ; preds = %for.end76.for.body29_crit_edge, %for.cond25.preheader.for.body29_crit_edge
  %i.1191 = phi i32 [ %inc81, %for.end76.for.body29_crit_edge ], [ 0, %for.cond25.preheader.for.body29_crit_edge ]
  %pgbuf.0190 = phi i32 [ %pgbuf.1.lcssa, %for.end76.for.body29_crit_edge ], [ 0, %for.cond25.preheader.for.body29_crit_edge ]
  %arrayidx30 = getelementptr %struct.udmabuf_create_item, ptr %list, i32 %i.1191
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx30, align 8
  %call32 = tail call ptr @fget(i32 noundef %22) #10
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %for.body29.err_crit_edge, label %if.end35

for.body29.err_crit_edge:                         ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end35:                                         ; preds = %for.body29
  %f_inode.i = getelementptr inbounds %struct.file, ptr %call32, i32 0, i32 2
  %23 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_inode.i, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_mapping, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %a_ops.i, align 4
  %cmp.i = icmp eq ptr %28, @shmem_aops
  br i1 %cmp.i, label %if.end39, label %if.end35.err_crit_edge

if.end35.err_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end39:                                         ; preds = %if.end35
  %call40 = tail call i32 @memfd_fcntl(ptr noundef nonnull %call32, i32 noundef 1034, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call40)
  %cmp41 = icmp eq i32 %call40, -22
  br i1 %cmp41, label %if.end39.err_crit_edge, label %if.end44

if.end39.err_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end44:                                         ; preds = %if.end39
  %29 = and i32 %call40, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %if.end52, label %if.end44.err_crit_edge

if.end44.err_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end52:                                         ; preds = %if.end44
  %offset54 = getelementptr %struct.udmabuf_create_item, ptr %list, i32 %i.1191, i32 2
  %31 = ptrtoint ptr %offset54 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %offset54, align 8
  %shr55 = lshr i64 %32, 12
  %conv56 = trunc i64 %shr55 to i32
  %size58 = getelementptr %struct.udmabuf_create_item, ptr %list, i32 %i.1191, i32 3
  %33 = ptrtoint ptr %size58 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %size58, align 8
  %shr59 = lshr i64 %34, 12
  %conv60 = trunc i64 %shr59 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv60)
  %cmp62186.not = icmp eq i32 %conv60, 0
  br i1 %cmp62186.not, label %if.end52.for.end76_crit_edge, label %for.body64.lr.ph

if.end52.for.end76_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end76

for.body64.lr.ph:                                 ; preds = %if.end52
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %26, i32 0, i32 3
  br label %for.body64

for.body64:                                       ; preds = %if.end70.for.body64_crit_edge, %for.body64.lr.ph
  %pgbuf.1188 = phi i32 [ %pgbuf.0190, %for.body64.lr.ph ], [ %inc72, %if.end70.for.body64_crit_edge ]
  %pgidx.0187 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc75, %if.end70.for.body64_crit_edge ]
  %add65 = add i32 %pgidx.0187, %conv56
  %35 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %26, i32 noundef %add65, i32 noundef %36) #10
  %cmp.i171 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.then68, label %if.end70

if.then68:                                        ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call1.i to i32
  br label %err

if.end70:                                         ; preds = %for.body64
  %38 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pages, align 4
  %inc72 = add i32 %pgbuf.1188, 1
  %arrayidx73 = getelementptr ptr, ptr %39, i32 %pgbuf.1188
  %40 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call1.i, ptr %arrayidx73, align 4
  %inc75 = add nuw i32 %pgidx.0187, 1
  %exitcond203.not = icmp eq i32 %inc75, %conv60
  br i1 %exitcond203.not, label %if.end70.for.end76_crit_edge, label %if.end70.for.body64_crit_edge

if.end70.for.body64_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body64

if.end70.for.end76_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end76

for.end76:                                        ; preds = %if.end70.for.end76_crit_edge, %if.end52.for.end76_crit_edge
  %pgbuf.1.lcssa = phi i32 [ %pgbuf.0190, %if.end52.for.end76_crit_edge ], [ %inc72, %if.end70.for.end76_crit_edge ]
  tail call void @fput(ptr noundef nonnull %call32) #10
  %inc81 = add nuw i32 %i.1191, 1
  %41 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count, align 4
  %cmp27 = icmp ult i32 %inc81, %42
  br i1 %cmp27, label %for.end76.for.body29_crit_edge, label %for.end76.for.end82_crit_edge

for.end76.for.end82_crit_edge:                    ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end82

for.end76.for.body29_crit_edge:                   ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

for.end82:                                        ; preds = %for.end76.for.end82_crit_edge, %for.cond25.preheader.for.end82_crit_edge
  %pgbuf.0.lcssa = phi i32 [ 0, %for.cond25.preheader.for.end82_crit_edge ], [ %pgbuf.1.lcssa, %for.end76.for.end82_crit_edge ]
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @udmabuf_ops, ptr %ops, align 4
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call7.i.i, align 8
  %shl = shl i32 %45, 12
  %size84 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 3
  %46 = ptrtoint ptr %size84 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl, ptr %size84, align 4
  %priv = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 6
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %priv, align 4
  %flags85 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 4
  %48 = ptrtoint ptr %flags85 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %flags85, align 4
  %device86 = getelementptr inbounds %struct.udmabuf, ptr %call7.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %device86 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %device, ptr %device86, align 4
  %call87 = call ptr @dma_buf_export(ptr noundef nonnull %exp_info) #10
  %cmp.i172 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then89, label %if.end91

if.then89:                                        ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %call87 to i32
  br label %err

if.end91:                                         ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %head, align 8
  %and93 = shl i32 %52, 19
  %53 = and i32 %and93, 524288
  %call97 = call i32 @dma_buf_fd(ptr noundef %call87, i32 noundef %53) #10
  br label %cleanup

err:                                              ; preds = %if.then89, %if.then68, %if.end44.err_crit_edge, %if.end39.err_crit_edge, %if.end35.err_crit_edge, %for.body29.err_crit_edge
  %pgbuf.2 = phi i32 [ %pgbuf.1188, %if.then68 ], [ %pgbuf.0.lcssa, %if.then89 ], [ %pgbuf.0190, %for.body29.err_crit_edge ], [ %pgbuf.0190, %if.end35.err_crit_edge ], [ %pgbuf.0190, %if.end39.err_crit_edge ], [ %pgbuf.0190, %if.end44.err_crit_edge ]
  %memfd.1 = phi ptr [ %call32, %if.then68 ], [ null, %if.then89 ], [ %call32, %if.end44.err_crit_edge ], [ %call32, %if.end39.err_crit_edge ], [ %call32, %if.end35.err_crit_edge ], [ null, %for.body29.err_crit_edge ]
  %ret.0 = phi i32 [ %37, %if.then68 ], [ %50, %if.then89 ], [ -22, %if.end44.err_crit_edge ], [ -77, %if.end39.err_crit_edge ], [ -77, %if.end35.err_crit_edge ], [ -77, %for.body29.err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pgbuf.2)
  %cmp98.not193 = icmp eq i32 %pgbuf.2, 0
  br i1 %cmp98.not193, label %err.while.end_crit_edge, label %while.body.lr.ph

err.while.end_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %err
  %pages100 = getelementptr inbounds %struct.udmabuf, ptr %call7.i.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %while.body.lr.ph
  %pgbuf.3194 = phi i32 [ %pgbuf.2, %while.body.lr.ph ], [ %dec, %put_page.exit.while.body_crit_edge ]
  %54 = ptrtoint ptr %pages100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pages100, align 4
  %dec = add i32 %pgbuf.3194, -1
  %arrayidx101 = getelementptr ptr, ptr %55, i32 %dec
  %56 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx101, align 4
  %58 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  %and.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i174, label %if.then.i.i173, !prof !57

if.then.i.i173:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %60, -1
  br label %_compound_head.exit.i

if.end.i.i174:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %57 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i174, %if.then.i.i173
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i173 ], [ %61, %if.end.i.i174 ]
  %62 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %63 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i.i.i.i = icmp eq i32 %64, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !62

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %65, ptr noundef nonnull @.str.4) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %66 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !65
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %66, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@udmabuf_create, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !67

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %62, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %62) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %cmp98.not = icmp eq i32 %dec, 0
  br i1 %cmp98.not, label %put_page.exit.while.end_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

put_page.exit.while.end_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %put_page.exit.while.end_crit_edge, %err.while.end_crit_edge
  %tobool102.not = icmp eq ptr %memfd.1, null
  br i1 %tobool102.not, label %while.end.if.end104_crit_edge, label %if.then103

while.end.if.end104_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then103:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @fput(ptr noundef nonnull %memfd.1) #10
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %while.end.if.end104_crit_edge, %if.end7.i.if.end104_crit_edge, %kmalloc_array.exit.thread, %if.end9.if.end104_crit_edge, %if.end4.if.end104_crit_edge, %for.body.if.end104_crit_edge
  %ret.0214218 = phi i32 [ %ret.0, %if.then103 ], [ %ret.0, %while.end.if.end104_crit_edge ], [ -12, %kmalloc_array.exit.thread ], [ -12, %if.end7.i.if.end104_crit_edge ], [ -22, %if.end9.if.end104_crit_edge ], [ -22, %if.end4.if.end104_crit_edge ], [ -22, %for.body.if.end104_crit_edge ]
  %pages105 = getelementptr inbounds %struct.udmabuf, ptr %call7.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %pages105 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pages105, align 4
  call void @kfree(ptr noundef %68) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.end91, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0214218, %if.end104 ], [ %call97, %if.end91 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memfd_fcntl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_fd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @map_udmabuf(ptr nocapture noundef readonly %at, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %at, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %at, align 4
  %call = tail call fastcc ptr @get_sg_table(ptr noundef %1, ptr noundef %3, i32 noundef %direction)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unmap_udmabuf(ptr nocapture noundef readonly %at, ptr noundef %sg, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %at, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %sg, i32 0, i32 2
  %4 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %direction, i32 noundef 0) #10
  tail call void @sg_free_table(ptr noundef %sg) #10
  tail call void @kfree(ptr noundef %sg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_udmabuf(ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sg = getelementptr inbounds %struct.udmabuf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.udmabuf, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %this_device = getelementptr inbounds %struct.miscdevice, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %this_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %this_device, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0, i32 noundef 0) #10
  tail call void @sg_free_table(ptr noundef nonnull %3) #10
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11.not = icmp eq i32 %13, 0
  br i1 %cmp11.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pages = getelementptr inbounds %struct.udmabuf, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %pg.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %pg.012
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %20, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %17 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %21, %if.end.i.i ]
  %22 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %23 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !62

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !65
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@release_udmabuf, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !67

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %22, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %22) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %pg.012, 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %pages2 = getelementptr inbounds %struct.udmabuf, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %pages2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages2, align 4
  tail call void @kfree(ptr noundef %30) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @begin_cpu_udmabuf(ptr nocapture noundef readonly %buf, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %device = getelementptr inbounds %struct.udmabuf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %this_device = getelementptr inbounds %struct.miscdevice, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %this_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %this_device, align 4
  %sg = getelementptr inbounds %struct.udmabuf, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc ptr @get_sg_table(ptr noundef %5, ptr noundef %buf, i32 noundef %direction)
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %sg, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %9, i32 0
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nents, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %5, ptr noundef %11, i32 noundef %13, i32 noundef %direction) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.else ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @end_cpu_udmabuf(ptr nocapture noundef readonly %buf, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sg = getelementptr inbounds %struct.udmabuf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.udmabuf, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %this_device = getelementptr inbounds %struct.miscdevice, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %this_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %this_device, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nents, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %direction) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmap_udmabuf(ptr nocapture noundef readonly %buf, ptr nocapture noundef %vma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %and = and i32 %1, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %4 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @udmabuf_vm_ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %5 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %vm_private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_sg_table(ptr noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pages = getelementptr inbounds %struct.udmabuf, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pages, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %shl = shl i32 %6, 12
  %call.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %call7.i.i, ptr noundef %4, i32 noundef %6, i32 noundef 0, i32 noundef %shl, i32 noundef -1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.err_crit_edge, label %if.end5

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @dma_map_sgtable(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %direction, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.err_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

err:                                              ; preds = %if.end5.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.err_crit_edge ], [ %call6, %if.end5.err_crit_edge ]
  tail call void @sg_free_table(ptr noundef nonnull %call7.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %7 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %err ], [ %call7.i.i, %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udmabuf_vm_fault(ptr nocapture noundef %vmf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %pages = getelementptr inbounds %struct.udmabuf, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 4
  %pgoff = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 2
  %6 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgoff, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %10 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %page, align 4
  %11 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %17, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !62

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.5) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@udmabuf_vm_fault, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !67

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %15, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__param_list_limit, !1, !"__param_list_limit", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/udmabuf.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_list_limittype296, !1, !"__UNIQUE_ID_list_limittype296", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_list_limit297, !4, !"__UNIQUE_ID_list_limit297", i1 false, i1 false}
!4 = !{!"../drivers/dma-buf/udmabuf.c", i32 18, i32 1}
!5 = !{ptr @__param_size_limit_mb, !6, !"__param_size_limit_mb", i1 false, i1 false}
!6 = !{!"../drivers/dma-buf/udmabuf.c", i32 21, i32 1}
!7 = !{ptr @__UNIQUE_ID_size_limit_mbtype298, !6, !"__UNIQUE_ID_size_limit_mbtype298", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_size_limit_mb299, !9, !"__UNIQUE_ID_size_limit_mb299", i1 false, i1 false}
!9 = !{!"../drivers/dma-buf/udmabuf.c", i32 22, i32 1}
!10 = !{ptr @__initcall__kmod_udmabuf__300_372_udmabuf_dev_init6, !11, !"__initcall__kmod_udmabuf__300_372_udmabuf_dev_init6", i1 false, i1 false}
!11 = !{!"../drivers/dma-buf/udmabuf.c", i32 372, i32 1}
!12 = !{ptr @__exitcall_udmabuf_dev_exit, !13, !"__exitcall_udmabuf_dev_exit", i1 false, i1 false}
!13 = !{!"../drivers/dma-buf/udmabuf.c", i32 373, i32 1}
!14 = !{ptr @__UNIQUE_ID_author301, !15, !"__UNIQUE_ID_author301", i1 false, i1 false}
!15 = !{!"../drivers/dma-buf/udmabuf.c", i32 375, i32 1}
!16 = !{ptr @__UNIQUE_ID_file302, !17, !"__UNIQUE_ID_file302", i1 false, i1 false}
!17 = !{!"../drivers/dma-buf/udmabuf.c", i32 376, i32 1}
!18 = !{ptr @__UNIQUE_ID_license303, !17, !"__UNIQUE_ID_license303", i1 false, i1 false}
!19 = !{ptr @__param_str_list_limit, !1, !"__param_str_list_limit", i1 false, i1 false}
!20 = !{ptr @list_limit, !21, !"list_limit", i1 false, i1 false}
!21 = !{!"../drivers/dma-buf/udmabuf.c", i32 16, i32 12}
!22 = !{ptr @__param_str_size_limit_mb, !6, !"__param_str_size_limit_mb", i1 false, i1 false}
!23 = !{ptr @size_limit_mb, !24, !"size_limit_mb", i1 false, i1 false}
!24 = !{!"../drivers/dma-buf/udmabuf.c", i32 20, i32 12}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma-buf/udmabuf.c", i32 358, i32 20}
!27 = !{ptr @udmabuf_misc, !28, !"udmabuf_misc", i1 false, i1 false}
!28 = !{!"../drivers/dma-buf/udmabuf.c", i32 356, i32 26}
!29 = !{ptr @udmabuf_fops, !30, !"udmabuf_fops", i1 false, i1 false}
!30 = !{!"../drivers/dma-buf/udmabuf.c", i32 348, i32 37}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!33 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/mm.h", i32 717, i32 2}
!40 = !{ptr @udmabuf_ops, !41, !"udmabuf_ops", i1 false, i1 false}
!41 = !{!"../drivers/dma-buf/udmabuf.c", i32 150, i32 33}
!42 = !{ptr @udmabuf_vm_ops, !43, !"udmabuf_vm_ops", i1 false, i1 false}
!43 = !{!"../drivers/dma-buf/udmabuf.c", i32 41, i32 42}
!44 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2153368825, i64 2153368850}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 5864380}
!59 = !{i64 5864577}
!60 = !{i64 2153349810}
!61 = !{!"auto-init"}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2153666152, i64 2153666635, i64 2153666189, i64 2153666245, i64 2153666279, i64 2153666303, i64 2153666344, i64 2153666365, i64 2153666393, i64 2153666427}
!64 = !{i64 2148488759}
!65 = !{i64 2148403468, i64 2148403500, i64 2148403529, i64 2148403563, i64 2148403594, i64 2148403617}
!66 = !{i64 2148488988}
!67 = !{i64 2148869674, i64 2148869679, i64 2148869692, i64 2148869736, i64 2148869770, i64 2148869791}
!68 = !{i64 2153686064, i64 2153686548, i64 2153686101, i64 2153686157, i64 2153686191, i64 2153686215, i64 2153686256, i64 2153686277, i64 2153686305, i64 2153686339}
!69 = !{i64 2148400283, i64 2148400309, i64 2148400338, i64 2148400372, i64 2148400403, i64 2148400426}
