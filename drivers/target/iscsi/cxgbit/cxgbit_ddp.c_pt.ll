; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/cxgbit/cxgbit_ddp.c_pt.bc'
source_filename = "../drivers/target/iscsi/cxgbit/cxgbit_ddp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.159 }
%union.anon.159 = type { i32 }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.2 }
%union.anon.2 = type { ptr, [124 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.iscsi_cmd = type { i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [52 x i8], %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.timer_list, ptr, ptr, [5 x %struct.kvec], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.se_cmd, [98 x i8], i32, [4 x i8], ptr, i32, i32, i32, [124 x i8] }
%struct.kvec = type { ptr, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cxgbit_sock_common = type { ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.cxgbit_wr_wait, i32, i32 }
%struct.cxgbit_wr_wait = type { %struct.completion, i32 }
%struct.cxgbit_cmd = type { %struct.scatterlist, %struct.cxgbi_task_tag_info, i8, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.cxgbi_task_tag_info = type { i8, i8, i16, i32, i32, i32, %struct.cxgbi_pagepod_hdr, i32, i32, ptr }
%struct.cxgbi_pagepod_hdr = type { i32, i32, i32, i32, i64 }
%struct.iscsi_r2t = type { i32, i32, i32, i32, i32, i32, i32, %struct.list_head, [92 x i8] }
%struct.cxgbit_device = type { %struct.list_head, %struct.cxgb4_lld_info, [32 x ptr], %struct.spinlock, [4 x [2 x i8]], %struct.cxgbit_list_head, i32, %struct.kref, i32 }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.cxgbit_list_head = type { %struct.list_head, %struct.spinlock }
%struct.cxgbi_ppm = type { %struct.kref, ptr, ptr, ptr, ptr, %struct.cxgbi_tag_format, i32, i32, i32, i32, i32, ptr, %struct.spinlock, i32, i32, i32, ptr, [0 x %struct.cxgbi_ppod_data] }
%struct.cxgbi_tag_format = type { [4 x i8], i8, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.cxgbi_ppod_data = type { i8, i8, i16, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.195, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.195 = type { ptr }
%struct.cxgbit_sock = type { %struct.cxgbit_sock_common, ptr, ptr, ptr, ptr, %struct.list_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.ulp_mem_io = type { %struct.work_request_hdr, i32, i32, i32, i32 }
%struct.cxgbi_pagepod = type { %struct.cxgbi_pagepod_hdr, [5 x i64] }
%struct.page = type { i32, %union.anon.19, %union.anon.157, %struct.atomic_t, i32 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.157 = type { %struct.atomic_t }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }

@cxgbit_get_r2t_ttt.__UNIQUE_ID_ddebug662 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxgbit\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxgbit_get_r2t_ttt\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/target/iscsi/cxgbit/cxgbit_ddp.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"csk 0x%p, cmd 0x%p, xfer len %u, sgcnt %u no ddp.\0A\00", [45 x i8] zeroinitializer }, align 32
@cxgbit_get_r2t_ttt.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cdev 0x%p, cmd 0x%p, tag 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@cxgbit_ddp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s, iscsi NOT enabled, check config!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxgbit_ddp_init\00", [16 x i8] zeroinitializer }, align 32
@cxgbit_ddp_init._entry_ptr = internal global ptr @cxgbit_ddp_init._entry, section ".printk_index", align 4
@cxgbit_ddp_reserve.__UNIQUE_ID_ddebug660 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxgbit_ddp_reserve\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ppm 0x%p, pgidx %u, xfer %u, sgcnt %u, NO ddp.\0A\00", [48 x i8] zeroinitializer }, align 32
@cxgbit_ddp_reserve.__UNIQUE_ID_ddebug661 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: 0x%x, xfer %u, sgl %u dma mapping err.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@cxgbi_tagmask_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016ippm: tagmask 0x%x, rsvd %u=%u+%u+1, mask 0x%x,0x%x, pg %u,%u,%u,%u.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbi_tagmask_check\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h\00", [45 x i8] zeroinitializer }, align 32
@cxgbi_tagmask_check._entry_ptr = internal global ptr @cxgbi_tagmask_check._entry, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 250, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 259, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 304, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 182, i32 3 }
@___asan_gen_.45 = private constant [44 x i8] c"../drivers/target/iscsi/cxgbit/cxgbit_ddp.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 207, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 717, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [54 x i8] c"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 309, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @cxgbi_tagmask_check._entry, ptr @cxgbi_tagmask_check._entry_ptr, ptr @cxgbit_ddp_init._entry, ptr @cxgbit_ddp_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbit_ddp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_tagmask_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgbit_get_r2t_ttt(ptr nocapture noundef readonly %conn, ptr noundef %cmd, ptr nocapture noundef writeonly %r2t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1
  %ttinfo2 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 13
  %setup_ddp = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 28
  %4 = ptrtoint ptr %setup_ddp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %setup_ddp, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body23_crit_edge, label %lor.lhs.false

entry.do.body23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.cxgbit_sock_common, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %lor.lhs.false.do.body23_crit_edge, label %if.end

lor.lhs.false.do.body23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

if.end:                                           ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %setup_ddp to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %setup_ddp, align 8
  %t_data_sg = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 39
  %10 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t_data_sg, align 4
  %sgl = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 26
  %12 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %sgl, align 8
  %t_data_nents = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 41
  %13 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t_data_nents, align 4
  %nents = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 24
  %15 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nents, align 8
  %data_length = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %16 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_length, align 4
  %call9 = tail call fastcc i32 @cxgbit_ddp_reserve(ptr noundef %1, ptr noundef %ttinfo2, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_get_r2t_ttt.__UNIQUE_ID_ddebug662, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_get_r2t_ttt, %if.then15)) #6
          to label %do.end [label %if.then15], !srcloc !39

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_length, align 4
  %20 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nents, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_get_r2t_ttt.__UNIQUE_ID_ddebug662, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %cmd, i32 noundef %19, i32 noundef %21) #6
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %22 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %sgl, align 8
  %23 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %nents, align 8
  br label %do.body23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %release = getelementptr inbounds %struct.cxgbit_cmd, ptr %add.ptr.i, i32 0, i32 3
  %24 = ptrtoint ptr %release to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %release, align 1
  br label %do.body23

do.body23:                                        ; preds = %if.else, %do.end, %lor.lhs.false.do.body23_crit_edge, %entry.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_get_r2t_ttt.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_get_r2t_ttt, %if.then35)) #6
          to label %do.end38 [label %if.then35], !srcloc !39

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %tag = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 17
  %25 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tag, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_get_r2t_ttt.__UNIQUE_ID_ddebug663, ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef %cmd, i32 noundef %26) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %do.body23
  %tag39 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 17
  %27 = ptrtoint ptr %tag39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tag39, align 4
  %targ_xfer_tag = getelementptr inbounds %struct.iscsi_r2t, ptr %r2t, i32 0, i32 5
  %29 = ptrtoint ptr %targ_xfer_tag to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %targ_xfer_tag, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgbit_ddp_reserve(ptr noundef %csk, ptr noundef %ttinfo, i32 noundef %xferlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 4
  %iscsi_ppm.i = getelementptr inbounds %struct.cxgbit_device, ptr %1, i32 0, i32 1, i32 39
  %2 = ptrtoint ptr %iscsi_ppm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iscsi_ppm.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sgl2 = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 9
  %6 = ptrtoint ptr %sgl2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgl2, align 8
  %nents = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 7
  %8 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nents, align 8
  %offset = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %xferlen)
  %cmp = icmp ult i32 %xferlen, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_ddp_reserve.__UNIQUE_ID_ddebug660, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_ddp_reserve, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !39

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pgsz_idx_dflt = getelementptr inbounds %struct.cxgbi_ppm, ptr %5, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %pgsz_idx_dflt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pgsz_idx_dflt, align 4
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nents, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_ddp_reserve.__UNIQUE_ID_ddebug660, ptr noundef nonnull @.str.8, ptr noundef %5, i32 noundef %conv, i32 noundef %xferlen, i32 noundef %15) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %sub.i = add i32 %9, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %if.end9
  %i.022.i = phi i32 [ %inc.i, %for.inc.critedge.i.for.body.i_crit_edge ], [ 0, %if.end9 ]
  %sg.addr.021.i = phi ptr [ %call.i, %for.inc.critedge.i.for.body.i_crit_edge ], [ %7, %if.end9 ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.021.i, i32 0, i32 2
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.021.i, i32 0, i32 1
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %19, %17
  %and.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022.i)
  %tobool2.not.i = icmp eq i32 %i.022.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.i = icmp eq i32 %19, 0
  %or.cond.i = select i1 %tobool2.not.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.022.i, i32 %sub.i)
  %cmp6.not.i = icmp eq i32 %i.022.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp8.not.i = icmp eq i32 %add.i, 4096
  %or.cond19.i = select i1 %cmp6.not.i, i1 true, i1 %cmp8.not.i
  br i1 %or.cond19.i, label %for.inc.critedge.i, label %lor.lhs.false5.i.cleanup_crit_edge

