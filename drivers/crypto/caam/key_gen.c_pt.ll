; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/key_gen.c_pt.bc'
source_filename = "../drivers/crypto/caam/key_gen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+split_key_done\22, \22a\22\09"
module asm "\09.weak\09__crc_split_key_done\09\09\09\09"
module asm "\09.long\09__crc_split_key_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_split_key_done:\09\09\09\09\09"
module asm "\09.asciz \09\22split_key_done\22\09\09\09\09\09"
module asm "__kstrtabns_split_key_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_split_key\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_split_key\09\09\09\09"
module asm "\09.long\09__crc_gen_split_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_split_key:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_split_key\22\09\09\09\09\09"
module asm "__kstrtabns_gen_split_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.split_key_result = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.alginfo = type { i32, i32, i32, i32, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.page = type { i32, %union.anon.2, %union.anon.129, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.129 = type { %struct.atomic_t }

@split_key_done.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 5, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"caam_jr\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"split_key_done\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/crypto/caam/key_gen.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s %d: err 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_split_key_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_split_key_done = external dso_local constant [0 x i8], align 1
@__ksymtab_split_key_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @split_key_done to i32), ptr @__kstrtab_split_key_done, ptr @__kstrtabns_split_key_done }, section "___ksymtab+split_key_done", align 4
@gen_split_key.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gen_split_key\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"split keylen %d split keylen padded %d\0A\00", [56 x i8] zeroinitializer }, align 32
@gen_split_key.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ctx.key@61: \00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@gen_split_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 69, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to allocate key input memory\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gen_split_key._entry_ptr = internal global ptr @gen_split_key._entry, section ".printk_index", align 4
@gen_split_key._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 77, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to map key memory\0A\00", [38 x i8] zeroinitializer }, align 32
@gen_split_key._entry_ptr.13 = internal global ptr @gen_split_key._entry.11, section ".printk_index", align 4
@gen_split_key.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.14, i8 0, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jobdesc@103: \00", [18 x i8] zeroinitializer }, align 32
@gen_split_key.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.15, i8 0, i8 29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx.key@116: \00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_gen_split_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_split_key = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_split_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_split_key to i32), ptr @__kstrtab_gen_split_key, ptr @__kstrtabns_gen_split_key }, section "___ksymtab+gen_split_key", align 4
@split_key_len.mdpadlen = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\10\14  @@", [26 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@append_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%02d: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"append_key\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/crypto/caam/desc_constr.h\00", [62 x i8] zeroinitializer }, align 32
@append_key._entry_ptr = internal global ptr @append_key._entry, section ".printk_index", align 4
@append_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.21, ptr @.str.20, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"append_operation\00", [47 x i8] zeroinitializer }, align 32
@append_operation._entry_ptr = internal global ptr @append_operation._entry, section ".printk_index", align 4
@append_fifo_load_as_imm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.22, ptr @.str.20, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"append_fifo_load_as_imm\00", [40 x i8] zeroinitializer }, align 32
@append_fifo_load_as_imm._entry_ptr = internal global ptr @append_fifo_load_as_imm._entry, section ".printk_index", align 4
@append_fifo_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.23, ptr @.str.20, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"append_fifo_store\00", [46 x i8] zeroinitializer }, align 32
@append_fifo_store._entry_ptr = internal global ptr @append_fifo_store._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 20, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 59, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 61, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 69, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 77, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 103, i32 2 }
@___asan_gen_.71 = private constant [33 x i8] c"../drivers/crypto/caam/key_gen.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 116, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"mdpadlen\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [33 x i8] c"../drivers/crypto/caam/key_gen.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 19, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 326, i32 6 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 287, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 265, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 332, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [37 x i8] c"../drivers/crypto/caam/desc_constr.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 290, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 87, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab_gen_split_key, ptr @__ksymtab_split_key_done, ptr @append_fifo_load_as_imm._entry, ptr @append_fifo_load_as_imm._entry_ptr, ptr @append_fifo_store._entry, ptr @append_fifo_store._entry_ptr, ptr @append_key._entry, ptr @append_key._entry_ptr, ptr @append_operation._entry, ptr @append_operation._entry_ptr, ptr @gen_split_key._entry, ptr @gen_split_key._entry.11, ptr @gen_split_key._entry_ptr, ptr @gen_split_key._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @split_key_len.mdpadlen, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @init_completion.__key, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_split_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_split_key._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @split_key_len.mdpadlen to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_fifo_load_as_imm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_fifo_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @split_key_done(ptr noundef %dev, ptr nocapture readnone %desc, i32 noundef %err, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @split_key_done.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@split_key_done, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @split_key_done.__UNIQUE_ID_ddebug511, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef %err) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool4.not = icmp eq i32 %err, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @caam_strstatus(ptr noundef %dev, i32 noundef %err, i1 noundef zeroext false) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %ecode.0 = phi i32 [ %call6, %if.then5 ], [ 0, %do.end.if.end7_crit_edge ]
  %err8 = getelementptr inbounds %struct.split_key_result, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %err8 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ecode.0, ptr %err8, align 4
  tail call void @complete(ptr noundef %context) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_strstatus(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_split_key(ptr noundef %jrdev, ptr noundef %key_out, ptr nocapture noundef %adata, ptr noundef %key_in, i32 noundef %keylen, i32 noundef %max_keylen) #0 align 64 {
entry:
  %result = alloca %struct.split_key_result, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result) #6
  %0 = call ptr @memset(ptr %result, i32 255, i32 60)
  %1 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %adata, align 4
  %and = lshr i32 %2, 16
  %shr.i = and i32 %and, 15
  %arrayidx.i = getelementptr [6 x i8], ptr @split_key_len.mdpadlen, i32 0, i32 %shr.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %keylen1 = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 1
  %5 = ptrtoint ptr %keylen1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul.i, ptr %keylen1, align 4
  %add.i = add nuw nsw i32 %mul.i, 15
  %and.i151 = and i32 %add.i, 1008
  %keylen_pad = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 2
  %6 = ptrtoint ptr %keylen_pad to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i151, ptr %keylen_pad, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %and.i151, i32 %keylen)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gen_split_key.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gen_split_key, %do.body13)) #6
          to label %if.then [label %do.body13], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %keylen1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %keylen1, align 4
  %10 = ptrtoint ptr %keylen_pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %keylen_pad, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gen_split_key.__UNIQUE_ID_ddebug514, ptr noundef %jrdev, ptr noundef nonnull @.str.5, i32 noundef %9, i32 noundef %11) #6
  br label %do.body13