lor.lhs.false5.i.cleanup_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.critedge.i:                               ; preds = %lor.lhs.false5.i
  %inc.i = add nuw i32 %i.022.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.addr.021.i) #6
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %if.end14, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end14:                                         ; preds = %for.inc.critedge.i
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %add = add i32 %xferlen, 4095
  %sub = add i32 %add, %21
  %shr = lshr i32 %sub, 12
  %nr_pages = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 8
  %22 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr, ptr %nr_pages, align 4
  %conv18 = trunc i32 %shr to i16
  %idx = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 4
  %tag = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 5
  %call19 = tail call i32 @cxgbi_ppm_ppods_reserve(ptr noundef %5, i16 noundef zeroext %conv18, i32 noundef 0, ptr noundef %idx, ptr noundef %tag, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end14.cleanup_crit_edge, label %if.end23

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %npods = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 3
  %23 = ptrtoint ptr %npods to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call19, ptr %npods, align 4
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %offset, align 4
  %pdev = getelementptr inbounds %struct.cxgbi_ppm, ptr %5, i32 0, i32 2
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %call25 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %7, i32 noundef %9, i32 noundef 2, i32 noundef 0) #6
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %11, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %do.body29, label %if.end45

do.body29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbit_ddp_reserve.__UNIQUE_ID_ddebug661, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbit_ddp_reserve, %if.then41)) #6
          to label %rel_ppods [label %if.then41], !srcloc !39

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbit_ddp_reserve.__UNIQUE_ID_ddebug661, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef %xferlen, i32 noundef %9) #6
  br label %rel_ppods

if.end45:                                         ; preds = %if.end23
  %28 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tag, align 4
  %tid = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 26
  %30 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tid, align 4
  %hdr = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 6
  tail call void @cxgbi_ppm_make_ppod_hdr(ptr noundef %5, i32 noundef %29, i32 noundef %31, i32 noundef %11, i32 noundef %xferlen, ptr noundef %hdr) #6
  %32 = ptrtoint ptr %npods to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npods, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp22.not.i = icmp eq i32 %33, 0
  br i1 %cmp22.not.i, label %if.end45.cleanup_crit_edge, label %for.body.lr.ph.i

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end45
  %34 = ptrtoint ptr %sgl2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sgl2, align 8
  %36 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idx, align 8
  %llimit.i.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %5, i32 0, i32 7
  %ppodq.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 8
  %prev.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 8, i32 0, i32 0, i32 1
  %qlen.i.i.i.i.i = getelementptr inbounds %struct.cxgbit_sock, ptr %csk, i32 0, i32 8, i32 1
  br label %for.body.i105