do.body13:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gen_split_key.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gen_split_key, %do.end30)) #6
          to label %if.then27 [label %do.end30], !srcloc !70

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key_in, i32 noundef %keylen, i1 noundef zeroext true) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body13
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %max_keylen)
  %cmp31 = icmp ugt i32 %7, %max_keylen
  br i1 %cmp31, label %do.end30.cleanup_crit_edge, label %if.end8.i

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %do.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %12 = load i32, ptr @caam_ptr_sz, align 4
  %mul = shl i32 %12, 1
  %add = add i32 %mul, 24
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3265) #9
  %tobool35.not = icmp eq ptr %call9.i, null
  br i1 %tobool35.not, label %do.end39, label %if.end40

do.end39:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end8.i
  %13 = call ptr @memcpy(ptr %key_out, ptr %key_in, i32 %keylen)
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %key_out) #6
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end40
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i153, !prof !71

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i153:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %jrdev) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i152 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i152, label %if.end.i.i154, label %if.then.i153.dev_name.exit.i_crit_edge

if.then.i153.dev_name.exit.i_crit_edge:           ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i154:                                    ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jrdev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i154, %if.then.i153.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i154 ], [ %15, %if.then.i153.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %jrdev, i32 noundef -1) #6
  br label %do.end47

dma_map_single_attrs.exit:                        ; preds = %if.end40
  tail call void @debug_dma_map_single(ptr noundef %jrdev, ptr noundef %key_out, i32 noundef %7) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %key_out to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i155 = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i155
  %and.i156 = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %jrdev, ptr noundef %add.ptr.i, i32 noundef %and.i156, i32 noundef %7, i32 noundef 0, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %jrdev, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i158 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i158, label %dma_map_single_attrs.exit.do.end47_crit_edge, label %if.end48

dma_map_single_attrs.exit.do.end47_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

do.end47:                                         ; preds = %dma_map_single_attrs.exit.do.end47_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.12) #10
  br label %out_free

if.end48:                                         ; preds = %dma_map_single_attrs.exit
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %20 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i.i = icmp eq i8 %20, 0
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 -1333788671, i32 16810160
  %21 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i.i.i, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i.i159 = icmp eq i8 %20, 0
  %22 = lshr i32 %retval.0.i.i.i, 24
  %retval.0.i.i.i160 = select i1 %tobool.not.i.i.i159, i32 %retval.0.i.i.i, i32 %22
  %and.i.i161 = and i32 %retval.0.i.i.i160, 49
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %and.i.i161, ptr noundef getelementptr inbounds ([11 x i8], ptr @.str.19, i32 0, i32 7)) #10
  %or.i.i = or i32 %keylen, 67108864
  %23 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %25, 0
  %26 = lshr i32 %24, 24
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %24, i32 %26
  %and.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i = getelementptr i32, ptr %call9.i, i32 %and.i.i.i.i.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i.i, i32 %27
  %28 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %29 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %31 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i6.i.i.i = icmp eq i8 %31, 0
  %32 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %retval.0.i7.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %30, i32 %32
  %add.i.i.i = add i32 %retval.0.i7.i.i.i, 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #6
  %retval.0.i9.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %add.i.i.i, i32 %33
  %34 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i9.i.i.i, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %35 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i.i.i2.i.i = icmp eq i8 %35, 0
  %36 = lshr i32 %retval.0.i9.i.i.i, 24
  %retval.0.i.i.i.i3.i.i = select i1 %tobool.not.i.i.i.i2.i.i, i32 %retval.0.i9.i.i.i, i32 %36
  %and.i.i.i4.i.i = and i32 %retval.0.i.i.i.i3.i.i, 127
  %add.ptr.i.i5.i.i = getelementptr i32, ptr %call9.i, i32 %and.i.i.i4.i.i
  %37 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #6
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i2.i.i, i32 %call41.i, i32 %37
  %38 = ptrtoint ptr %add.ptr.i.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i.i.i.i.i, ptr %add.ptr.i.i5.i.i, align 4
  %39 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %41 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i.i.i = icmp eq i8 %41, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  %retval.0.i.i6.i.i = select i1 %tobool.not.i.i.i.i, i32 %40, i32 %42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %43 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i = lshr i32 %43, 2
  %add.i7.i.i = add i32 %retval.0.i.i6.i.i, %div14.i.i.i
  %44 = tail call i32 @llvm.bswap.i32(i32 %add.i7.i.i) #6
  %retval.0.i23.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i7.i.i, i32 %44
  %45 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i23.i.i.i, ptr %call9.i, align 128
  %46 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %adata, align 4
  %and50 = and i32 %47, 16711680
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %48 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i.i162 = icmp eq i8 %48, 0
  %49 = lshr i32 %retval.0.i23.i.i.i, 24
  %retval.0.i.i.i163 = select i1 %tobool.not.i.i.i162, i32 %retval.0.i23.i.i.i, i32 %49
  %and.i.i164 = and i32 %retval.0.i.i.i163, 127
  %call2.i165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %and.i.i164, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.21, i32 0, i32 7)) #10
  %or.i = or i32 %and50, -2080374764
  %50 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %52 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i.i.i.i = icmp eq i8 %52, 0
  %53 = lshr i32 %51, 24
  %retval.0.i.i.i.i.i166 = select i1 %tobool.not.i.i.i.i.i, i32 %51, i32 %53
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i166, 127
  %add.ptr.i.i.i = getelementptr i32, ptr %call9.i, i32 %and.i.i.i.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %retval.0.i.i5.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i, i32 %54
  %55 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i.i5.i, ptr %add.ptr.i.i.i, align 4
  %56 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %58 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i6.i.i = icmp eq i8 %58, 0
  %59 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %57, i32 %59
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %60
  %61 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i9.i.i, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %62 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i.i167 = icmp eq i8 %62, 0
  %63 = lshr i32 %retval.0.i9.i.i, 24
  %retval.0.i.i.i168 = select i1 %tobool.not.i.i.i167, i32 %retval.0.i9.i.i, i32 %63
  %and.i.i169 = and i32 %retval.0.i.i.i168, 127
  %call2.i170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %and.i.i169, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.22, i32 0, i32 7)) #10
  %64 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %66 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i.i.i.i.i.i171 = icmp eq i8 %66, 0
  %67 = lshr i32 %65, 24
  %retval.0.i.i.i.i.i.i172 = select i1 %tobool.not.i.i.i.i.i.i171, i32 %65, i32 %67
  %and.i.i.i.i.i173 = and i32 %retval.0.i.i.i.i.i.i172, 127
  %add.ptr.i.i.i.i174 = getelementptr i32, ptr %call9.i, i32 %and.i.i.i.i.i173
  %retval.0.i.i.i.i175 = select i1 %tobool.not.i.i.i.i.i.i171, i32 613679104, i32 37924
  %68 = ptrtoint ptr %add.ptr.i.i.i.i174 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %retval.0.i.i.i.i175, ptr %add.ptr.i.i.i.i174, align 4
  %69 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %71 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i6.i.i.i176 = icmp eq i8 %71, 0
  %72 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  %retval.0.i7.i.i.i177 = select i1 %tobool.not.i6.i.i.i176, i32 %70, i32 %72
  %add.i.i.i178 = add i32 %retval.0.i7.i.i.i177, 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i178) #6
  %retval.0.i9.i.i.i179 = select i1 %tobool.not.i6.i.i.i176, i32 %add.i.i.i178, i32 %73
  %74 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i9.i.i.i179, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %75 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i.i.i1.i.i = icmp eq i8 %75, 0
  %76 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i9.i.i.i179) #6
  %retval.0.i.i2.i.i = select i1 %tobool.not.i.i.i.i1.i.i, i32 %retval.0.i9.i.i.i179, i32 %76
  %77 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i2.i.i) #6
  %retval.0.i2.i.i.i = select i1 %tobool.not.i.i.i.i1.i.i, i32 %retval.0.i9.i.i.i179, i32 %77
  %78 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %retval.0.i2.i.i.i, ptr %call9.i, align 128
  %79 = ptrtoint ptr %keylen1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %keylen1, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %81 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i.i.i180 = icmp eq i8 %81, 0
  %82 = lshr i32 %retval.0.i2.i.i.i, 24
  %retval.0.i.i.i181 = select i1 %tobool.not.i.i.i180, i32 %retval.0.i2.i.i.i, i32 %82
  %and.i.i182 = and i32 %retval.0.i.i.i181, 127
  %call2.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %and.i.i182, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.23, i32 0, i32 7)) #10
  %or.i.i184 = or i32 %80, 1680211968
  %83 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %85 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i.i.i.i.i185 = icmp eq i8 %85, 0
  %86 = lshr i32 %84, 24
  %retval.0.i.i.i.i.i.i186 = select i1 %tobool.not.i.i.i.i.i.i185, i32 %84, i32 %86
  %and.i.i.i.i.i187 = and i32 %retval.0.i.i.i.i.i.i186, 127
  %add.ptr.i.i.i.i188 = getelementptr i32, ptr %call9.i, i32 %and.i.i.i.i.i187
  %87 = tail call i32 @llvm.bswap.i32(i32 %or.i.i184) #6
  %retval.0.i.i.i.i189 = select i1 %tobool.not.i.i.i.i.i.i185, i32 %or.i.i184, i32 %87
  %88 = ptrtoint ptr %add.ptr.i.i.i.i188 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i.i.i.i189, ptr %add.ptr.i.i.i.i188, align 4
  %89 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %91 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i6.i.i.i190 = icmp eq i8 %91, 0
  %92 = tail call i32 @llvm.bswap.i32(i32 %90) #6
  %retval.0.i7.i.i.i191 = select i1 %tobool.not.i6.i.i.i190, i32 %90, i32 %92
  %add.i.i.i192 = add i32 %retval.0.i7.i.i.i191, 1
  %93 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i192) #6
  %retval.0.i9.i.i.i193 = select i1 %tobool.not.i6.i.i.i190, i32 %add.i.i.i192, i32 %93
  %94 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %retval.0.i9.i.i.i193, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %95 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i.i.i.i2.i.i194 = icmp eq i8 %95, 0
  %96 = lshr i32 %retval.0.i9.i.i.i193, 24
  %retval.0.i.i.i.i3.i.i195 = select i1 %tobool.not.i.i.i.i2.i.i194, i32 %retval.0.i9.i.i.i193, i32 %96
  %and.i.i.i4.i.i196 = and i32 %retval.0.i.i.i.i3.i.i195, 127
  %add.ptr.i.i5.i.i197 = getelementptr i32, ptr %call9.i, i32 %and.i.i.i4.i.i196
  %retval.0.i.i.i.i.i198 = select i1 %tobool.not.i.i.i.i2.i.i194, i32 %call41.i, i32 %37
  %97 = ptrtoint ptr %add.ptr.i.i5.i.i197 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %retval.0.i.i.i.i.i198, ptr %add.ptr.i.i5.i.i197, align 4
  %98 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %100 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i.i.i.i199 = icmp eq i8 %100, 0
  %101 = tail call i32 @llvm.bswap.i32(i32 %99) #6
  %retval.0.i.i6.i.i200 = select i1 %tobool.not.i.i.i.i199, i32 %99, i32 %101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %102 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i201 = lshr i32 %102, 2
  %add.i7.i.i202 = add i32 %retval.0.i.i6.i.i200, %div14.i.i.i201
  %103 = tail call i32 @llvm.bswap.i32(i32 %add.i7.i.i202) #6
  %retval.0.i23.i.i.i203 = select i1 %tobool.not.i.i.i.i199, i32 %add.i7.i.i202, i32 %103
  %104 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %retval.0.i23.i.i.i203, ptr %call9.i, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gen_split_key.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gen_split_key, %do.end73)) #6
          to label %if.then69 [label %do.end73], !srcloc !70