for.body.i105:                                    ; preds = %for.inc.i.for.body.i105_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i106, %for.inc.i.for.body.i105_crit_edge ]
  %pidx.025.i = phi i32 [ %37, %for.body.lr.ph.i ], [ %add6.i, %for.inc.i.for.body.i105_crit_edge ]
  %offset.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %offset.2.i, %for.inc.i.for.body.i105_crit_edge ]
  %sg.023.i = phi ptr [ %35, %for.body.lr.ph.i ], [ %sg.2.i, %for.inc.i.for.body.i105_crit_edge ]
  %sub.i104 = sub i32 %33, %i.026.i
  %38 = tail call i32 @llvm.umin.i32(i32 %sub.i104, i32 3) #6
  %39 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tid, align 4
  %41 = ptrtoint ptr %llimit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %llimit.i.i.i, align 4
  %shl1.i.i.i = shl nuw nsw i32 %38, 6
  %div1.i.i.i = or i32 %shl1.i.i.i, 48
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef %div1.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then51, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i105
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i.i.i.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.end.i.i, label %do.body3.i.i.i.i, !prof !40

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #6, !srcloc !41
  unreachable

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %shl.i.i.i = shl i32 %pidx.025.i, 6
  %add.i.i.i = add i32 %42, %shl.i.i.i
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %46, i32 %div1.i.i.i
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %len9.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %len9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len9.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %48, %div1.i.i.i
  store i32 %add.i.i.i.i, ptr %len9.i.i.i.i, align 4
  %sub6.i.i.i = shl nuw nsw i32 %38, 2
  %shl9.i.i.i = shl i32 %40, 8
  %div72.i.i.i = or i32 %shl9.i.i.i, %sub6.i.i.i
  %or.i.i.i = or i32 %div72.i.i.i, 3
  %wr_mid.i.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %wr_mid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i.i.i, ptr %wr_mid.i.i.i, align 4
  %wr_lo.i.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %46, i32 0, i32 2
  %50 = ptrtoint ptr %wr_lo.i.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %wr_lo.i.i.i, align 8
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 67108864, ptr %46, align 8
  %cmd.i.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %46, i32 0, i32 1
  %52 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 58720256, ptr %cmd.i.i.i, align 8
  %shr.i.i.i = shl nuw nsw i32 %38, 1
  %dlen15.i.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %46, i32 0, i32 3
  %53 = ptrtoint ptr %dlen15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shr.i.i.i, ptr %dlen15.i.i.i, align 8
  %shr16.i.i.i = lshr i32 %add.i.i.i, 5
  %lock_addr.i.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %46, i32 0, i32 4
  %54 = ptrtoint ptr %lock_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr16.i.i.i, ptr %lock_addr.i.i.i, align 4
  %div213.i.i.i = or i32 %sub6.i.i.i, 2
  %len16.i.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %46, i32 0, i32 2
  %55 = ptrtoint ptr %len16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div213.i.i.i, ptr %len16.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.ulp_mem_io, ptr %46, i32 1
  %56 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -2130706432, ptr %add.ptr.i.i.i, align 4
  %len.i.i.i = getelementptr %struct.ulp_mem_io, ptr %46, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shl1.i.i.i, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp17.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp17.not.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %58 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i, align 4
  %add.ptr2.i.i = getelementptr %struct.ulp_mem_io, ptr %59, i32 1, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cxgbit_set_one_ppod.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %sg.1.i = phi ptr [ %sg.023.i, %for.body.lr.ph.i.i ], [ %sg.1.3.i.i.i, %cxgbit_set_one_ppod.exit.i.i.for.body.i.i_crit_edge ]
  %offset.1.i = phi i32 [ %offset.024.i, %for.body.lr.ph.i.i ], [ %offset.1.3.i.i.i, %cxgbit_set_one_ppod.exit.i.i.for.body.i.i_crit_edge ]
  %i.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %cxgbit_set_one_ppod.exit.i.i.for.body.i.i_crit_edge ]
  %ppod.018.i.i = phi ptr [ %add.ptr2.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %cxgbit_set_one_ppod.exit.i.i.for.body.i.i_crit_edge ]
  %60 = call ptr @memcpy(ptr %ppod.018.i.i, ptr %hdr, i32 24)
  %tobool6.not.i.i.i = icmp eq ptr %sg.1.i, null
  br i1 %tobool6.not.i.i.i, label %if.else.i.i.i, label %if.then8.i.i.i

if.then8.i.i.i:                                   ; preds = %for.body.i.i
  %dma_address.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1.i, i32 0, i32 3
  %61 = ptrtoint ptr %dma_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_address.i.i.i, align 4
  %dma_length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1.i, i32 0, i32 4
  %63 = ptrtoint ptr %dma_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_length.i.i.i, align 4
  %add.i16.i.i = add i32 %62, %offset.1.i
  %conv.i.i.i = zext i32 %add.i16.i.i to i64
  %arrayidx.i.i.i = getelementptr %struct.cxgbi_pagepod, ptr %ppod.018.i.i, i32 0, i32 1, i32 0
  %65 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv.i.i.i, ptr %arrayidx.i.i.i, align 8
  %add10.i.i.i = add i32 %offset.1.i, 4096
  %offset11.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1.i, i32 0, i32 1
  %66 = ptrtoint ptr %offset11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %offset11.i.i.i, align 4
  %add12.i.i.i = add i32 %67, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i.i.i, i32 %add12.i.i.i)
  %cmp13.i.i.i = icmp eq i32 %add10.i.i.i, %add12.i.i.i
  br i1 %cmp13.i.i.i, label %if.then15.i.i.i, label %if.then8.i.i.i.if.then8.1.i.i.i_crit_edge

if.then8.i.i.i.if.then8.1.i.i.i_crit_edge:        ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8.1.i.i.i

if.then15.i.i.i:                                  ; preds = %if.then8.i.i.i
  %call.i.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.1.i) #6
  %tobool16.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool16.not.i.i.i, label %if.then15.i.i.i.if.else.1.i.i.i_crit_edge, label %if.then17.i.i.i

if.then15.i.i.i.if.else.1.i.i.i_crit_edge:        ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.1.i.i.i

if.then17.i.i.i:                                  ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address18.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call.i.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %dma_address18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_address18.i.i.i, align 4
  %dma_length19.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call.i.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %dma_length19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_length19.i.i.i, align 4
  br label %if.then8.1.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx23.i.i.i = getelementptr %struct.cxgbi_pagepod, ptr %ppod.018.i.i, i32 0, i32 1, i32 0
  %72 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %arrayidx23.i.i.i, align 8
  br label %if.else.1.i.i.i

if.then8.1.i.i.i:                                 ; preds = %if.then17.i.i.i, %if.then8.i.i.i.if.then8.1.i.i.i_crit_edge
  %sg.1.i.i.i = phi ptr [ %call.i.i.i, %if.then17.i.i.i ], [ %sg.1.i, %if.then8.i.i.i.if.then8.1.i.i.i_crit_edge ]
  %offset.1.i.i.i = phi i32 [ 0, %if.then17.i.i.i ], [ %add10.i.i.i, %if.then8.i.i.i.if.then8.1.i.i.i_crit_edge ]
  %addr.2.i.i.i = phi i32 [ %69, %if.then17.i.i.i ], [ %62, %if.then8.i.i.i.if.then8.1.i.i.i_crit_edge ]
  %len.2.i.i.i = phi i32 [ %71, %if.then17.i.i.i ], [ %64, %if.then8.i.i.i.if.then8.1.i.i.i_crit_edge ]
  %add.1.i.i.i = add i32 %addr.2.i.i.i, %offset.1.i.i.i
  %conv.1.i.i.i = zext i32 %add.1.i.i.i to i64
  %arrayidx.1.i.i.i = getelementptr %struct.cxgbi_pagepod, ptr %ppod.018.i.i, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv.1.i.i.i, ptr %arrayidx.1.i.i.i, align 8
  %add10.1.i.i.i = add i32 %offset.1.i.i.i, 4096
  %offset11.1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %offset11.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset11.1.i.i.i, align 4
  %add12.1.i.i.i = add i32 %75, %len.2.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.1.i.i.i, i32 %add12.1.i.i.i)
  %cmp13.1.i.i.i = icmp eq i32 %add10.1.i.i.i, %add12.1.i.i.i
  br i1 %cmp13.1.i.i.i, label %if.then15.1.i.i.i, label %if.then8.1.i.i.i.if.then8.2.i.i.i_crit_edge

if.then8.1.i.i.i.if.then8.2.i.i.i_crit_edge:      ; preds = %if.then8.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8.2.i.i.i

if.then15.1.i.i.i:                                ; preds = %if.then8.1.i.i.i
  %call.1.i.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.1.i.i.i) #6
  %tobool16.not.1.i.i.i = icmp eq ptr %call.1.i.i.i, null
  br i1 %tobool16.not.1.i.i.i, label %if.then15.1.i.i.i.if.else.2.i.i.i_crit_edge, label %if.then17.1.i.i.i

if.then15.1.i.i.i.if.else.2.i.i.i_crit_edge:      ; preds = %if.then15.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.2.i.i.i

if.then17.1.i.i.i:                                ; preds = %if.then15.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address18.1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call.1.i.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %dma_address18.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_address18.1.i.i.i, align 4
  %dma_length19.1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call.1.i.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %dma_length19.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_length19.1.i.i.i, align 4
  br label %if.then8.2.i.i.i

if.else.1.i.i.i:                                  ; preds = %if.else.i.i.i, %if.then15.i.i.i.if.else.1.i.i.i_crit_edge
  %offset.1.ph.i.i.i = phi i32 [ %offset.1.i, %if.else.i.i.i ], [ 0, %if.then15.i.i.i.if.else.1.i.i.i_crit_edge ]
  %addr.2.ph.i.i.i = phi i32 [ 0, %if.else.i.i.i ], [ %62, %if.then15.i.i.i.if.else.1.i.i.i_crit_edge ]
  %len.2.ph.i.i.i = phi i32 [ 0, %if.else.i.i.i ], [ %64, %if.then15.i.i.i.if.else.1.i.i.i_crit_edge ]
  %arrayidx23.1.i.i.i = getelementptr %struct.cxgbi_pagepod, ptr %ppod.018.i.i, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %arrayidx23.1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 0, ptr %arrayidx23.1.i.i.i, align 8
  br label %if.else.2.i.i.i

if.then8.2.i.i.i:                                 ; preds = %if.then17.1.i.i.i, %if.then8.1.i.i.i.if.then8.2.i.i.i_crit_edge
  %sg.1.1.i.i.i = phi ptr [ %call.1.i.i.i, %if.then17.1.i.i.i ], [ %sg.1.i.i.i, %if.then8.1.i.i.i.if.then8.2.i.i.i_crit_edge ]
  %offset.1.1.i.i.i = phi i32 [ 0, %if.then17.1.i.i.i ], [ %add10.1.i.i.i, %if.then8.1.i.i.i.if.then8.2.i.i.i_crit_edge ]
  %addr.2.1.i.i.i = phi i32 [ %77, %if.then17.1.i.i.i ], [ %addr.2.i.i.i, %if.then8.1.i.i.i.if.then8.2.i.i.i_crit_edge ]
  %len.2.1.i.i.i = phi i32 [ %79, %if.then17.1.i.i.i ], [ %len.2.i.i.i, %if.then8.1.i.i.i.if.then8.2.i.i.i_crit_edge ]
  %add.2.i.i.i = add i32 %addr.2.1.i.i.i, %offset.1.1.i.i.i
  %conv.2.i.i.i = zext i32 %add.2.i.i.i to i64
  %arrayidx.2.i.i.i = getelementptr %struct.cxgbi_pagepod, ptr %ppod.018.i.i, i32 0, i32 1, i32 2
  %81 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv.2.i.i.i, ptr %arrayidx.2.i.i.i, align 8
  %add10.2.i.i.i = add i32 %offset.1.1.i.i.i, 4096
  %offset11.2.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1.1.i.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %offset11.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset11.2.i.i.i, align 4
  %add12.2.i.i.i = add i32 %83, %len.2.1.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.2.i.i.i, i32 %add12.2.i.i.i)
  %cmp13.2.i.i.i = icmp eq i32 %add10.2.i.i.i, %add12.2.i.i.i
  br i1 %cmp13.2.i.i.i, label %if.then15.2.i.i.i, label %if.then8.2.i.i.i.if.then8.3.i.i.i_crit_edge

if.then8.2.i.i.i.if.then8.3.i.i.i_crit_edge:      ; preds = %if.then8.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8.3.i.i.i

if.then15.2.i.i.i:                                ; preds = %if.then8.2.i.i.i
  %call.2.i.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.1.1.i.i.i) #6
  %tobool16.not.2.i.i.i = icmp eq ptr %call.2.i.i.i, null
  br i1 %tobool16.not.2.i.i.i, label %if.then15.2.i.i.i.if.else.3.i.i.i_crit_edge, label %if.then17.2.i.i.i