if.then69:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %107 = load i8, ptr @caam_little_end, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i.i.i204 = icmp eq i8 %107, 0
  %108 = lshr i32 %106, 24
  %retval.0.i.i.i205 = select i1 %tobool.not.i.i.i204, i32 %106, i32 %108
  %and.i.i206 = shl i32 %retval.0.i.i.i205, 2
  %mul.i207 = and i32 %and.i.i206, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %call9.i, i32 noundef %mul.i207, i1 noundef zeroext true) #6
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %if.end48
  %err = getelementptr inbounds %struct.split_key_result, ptr %result, i32 0, i32 1
  %109 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %err, align 4
  %110 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %result, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %result, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #6
  %call74 = call i32 @caam_jr_enqueue(ptr noundef %jrdev, ptr noundef nonnull %call9.i, ptr noundef nonnull @split_key_done, ptr noundef nonnull %result) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call74)
  %cmp75 = icmp eq i32 %call74, -115
  br i1 %cmp75, label %if.then76, label %do.end73.if.end98_crit_edge

do.end73.if.end98_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then76:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  call void @wait_for_completion(ptr noundef nonnull %result) #6
  %111 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %err, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gen_split_key.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gen_split_key, %if.end98)) #6
          to label %if.then93 [label %if.end98], !srcloc !70