if.then15.2.i.i.i.if.else.3.i.i.i_crit_edge:      ; preds = %if.then15.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.3.i.i.i

if.then17.2.i.i.i:                                ; preds = %if.then15.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address18.2.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call.2.i.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %dma_address18.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_address18.2.i.i.i, align 4
  %dma_length19.2.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call.2.i.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %dma_length19.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dma_length19.2.i.i.i, align 4
  br label %if.then8.3.i.i.i

if.else.2.i.i.i:                                  ; preds = %if.else.1.i.i.i, %if.then15.1.i.i.i.if.else.2.i.i.i_crit_edge
  %offset.1.1.ph.i.i.i = phi i32 [ %offset.1.ph.i.i.i, %if.else.1.i.i.i ], [ 0, %if.then15.1.i.i.i.if.else.2.i.i.i_crit_edge ]
  %addr.2.1.ph.i.i.i = phi i32 [ %addr.2.ph.i.i.i, %if.else.1.i.i.i ], [ %addr.2.i.i.i, %if.then15.1.i.i.i.if.else.2.i.i.i_crit_edge ]
  %len.2.1.ph.i.i.i = phi i32 [ %len.2.ph.i.i.i, %if.else.1.i.i.i ], [ %len.2.i.i.i, %if.then15.1.i.i.i.if.else.2.i.i.i_crit_edge ]
  %arrayidx23.2.i.i.i = getelementptr %struct.cxgbi_pagepod, ptr %ppod.018.i.i, i32 0, i32 1, i32 2
  %88 = ptrtoint ptr %arrayidx23.2.i.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %arrayidx23.2.i.i.i, align 8
  br label %if.else.3.i.i.i

if.then8.3.i.i.i:                                 ; preds = %if.then17.2.i.i.i, %if.then8.2.i.i.i.if.then8.3.i.i.i_crit_edge
  %sg.1.2.i.i.i = phi ptr [ %call.2.i.i.i, %if.then17.2.i.i.i ], [ %sg.1.1.i.i.i, %if.then8.2.i.i.i.if.then8.3.i.i.i_crit_edge ]
  %offset.1.2.i.i.i = phi i32 [ 0, %if.then17.2.i.i.i ], [ %add10.2.i.i.i, %if.then8.2.i.i.i.if.then8.3.i.i.i_crit_edge ]
  %addr.2.2.i.i.i = phi i32 [ %85, %if.then17.2.i.i.i ], [ %addr.2.1.i.i.i, %if.then8.2.i.i.i.if.then8.3.i.i.i_crit_edge ]
  %len.2.2.i.i.i = phi i32 [ %87, %if.then17.2.i.i.i ], [ %len.2.1.i.i.i, %if.then8.2.i.i.i.if.then8.3.i.i.i_crit_edge ]
  %add.3.i.i.i = add i32 %addr.2.2.i.i.i, %offset.1.2.i.i.i
  %conv.3.i.i.i = zext i32 %add.3.i.i.i to i64
  %arrayidx.3.i.i.i = getelementptr %struct.cxgbi_pagepod, ptr %ppod.018.i.i, i32 0, i32 1, i32 3
  %89 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv.3.i.i.i, ptr %arrayidx.3.i.i.i, align 8
  %add10.3.i.i.i = add i32 %offset.1.2.i.i.i, 4096
  %offset11.3.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1.2.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %offset11.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offset11.3.i.i.i, align 4
  %add12.3.i.i.i = add i32 %91, %len.2.2.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.3.i.i.i, i32 %add12.3.i.i.i)
  %cmp13.3.i.i.i = icmp eq i32 %add10.3.i.i.i, %add12.3.i.i.i
  br i1 %cmp13.3.i.i.i, label %if.then15.3.i.i.i, label %if.then8.3.i.i.i.for.inc.3.i.i.i_crit_edge

if.then8.3.i.i.i.for.inc.3.i.i.i_crit_edge:       ; preds = %if.then8.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i.i.i

if.then15.3.i.i.i:                                ; preds = %if.then8.3.i.i.i
  %call.3.i.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.1.2.i.i.i) #6
  %tobool16.not.3.i.i.i = icmp eq ptr %call.3.i.i.i, null
  br i1 %tobool16.not.3.i.i.i, label %if.then15.3.i.i.i.for.inc.3.i.i.i_crit_edge, label %if.then17.3.i.i.i

if.then15.3.i.i.i.for.inc.3.i.i.i_crit_edge:      ; preds = %if.then15.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i.i.i

if.then17.3.i.i.i:                                ; preds = %if.then15.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address18.3.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call.3.i.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %dma_address18.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma_address18.3.i.i.i, align 4
  %dma_length19.3.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call.3.i.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %dma_length19.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_length19.3.i.i.i, align 4
  br label %for.inc.3.i.i.i

if.else.3.i.i.i:                                  ; preds = %if.else.2.i.i.i, %if.then15.2.i.i.i.if.else.3.i.i.i_crit_edge
  %offset.1.2.ph.i.i.i = phi i32 [ %offset.1.1.ph.i.i.i, %if.else.2.i.i.i ], [ 0, %if.then15.2.i.i.i.if.else.3.i.i.i_crit_edge ]
  %addr.2.2.ph.i.i.i = phi i32 [ %addr.2.1.ph.i.i.i, %if.else.2.i.i.i ], [ %addr.2.1.i.i.i, %if.then15.2.i.i.i.if.else.3.i.i.i_crit_edge ]
  %len.2.2.ph.i.i.i = phi i32 [ %len.2.1.ph.i.i.i, %if.else.2.i.i.i ], [ %len.2.1.i.i.i, %if.then15.2.i.i.i.if.else.3.i.i.i_crit_edge ]
  %arrayidx23.3.i.i.i = getelementptr %struct.cxgbi_pagepod, ptr %ppod.018.i.i, i32 0, i32 1, i32 3
  %96 = ptrtoint ptr %arrayidx23.3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 0, ptr %arrayidx23.3.i.i.i, align 8
  br label %for.inc.3.i.i.i

for.inc.3.i.i.i:                                  ; preds = %if.else.3.i.i.i, %if.then17.3.i.i.i, %if.then15.3.i.i.i.for.inc.3.i.i.i_crit_edge, %if.then8.3.i.i.i.for.inc.3.i.i.i_crit_edge
  %sg.1.3.i.i.i = phi ptr [ %call.3.i.i.i, %if.then17.3.i.i.i ], [ null, %if.then15.3.i.i.i.for.inc.3.i.i.i_crit_edge ], [ %sg.1.2.i.i.i, %if.then8.3.i.i.i.for.inc.3.i.i.i_crit_edge ], [ null, %if.else.3.i.i.i ]
  %offset.1.3.i.i.i = phi i32 [ 0, %if.then17.3.i.i.i ], [ 0, %if.then15.3.i.i.i.for.inc.3.i.i.i_crit_edge ], [ %add10.3.i.i.i, %if.then8.3.i.i.i.for.inc.3.i.i.i_crit_edge ], [ %offset.1.2.ph.i.i.i, %if.else.3.i.i.i ]
  %addr.2.3.i.i.i = phi i32 [ %93, %if.then17.3.i.i.i ], [ %addr.2.2.i.i.i, %if.then15.3.i.i.i.for.inc.3.i.i.i_crit_edge ], [ %addr.2.2.i.i.i, %if.then8.3.i.i.i.for.inc.3.i.i.i_crit_edge ], [ %addr.2.2.ph.i.i.i, %if.else.3.i.i.i ]
  %len.2.3.i.i.i = phi i32 [ %95, %if.then17.3.i.i.i ], [ %len.2.2.i.i.i, %if.then15.3.i.i.i.for.inc.3.i.i.i_crit_edge ], [ %len.2.2.i.i.i, %if.then8.3.i.i.i.for.inc.3.i.i.i_crit_edge ], [ %len.2.2.ph.i.i.i, %if.else.3.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1.3.i.i.i, i32 %len.2.3.i.i.i)
  %cmp28.i.i.i = icmp eq i32 %offset.1.3.i.i.i, %len.2.3.i.i.i
  br i1 %cmp28.i.i.i, label %if.then30.i.i.i, label %for.inc.3.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge

for.inc.3.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge: ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgbit_set_one_ppod.exit.i.i

if.then30.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %tobool31.not.i.i.i = icmp eq ptr %sg.1.3.i.i.i, null
  br i1 %tobool31.not.i.i.i, label %if.then30.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge, label %if.then32.i.i.i

if.then30.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge: ; preds = %if.then30.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgbit_set_one_ppod.exit.i.i

if.then32.i.i.i:                                  ; preds = %if.then30.i.i.i
  %call33.i.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.1.3.i.i.i) #6
  %tobool34.not.i.i.i = icmp eq ptr %call33.i.i.i, null
  br i1 %tobool34.not.i.i.i, label %if.then32.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge, label %if.then35.i.i.i

if.then32.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge: ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxgbit_set_one_ppod.exit.i.i

if.then35.i.i.i:                                  ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address36.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call33.i.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %dma_address36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dma_address36.i.i.i, align 4
  br label %cxgbit_set_one_ppod.exit.i.i

cxgbit_set_one_ppod.exit.i.i:                     ; preds = %if.then35.i.i.i, %if.then32.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge, %if.then30.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge, %for.inc.3.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge
  %sg.2.i.i.i = phi ptr [ %call33.i.i.i, %if.then35.i.i.i ], [ null, %if.then32.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge ], [ null, %if.then30.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge ], [ %sg.1.3.i.i.i, %for.inc.3.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge ]
  %offset.2.i.i.i = phi i32 [ 0, %if.then35.i.i.i ], [ 0, %if.then32.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge ], [ 0, %if.then30.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge ], [ %offset.1.3.i.i.i, %for.inc.3.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge ]
  %addr.3.i.i.i = phi i32 [ %98, %if.then35.i.i.i ], [ %addr.2.3.i.i.i, %if.then32.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge ], [ %addr.2.3.i.i.i, %if.then30.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge ], [ %addr.2.3.i.i.i, %for.inc.3.i.i.i.cxgbit_set_one_ppod.exit.i.i_crit_edge ]
  %tobool40.not.i.i.i = icmp eq ptr %sg.2.i.i.i, null
  %add42.i.i.i = add i32 %addr.3.i.i.i, %offset.2.i.i.i
  %conv43.i.i.i = zext i32 %add42.i.i.i to i64
  %cond46.i.i.i = select i1 %tobool40.not.i.i.i, i64 0, i64 %conv43.i.i.i
  %arrayidx48.i.i.i = getelementptr %struct.cxgbi_pagepod, ptr %ppod.018.i.i, i32 0, i32 1, i32 4
  %99 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %cond46.i.i.i, ptr %arrayidx48.i.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.cxgbi_pagepod, ptr %ppod.018.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %38
  br i1 %exitcond.not.i.i, label %cxgbit_set_one_ppod.exit.i.i.for.inc.i_crit_edge, label %cxgbit_set_one_ppod.exit.i.i.for.body.i.i_crit_edge

cxgbit_set_one_ppod.exit.i.i.for.body.i.i_crit_edge: ; preds = %cxgbit_set_one_ppod.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

cxgbit_set_one_ppod.exit.i.i.for.inc.i_crit_edge: ; preds = %cxgbit_set_one_ppod.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %cxgbit_set_one_ppod.exit.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge
  %sg.2.i = phi ptr [ %sg.023.i, %if.end.i.i.for.inc.i_crit_edge ], [ %sg.1.3.i.i.i, %cxgbit_set_one_ppod.exit.i.i.for.inc.i_crit_edge ]
  %offset.2.i = phi i32 [ %offset.024.i, %if.end.i.i.for.inc.i_crit_edge ], [ %offset.1.3.i.i.i, %cxgbit_set_one_ppod.exit.i.i.for.inc.i_crit_edge ]
  %100 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i.i.i, align 4
  %102 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %ppodq.i.i, ptr %call.i.i.i.i, align 8
  %prev10.i.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call.i.i.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %prev10.i.i.i.i.i, align 4
  store volatile ptr %call.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %call.i.i.i.i, ptr %101, align 4
  %105 = ptrtoint ptr %qlen.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %qlen.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %106, 1
  store volatile i32 %add.i.i.i.i.i, ptr %qlen.i.i.i.i.i, align 4
  %add.i106 = add i32 %38, %i.026.i
  %add6.i = add i32 %38, %pidx.025.i
  %cmp.i = icmp ugt i32 %33, %add.i106
  br i1 %cmp.i, label %for.inc.i.for.body.i105_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i.for.body.i105_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i105