if.then93:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %keylen_pad to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %keylen_pad, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key_out, i32 noundef %114, i1 noundef zeroext true) #6
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.then76, %do.end73.if.end98_crit_edge
  %ret.0 = phi i32 [ %112, %if.then93 ], [ %call74, %do.end73.if.end98_crit_edge ], [ %112, %if.then76 ]
  call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %call41.i, i32 noundef %7, i32 noundef 0, i32 noundef 0) #6
  br label %out_free

out_free:                                         ; preds = %if.end98, %do.end47
  %ret.1 = phi i32 [ -12, %do.end47 ], [ %ret.0, %if.end98 ]
  call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end39, %do.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free ], [ -12, %do.end39 ], [ -22, %do.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_jr_enqueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/caam/key_gen.c", i32 20, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @split_key_done.__UNIQUE_ID_ddebug511, !1, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!6 = !{ptr @__ksymtab_split_key_done, !7, !"__ksymtab_split_key_done", i1 false, i1 false}
!7 = !{!"../drivers/crypto/caam/key_gen.c", i32 29, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/caam/key_gen.c", i32 59, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @gen_split_key.__UNIQUE_ID_ddebug514, !9, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/caam/key_gen.c", i32 61, i32 2}
!14 = !{ptr @gen_split_key.__UNIQUE_ID_ddebug515, !13, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/caam/key_gen.c", i32 69, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gen_split_key._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @gen_split_key._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/caam/key_gen.c", i32 77, i32 3}
!24 = !{ptr @gen_split_key._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @gen_split_key._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/caam/key_gen.c", i32 103, i32 2}
!28 = !{ptr @gen_split_key.__UNIQUE_ID_ddebug516, !27, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/crypto/caam/key_gen.c", i32 116, i32 3}
!31 = !{ptr @gen_split_key.__UNIQUE_ID_ddebug517, !30, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!32 = !{ptr @__ksymtab_gen_split_key, !33, !"__ksymtab_gen_split_key", i1 false, i1 false}
!33 = !{!"../drivers/crypto/caam/key_gen.c", i32 126, i32 1}
!34 = !{ptr @split_key_len.mdpadlen, !35, !"mdpadlen", i1 false, i1 false}
!35 = !{!"../drivers/crypto/caam/key_gen.h", i32 19, i32 18}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/caam/desc_constr.h", i32 287, i32 1}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @append_key._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @append_key._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/caam/desc_constr.h", i32 265, i32 1}
!48 = !{ptr @append_operation._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @append_operation._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/caam/desc_constr.h", i32 332, i32 1}
!52 = !{ptr @append_fifo_load_as_imm._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @append_fifo_load_as_imm._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/caam/desc_constr.h", i32 290, i32 1}
!56 = !{ptr @append_fifo_store._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @append_fifo_store._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @init_completion.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/completion.h", i32 87, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148694430, i64 2148694435, i64 2148694448, i64 2148694492, i64 2148694526, i64 2148694547}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i8 0, i8 2}