if.then51:                                        ; preds = %for.body.i105
  %107 = ptrtoint ptr %ppodq.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ppodq.i.i, align 4
  %cmp.i.i2.i = icmp eq ptr %108, %ppodq.i.i
  %tobool.not.i13.i = icmp eq ptr %108, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then51.__skb_queue_purge.exit_crit_edge, label %if.then51.while.body.i_crit_edge

if.then51.while.body.i_crit_edge:                 ; preds = %if.then51
  br label %while.body.i

if.then51.__skb_queue_purge.exit_crit_edge:       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_queue_purge.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then51.while.body.i_crit_edge
  %109 = phi ptr [ %119, %while.body.i.while.body.i_crit_edge ], [ %108, %if.then51.while.body.i_crit_edge ]
  %110 = ptrtoint ptr %qlen.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %qlen.i.i.i.i.i, align 4
  %sub.i.i.i = add i32 %111, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i.i.i, align 4
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %109, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %109, i32 0, i32 1
  %114 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %109, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %113, i32 0, i32 1
  %116 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %115, ptr %prev17.i.i.i, align 4
  %117 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %113, ptr %115, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %109, i32 noundef 0) #6
  %118 = ptrtoint ptr %ppodq.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ppodq.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %119, %ppodq.i.i
  %tobool.not.i1.i = icmp eq ptr %119, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %if.then51.__skb_queue_purge.exit_crit_edge
  %120 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdev, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev53, ptr noundef %7, i32 noundef %9, i32 noundef 2, i32 noundef 0) #6
  br label %rel_ppods

rel_ppods:                                        ; preds = %__skb_queue_purge.exit, %if.then41, %do.body29
  %122 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %idx, align 8
  tail call void @cxgbi_ppm_ppod_release(ptr noundef %5, i32 noundef %123) #6
  br label %cleanup

cleanup:                                          ; preds = %rel_ppods, %for.inc.i.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false5.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ -22, %rel_ppods ], [ -22, %if.then7 ], [ %call19, %if.end14.cleanup_crit_edge ], [ -22, %do.body ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ], [ -22, %lor.lhs.false5.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgbit_unmap_cmd(ptr nocapture noundef readonly %conn, ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1
  %release = getelementptr inbounds %struct.cxgbit_cmd, ptr %add.ptr.i, i32 0, i32 3
  %0 = ptrtoint ptr %release to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %release, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then:                                          ; preds = %entry
  %se_cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 11
  %2 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %se_cmd_flags, align 16
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !40

do.body2.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

sg_page.exit:                                     ; preds = %if.then2
  %and.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i39 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39)
  %tobool.not.i.i = icmp eq i32 %and.i.i39, 0
  br i1 %tobool.not.i.i, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !40

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %9, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %6, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %10 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !43

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.10) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !44
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@cxgbit_unmap_cmd, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !39

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end23_crit_edge

folio_put_testzero.exit.i.i.if.end23_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %.pre-phi) #6
  br label %if.end23

if.else:                                          ; preds = %if.then
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %iscsi_ppm.i = getelementptr inbounds %struct.cxgbit_device, ptr %16, i32 0, i32 1, i32 39
  %17 = ptrtoint ptr %iscsi_ppm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iscsi_ppm.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write_data_done = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %21 = ptrtoint ptr %write_data_done to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %write_data_done, align 128
  %data_length = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %23 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not = icmp eq i32 %22, %24
  br i1 %cmp.not, label %if.else.if.end_crit_edge, label %if.then10, !prof !40

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cxgbit_abort_conn(ptr noundef %14) #6
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else.if.end_crit_edge
  %sgl = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 26
  %25 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sgl, align 8
  %tobool11.not = icmp eq ptr %26, null
  br i1 %tobool11.not, label %if.end.if.end22_crit_edge, label %if.then18, !prof !40

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.cxgbi_ppm, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %nents = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 24
  %29 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nents, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef nonnull %26, i32 noundef %30, i32 noundef 2, i32 noundef 0) #6
  %31 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %nents, align 8
  %32 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %sgl, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end.if.end22_crit_edge
  %idx = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 16
  %33 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %idx, align 8
  tail call void @cxgbi_ppm_ppod_release(ptr noundef %20, i32 noundef %34) #6
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end23_crit_edge
  %35 = ptrtoint ptr %release to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %release, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbit_abort_conn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_ppm_ppod_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbit_ddp_init(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  %tformat = alloca %struct.cxgbi_tag_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tformat) #6
  %vr = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vr, align 4
  %size = getelementptr inbounds %struct.cxgb4_virt_res, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat, i32 0, i32 9
  %9 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat, i32 0, i32 8
  %10 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat, i32 0, i32 7
  %11 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat, i32 0, i32 6
  %12 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat, i32 0, i32 5
  %13 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat, i32 0, i32 4
  %14 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat, i32 0, i32 3
  %15 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i8], ptr %tformat, i32 0, i32 3
  %17 = getelementptr inbounds [4 x i8], ptr %tformat, i32 0, i32 2
  %18 = getelementptr inbounds [4 x i8], ptr %tformat, i32 0, i32 1
  %lldi1 = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1
  %19 = getelementptr inbounds i8, ptr %tformat, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %19, align 4
  %iscsi_pgsz_order = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 36
  %21 = ptrtoint ptr %iscsi_pgsz_order to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iscsi_pgsz_order, align 4
  %23 = trunc i32 %22 to i8
  %conv = and i8 %23, 15
  %24 = ptrtoint ptr %tformat to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %tformat, align 4
  %shr.1 = lshr i32 %22, 8
  %25 = trunc i32 %shr.1 to i8
  %conv.1 = and i8 %25, 15
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.1, ptr %18, align 1
  %shr.2 = lshr i32 %22, 16
  %27 = trunc i32 %shr.2 to i8
  %conv.2 = and i8 %27, 15
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.2, ptr %17, align 2
  %shr.3 = lshr i32 %22, 24
  %29 = trunc i32 %shr.3 to i8
  %conv.3 = and i8 %29, 15
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.3, ptr %16, align 1
  %iscsi_tagmask = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 35
  %31 = ptrtoint ptr %iscsi_tagmask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iscsi_tagmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  %33 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 true) #6, !range !48
  %sub.i.i = sub nuw nsw i32 32, %33
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %34 = trunc i32 %cond.i.i to i8
  %.neg.i = mul i8 %34, -16
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %13, align 1
  %bf.set4.i = add i8 %.neg.i, -26
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %bf.set4.i, ptr %15, align 1
  %sub5.i = add nsw i32 %cond.i.i, -1
  %conv7.i = add nsw i8 %34, -7
  %37 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv7.i, ptr %14, align 2
  %shl.i = shl nuw i32 1, %sub5.i
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shl.i, ptr %12, align 4
  %conv10.i = zext i8 %conv7.i to i32
  %notmask.i = shl nsw i32 -1, %conv10.i
  %sub12.i = xor i32 %notmask.i, -1
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub12.i, ptr %11, align 4
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 63, ptr %10, align 4
  %sub15.i = add i32 %shl.i, -1
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub15.i, ptr %9, align 4
  %notmask63.i = shl nsw i32 -1, %cond.i.i
  %sub17.i = xor i32 %notmask63.i, -1
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub17.i, ptr %8, align 4
  %conv28.i = zext i8 %conv to i32
  %conv31.i = zext i8 %conv.1 to i32
  %conv34.i = zext i8 %conv.2 to i32
  %conv37.i = zext i8 %conv.3 to i32
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %32, i32 noundef %cond.i.i, i32 noundef %conv10.i, i32 noundef 6, i32 noundef %shl.i, i32 noundef %sub17.i, i32 noundef %conv28.i, i32 noundef %conv31.i, i32 noundef %conv34.i, i32 noundef %conv37.i) #9
  %iscsi_ppm = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 39
  %43 = ptrtoint ptr %iscsi_ppm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iscsi_ppm, align 4
  %45 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ports, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %lldi1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lldi1, align 4
  %51 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vr, align 4
  %iscsi10 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %52, i32 0, i32 1
  %size11 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %52, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size11, align 4
  %iscsi_llimit = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 1, i32 37
  %55 = ptrtoint ptr %iscsi_llimit to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iscsi_llimit, align 4
  %57 = ptrtoint ptr %iscsi10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iscsi10, align 4
  %ppod_edram = getelementptr inbounds %struct.cxgb4_virt_res, ptr %52, i32 0, i32 11
  %59 = ptrtoint ptr %ppod_edram to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ppod_edram, align 4
  %size18 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %52, i32 0, i32 11, i32 1
  %61 = ptrtoint ptr %size18 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size18, align 4
  %call19 = call i32 @cxgbi_ppm_init(ptr noundef %44, ptr noundef %48, ptr noundef %50, ptr noundef %lldi1, ptr noundef nonnull %tformat, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef 2, i32 noundef %60, i32 noundef %62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp20 = icmp sgt i32 %call19, -1
  br i1 %cmp20, label %if.then22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end
  %63 = ptrtoint ptr %iscsi_ppm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iscsi_ppm, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %pgsz_idx_dflt = getelementptr inbounds %struct.cxgbi_ppm, ptr %66, i32 0, i32 5, i32 1
  %67 = ptrtoint ptr %pgsz_idx_dflt to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pgsz_idx_dflt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %68)
  %cmp26 = icmp ult i8 %68, 4
  br i1 %cmp26, label %land.lhs.true, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then22
  %ppmax = getelementptr inbounds %struct.cxgbi_ppm, ptr %66, i32 0, i32 6
  %69 = ptrtoint ptr %ppmax to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ppmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %70)
  %cmp28 = icmp ugt i32 %70, 1023
  br i1 %cmp28, label %if.then30, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.cxgbit_device, ptr %cdev, i32 0, i32 8
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %land.lhs.true.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -13, %do.end ], [ %call19, %if.end.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tformat) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_ppm_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_ppm_ppods_reserve(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_ppm_make_ppod_hdr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_ddp.c", i32 250, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cxgbit_get_r2t_ttt.__UNIQUE_ID_ddebug662, !1, !"__UNIQUE_ID_ddebug662", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_ddp.c", i32 259, i32 2}
!8 = !{ptr @cxgbit_get_r2t_ttt.__UNIQUE_ID_ddebug663, !7, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_ddp.c", i32 304, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cxgbit_ddp_init._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @cxgbit_ddp_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_ddp.c", i32 182, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cxgbit_ddp_reserve.__UNIQUE_ID_ddebug660, !15, !"__UNIQUE_ID_ddebug660", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/target/iscsi/cxgbit/cxgbit_ddp.c", i32 207, i32 3}
!20 = !{ptr @cxgbit_ddp_reserve.__UNIQUE_ID_ddebug661, !19, !"__UNIQUE_ID_ddebug661", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/mm.h", i32 717, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h", i32 309, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cxgbi_tagmask_check._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @cxgbi_tagmask_check._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{i64 2148180405, i64 2148180410, i64 2148180423, i64 2148180467, i64 2148180501, i64 2148180522}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2154947568, i64 2154952117, i64 2154947605, i64 2154947661, i64 2154947695, i64 2154947719, i64 2154947760, i64 2154947781, i64 2154947809, i64 2154947843}
!42 = !{i64 2154767882, i64 2154768374, i64 2154767919, i64 2154767975, i64 2154768009, i64 2154768033, i64 2154768074, i64 2154768095, i64 2154768123, i64 2154768157}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2153802510, i64 2153802993, i64 2153802547, i64 2153802603, i64 2153802637, i64 2153802661, i64 2153802702, i64 2153802723, i64 2153802751, i64 2153802785}
!45 = !{i64 2148455464}
!46 = !{i64 2148370197, i64 2148370229, i64 2148370258, i64 2148370292, i64 2148370323, i64 2148370346}
!47 = !{i64 2148455693}
!48 = !{i32 0, i32 33}
