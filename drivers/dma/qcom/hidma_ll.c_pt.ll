; ModuleID = '/llk/IR_all_yes/drivers/dma/qcom/hidma_ll.c_pt.bc'
source_filename = "../drivers/dma/qcom/hidma_ll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hidma_lldev = type { i8, i8, i8, i8, i8, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.tasklet_struct, %struct.anon.71 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.70, i32 }
%union.anon.70 = type { ptr }
%struct.anon.71 = type { %union.anon.72, [0 x ptr] }
%union.anon.72 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hidma_tre = type { %struct.atomic_t, i8, i16, i32, i32, ptr, ptr, ptr, ptr, [9 x i32], i32, i32, i8, i8 }

@hidma_ll_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid TRE number in free:%d\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hidma_ll_free\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/dma/qcom/hidma_ll.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hidma_ll_free._entry_ptr = internal global ptr @hidma_ll_free._entry, section ".printk_index", align 4
@hidma_ll_free._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"trying to free an unused TRE:%d\00", [32 x i8] zeroinitializer }, align 32
@hidma_ll_free._entry_ptr.7 = internal global ptr @hidma_ll_free._entry.5, section ".printk_index", align 4
@hidma_ll_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 472, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"event channel did not get enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hidma_ll_enable\00", [16 x i8] zeroinitializer }, align 32
@hidma_ll_enable._entry_ptr = internal global ptr @hidma_ll_enable._entry, section ".printk_index", align 4
@hidma_ll_enable._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"transfer channel did not get enabled\0A\00", [58 x i8] zeroinitializer }, align 32
@hidma_ll_enable._entry_ptr.12 = internal global ptr @hidma_ll_enable._entry.10, section ".printk_index", align 4
@hidma_ll_set_transfer_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 607, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid TRE number in transfer params:%d\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hidma_ll_set_transfer_params\00", [35 x i8] zeroinitializer }, align 32
@hidma_ll_set_transfer_params._entry_ptr = internal global ptr @hidma_ll_set_transfer_params._entry, section ".printk_index", align 4
@hidma_ll_set_transfer_params._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 614, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"trying to set params on an unused TRE:%d\00", [55 x i8] zeroinitializer }, align 32
@hidma_ll_set_transfer_params._entry_ptr.17 = internal global ptr @hidma_ll_set_transfer_params._entry.15, section ".printk_index", align 4
@hidma_ll_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&lldev->lock\00", [19 x i8] zeroinitializer }, align 32
@hidma_post_completed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 202, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tre_index [%d] and tre out of sync\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hidma_post_completed\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hidma_post_completed._entry_ptr = internal global ptr @hidma_post_completed._entry, section ".printk_index", align 4
@hidma_post_completed._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 212, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tre count mismatch on completion\00", [63 x i8] zeroinitializer }, align 32
@hidma_post_completed._entry_ptr.24 = internal global ptr @hidma_post_completed._entry.22, section ".printk_index", align 4
@hidma_ll_int_handler_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 392, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error 0x%x, disabling...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hidma_ll_int_handler_internal\00", [34 x i8] zeroinitializer }, align 32
@hidma_ll_int_handler_internal._entry_ptr = internal global ptr @hidma_ll_int_handler_internal._entry, section ".printk_index", align 4
@hidma_handle_tre_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 249, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HW reports invalid EVRE write offset\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hidma_handle_tre_completion\00", [36 x i8] zeroinitializer }, align 32
@hidma_handle_tre_completion._entry_ptr = internal global ptr @hidma_handle_tre_completion._entry, section ".printk_index", align 4
@hidma_ll_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 330, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"transfer channel did not reset\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hidma_ll_reset\00", [17 x i8] zeroinitializer }, align 32
@hidma_ll_reset._entry_ptr = internal global ptr @hidma_ll_reset._entry, section ".printk_index", align 4
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 121, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 127, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 472, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 485, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 606, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 613, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 794, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 201, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 212, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 391, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 249, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [31 x i8] c"../drivers/dma/qcom/hidma_ll.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 330, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @hidma_handle_tre_completion._entry, ptr @hidma_handle_tre_completion._entry_ptr, ptr @hidma_ll_enable._entry, ptr @hidma_ll_enable._entry.10, ptr @hidma_ll_enable._entry_ptr, ptr @hidma_ll_enable._entry_ptr.12, ptr @hidma_ll_free._entry, ptr @hidma_ll_free._entry.5, ptr @hidma_ll_free._entry_ptr, ptr @hidma_ll_free._entry_ptr.7, ptr @hidma_ll_int_handler_internal._entry, ptr @hidma_ll_int_handler_internal._entry_ptr, ptr @hidma_ll_reset._entry, ptr @hidma_ll_reset._entry_ptr, ptr @hidma_ll_set_transfer_params._entry, ptr @hidma_ll_set_transfer_params._entry.15, ptr @hidma_ll_set_transfer_params._entry_ptr, ptr @hidma_ll_set_transfer_params._entry_ptr.17, ptr @hidma_post_completed._entry, ptr @hidma_post_completed._entry.22, ptr @hidma_post_completed._entry_ptr, ptr @hidma_post_completed._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @hidma_ll_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_ll_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_ll_free._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_ll_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_ll_enable._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_ll_set_transfer_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_ll_set_transfer_params._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_ll_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_post_completed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_post_completed._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_ll_int_handler_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_handle_tre_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidma_ll_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidma_ll_free(ptr nocapture noundef readonly %lldev, i32 noundef %tre_ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_tres = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 5
  %0 = ptrtoint ptr %nr_tres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_tres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %tre_ch)
  %cmp.not = icmp ugt i32 %1, %tre_ch
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %tre_ch) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %trepool = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 7
  %4 = ptrtoint ptr %trepool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trepool, align 4
  %arrayidx = getelementptr %struct.hidma_tre, ptr %5, i32 %tre_ch
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.not = icmp eq i32 %7, 1
  br i1 %cmp1.not, label %if.end7, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev6 = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %tre_ch) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #6
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end5, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidma_ll_request(ptr noundef %lldev, i32 noundef %sig, ptr noundef %dev_name, ptr noundef %callback, ptr noundef %data, ptr noundef writeonly %tre_ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tre_ch, null
  %tobool1.not = icmp eq ptr %lldev, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_tres = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 5
  %0 = ptrtoint ptr %nr_tres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_tres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp58.not = icmp eq i32 %1, 1
  br i1 %cmp58.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %trepool = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %trepool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trepool, align 4
  %arrayidx = getelementptr %struct.hidma_tre, ptr %3, i32 %i.059
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, i32 1, ptr elementtype(i32) %arrayidx) #6, !srcloc !68
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %for.inc, label %atomic_add_unless.exit.thread

atomic_add_unless.exit.thread:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !69
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.059, 1
  %5 = ptrtoint ptr %nr_tres to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_tres, align 4
  %sub = add i32 %6, -1
  %cmp = icmp ult i32 %inc, %sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %atomic_add_unless.exit.thread, %for.cond.preheader.for.end_crit_edge
  %i.055 = phi i32 [ %i.059, %atomic_add_unless.exit.thread ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %7 = ptrtoint ptr %nr_tres to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_tres, align 4
  %sub5 = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.055, i32 %sub5)
  %cmp6 = icmp eq i32 %i.055, %sub5
  br i1 %cmp6, label %for.end.cleanup_crit_edge, label %if.end8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %for.end
  %trepool9 = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 7
  %9 = ptrtoint ptr %trepool9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trepool9, align 4
  %dma_sig = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 4
  %11 = ptrtoint ptr %dma_sig to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sig, ptr %dma_sig, align 4
  %dev_name11 = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 5
  %12 = ptrtoint ptr %dev_name11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev_name, ptr %dev_name11, align 4
  %callback12 = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 6
  %13 = ptrtoint ptr %callback12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %callback, ptr %callback12, align 4
  %data13 = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 7
  %14 = ptrtoint ptr %data13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %data13, align 4
  %idx = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 3
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.055, ptr %idx, align 4
  %status = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 2
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %status, align 2
  %queued = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 1
  %17 = ptrtoint ptr %queued to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %queued, align 4
  %err_code = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 13
  %18 = ptrtoint ptr %err_code to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %err_code, align 1
  %err_info = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 12
  %19 = ptrtoint ptr %err_info to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %err_info, align 4
  %lldev14 = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 8
  %20 = ptrtoint ptr %lldev14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lldev, ptr %lldev14, align 4
  %tre_local15 = getelementptr %struct.hidma_tre, ptr %10, i32 %i.055, i32 9
  %chidx = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 4
  %21 = ptrtoint ptr %chidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chidx, align 4
  %conv = zext i8 %22 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, 65536
  %23 = ptrtoint ptr %tre_local15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %tre_local15, align 4
  %24 = ptrtoint ptr %tre_ch to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.055, ptr %tre_ch, align 4
  %tobool19.not = icmp eq ptr %callback, null
  br i1 %tobool19.not, label %if.end8.cleanup_crit_edge, label %if.then20

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %callback(ptr noundef %data) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end8.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidma_cleanup_pending_tre(ptr noundef %lldev, i8 noundef zeroext %err_info, i8 noundef zeroext %err_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_tre_count = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 12
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_tre_count, i32 noundef 4) #6
  %0 = ptrtoint ptr %pending_tre_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pending_tre_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = tail call fastcc i32 @hidma_post_completed(ptr noundef %lldev, i8 noundef zeroext %err_info, i8 noundef zeroext %err_code)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidma_post_completed(ptr noundef %lldev, i8 noundef zeroext %err_info, i8 noundef zeroext %err_code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tre_processed_off = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 16
  %0 = ptrtoint ptr %tre_processed_off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tre_processed_off, align 4
  %pending_tre_list = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 11
  %2 = ptrtoint ptr %pending_tre_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_tre_list, align 4
  %div95 = lshr i32 %1, 5
  %arrayidx = getelementptr ptr, ptr %3, i32 %div95
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %dev = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %div95) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tre_index = getelementptr inbounds %struct.hidma_tre, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %tre_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tre_index, align 4
  %arrayidx11 = getelementptr ptr, ptr %3, i32 %9
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx11, align 4
  %pending_tre_count = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_tre_count, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %pending_tre_count, i32 1, i32 3, i32 1) #6
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_tre_count, ptr %pending_tre_count, i32 1, ptr elementtype(i32) %pending_tre_count) #6, !srcloc !71
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp13 = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp13, label %do.end18, label %if.end.do.body22_crit_edge

if.end.do.body22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev19 = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %12 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.23) #9
  %call.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_tre_count, i32 noundef 4) #6
  %14 = ptrtoint ptr %pending_tre_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %pending_tre_count, align 4
  br label %do.body22

do.body22:                                        ; preds = %do.end18, %if.end.do.body22_crit_edge
  %add = add i32 %1, 32
  %tre_ring_size = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 15
  %15 = ptrtoint ptr %tre_ring_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tre_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp23.not = icmp ult i32 %add, %16
  %sub = select i1 %cmp23.not, i32 0, i32 %16
  %spec.select = sub i32 %add, %sub
  %17 = ptrtoint ptr %tre_processed_off to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %tre_processed_off, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %err_info32 = getelementptr inbounds %struct.hidma_tre, ptr %5, i32 0, i32 12
  %18 = ptrtoint ptr %err_info32 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %err_info, ptr %err_info32, align 4
  %err_code33 = getelementptr inbounds %struct.hidma_tre, ptr %5, i32 0, i32 13
  %19 = ptrtoint ptr %err_code33 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %err_code, ptr %err_code33, align 1
  %queued = getelementptr inbounds %struct.hidma_tre, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %queued to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %queued, align 4
  %handoff_fifo = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 23
  %21 = ptrtoint ptr %handoff_fifo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %handoff_fifo, align 4
  %out = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 23, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out, align 4
  %sub39 = sub i32 %22, %24
  %mask = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 23, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39, i32 %26)
  %cmp40.not = icmp ugt i32 %sub39, %26
  br i1 %cmp40.not, label %do.body22.if.end56_crit_edge, label %if.then44

do.body22.if.end56_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then44:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 23, i32 0, i32 0, i32 4
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %and = and i32 %26, %22
  %arrayidx47 = getelementptr ptr, ptr %28, i32 %and
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %5, ptr %arrayidx47, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !73
  %30 = ptrtoint ptr %handoff_fifo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %handoff_fifo, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %handoff_fifo, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then44, %do.body22.if.end56_crit_edge
  %state.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 22, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %task = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 22
  tail call void @__tasklet_schedule(ptr noundef %task) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end56.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end56.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidma_ll_inthandler(i32 noundef %chirq, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %evca = getelementptr inbounds %struct.hidma_lldev, ptr %arg, i32 0, i32 10
  %0 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %evca, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !74
  %3 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %evca, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 272
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !74
  %6 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not24 = icmp eq i32 %6, 0
  br i1 %tobool.not24, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %cause.025 = phi i32 [ %15, %while.body.while.body_crit_edge ], [ %7, %while.body.preheader ]
  tail call fastcc void @hidma_ll_int_handler_internal(ptr noundef %arg, i32 noundef %cause.025)
  %8 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %evca, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 256
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !74
  %11 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %evca, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 272
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !74
  %14 = and i32 %13, %10
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidma_ll_int_handler_internal(ptr noundef %lldev, i32 noundef %cause) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cause, 19970
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %cause) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %cause)
  %evca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 10
  %3 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %evca, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !76
  %call = tail call i32 @hidma_ll_disable(ptr noundef %lldev)
  %pending_tre_count.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 12
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_tre_count.i, i32 noundef 4) #6
  %5 = ptrtoint ptr %pending_tre_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %pending_tre_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %while.cond.i.cleanup_crit_edge, label %while.body.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = tail call fastcc i32 @hidma_post_completed(ptr noundef %lldev, i8 noundef zeroext -1, i8 noundef zeroext 4) #6
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

do.body5:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 6
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %cause)
  %evca12 = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 10
  %8 = ptrtoint ptr %evca12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %evca12, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %7) #6, !srcloc !76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #6
  %evre_ring_size1.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 19
  %10 = ptrtoint ptr %evre_ring_size1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %evre_ring_size1.i, align 4
  %12 = ptrtoint ptr %evca12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %evca12, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !74
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %evre_processed_off.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 20
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp.i = icmp ule i32 %15, %11
  %rem.i = and i32 %15, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i26 = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %cmp.i, %tobool.not.i26
  br i1 %or.cond.i, label %while.cond.preheader.i, label %do.end.i

while.cond.preheader.i:                           ; preds = %do.body5
  %16 = ptrtoint ptr %evre_processed_off.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %evre_processed_off.i, align 4
  %evre_ring.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 17
  %trca.i.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 9
  %trch_state.i.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 2
  %evch_state.i.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 3
  br label %while.cond.i27

do.end.i:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.27) #9
  br label %cleanup

while.cond.i27:                                   ; preds = %land.lhs.true.i.i.while.cond.i27_crit_edge, %while.cond.preheader.i
  %num_completed.0.i = phi i32 [ %inc.i, %land.lhs.true.i.i.while.cond.i27_crit_edge ], [ 0, %while.cond.preheader.i ]
  %evre_iterator.0.i = phi i32 [ %spec.select.i, %land.lhs.true.i.i.while.cond.i27_crit_edge ], [ %17, %while.cond.preheader.i ]
  %evre_write_off.0.i = phi i32 [ %41, %land.lhs.true.i.i.while.cond.i27_crit_edge ], [ %15, %while.cond.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %evre_iterator.0.i, i32 %evre_write_off.0.i)
  %cmp2.not.i = icmp eq i32 %evre_iterator.0.i, %evre_write_off.0.i
  br i1 %cmp2.not.i, label %while.cond.i27.while.end.i_crit_edge, label %while.body.i28

while.cond.i27.while.end.i_crit_edge:             ; preds = %while.cond.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i28:                                   ; preds = %while.cond.i27
  %20 = ptrtoint ptr %evre_ring.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %evre_ring.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %21, i32 %evre_iterator.0.i
  %22 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr3.i, align 4
  %shr.i = lshr i32 %23, 24
  %shr4.i = lshr i32 %23, 28
  %24 = trunc i32 %shr.i to i8
  %conv.i = and i8 %24, 15
  %conv6.i = trunc i32 %shr4.i to i8
  %call7.i = tail call fastcc i32 @hidma_post_completed(ptr noundef %lldev, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.body11.i, label %while.body.i28.while.end.i_crit_edge

while.body.i28.while.end.i_crit_edge:             ; preds = %while.body.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.body11.i:                                      ; preds = %while.body.i28
  %25 = ptrtoint ptr %evca12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %evca12, align 4
  %add.ptr20.i = getelementptr i8, ptr %26, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #6, !srcloc !74
  %inc.i = add i32 %num_completed.0.i, 1
  %28 = ptrtoint ptr %trca.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trca.i.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !74
  %31 = lshr i32 %30, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %conv.i.i = trunc i32 %31 to i8
  %32 = ptrtoint ptr %trch_state.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i.i, ptr %trch_state.i.i, align 2
  %33 = ptrtoint ptr %evca12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %evca12, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !74
  %36 = lshr i32 %35, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %conv10.i.i = trunc i32 %36 to i8
  %37 = ptrtoint ptr %evch_state.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv10.i.i, ptr %evch_state.i.i, align 1
  %38 = ptrtoint ptr %trch_state.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %trch_state.i.i, align 2
  %conv12.i.i = zext i8 %39 to i32
  %40 = add nsw i32 %conv12.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %40)
  %switch.i.i.i = icmp ult i32 %40, -2
  br i1 %switch.i.i.i, label %do.body11.i.while.end.i_crit_edge, label %land.lhs.true.i.i

do.body11.i.while.end.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

land.lhs.true.i.i:                                ; preds = %do.body11.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %add.i = add i32 %evre_iterator.0.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp12.not.i = icmp ult i32 %add.i, %11
  %sub.i = select i1 %cmp12.not.i, i32 0, i32 %11
  %spec.select.i = sub i32 %add.i, %sub.i
  %conv15.i.i = and i32 %36, 255
  %42 = add nsw i32 %conv15.i.i, -3
  %switch.i25.i.i = icmp ult i32 %42, -2
  br i1 %switch.i25.i.i, label %land.lhs.true.i.i.while.end.i_crit_edge, label %land.lhs.true.i.i.while.cond.i27_crit_edge

land.lhs.true.i.i.while.cond.i27_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i27

land.lhs.true.i.i.while.end.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %land.lhs.true.i.i.while.end.i_crit_edge, %do.body11.i.while.end.i_crit_edge, %while.body.i28.while.end.i_crit_edge, %while.cond.i27.while.end.i_crit_edge
  %num_completed.2.i = phi i32 [ %num_completed.0.i, %while.cond.i27.while.end.i_crit_edge ], [ %inc.i, %do.body11.i.while.end.i_crit_edge ], [ %inc.i, %land.lhs.true.i.i.while.end.i_crit_edge ], [ %num_completed.0.i, %while.body.i28.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_completed.2.i)
  %tobool27.not.i = icmp eq i32 %num_completed.2.i, 0
  br i1 %tobool27.not.i, label %while.end.i.cleanup_crit_edge, label %if.then28.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %evre_processed_off.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %evre_processed_off.i, align 4
  %mul.i = shl i32 %num_completed.2.i, 4
  %add30.i = add i32 %44, %mul.i
  %rem31.i = urem i32 %add30.i, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %45 = tail call i32 @llvm.bswap.i32(i32 %rem31.i) #6
  %46 = ptrtoint ptr %evca12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %evca12, align 4
  %add.ptr36.i = getelementptr i8, ptr %47, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %45) #6, !srcloc !76
  %48 = ptrtoint ptr %evre_processed_off.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %rem31.i, ptr %evre_processed_off.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28.i, %while.end.i.cleanup_crit_edge, %do.end.i, %while.body.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidma_ll_inthandler_msi(i32 noundef %chirq, ptr noundef %arg, i32 noundef %cause) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hidma_ll_int_handler_internal(ptr noundef %arg, i32 noundef %cause)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidma_ll_enable(ptr nocapture noundef %lldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %evca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 10
  %0 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %evca, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %3 = and i32 %2, -65281
  %4 = or i32 %3, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %evca, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !76
  %call4 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call4, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 470) #6
  %7 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %evca, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !74
  %10 = lshr i32 %9, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %and22188 = and i32 %10, 255
  %11 = add nsw i32 %and22188, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %11)
  %switch.i189 = icmp ult i32 %11, -2
  br i1 %switch.i189, label %entry.land.lhs.true_crit_edge, label %entry.if.end53_crit_edge

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then40.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call27 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call27, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call27, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then40

if.then40:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %12 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %evca, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !74
  %15 = lshr i32 %14, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %and22 = and i32 %15, 255
  %16 = add nsw i32 %and22, -3
  %switch.i = icmp ult i32 %16, -2
  br i1 %switch.i, label %if.then40.land.lhs.true_crit_edge, label %if.then40.if.end53_crit_edge

if.then40.if.end53_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then40.land.lhs.true_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %17 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %evca, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !74
  %20 = lshr i32 %19, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %.pre195 = and i32 %20, 255
  %.pre196 = add nsw i32 %.pre195, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %.pre196)
  %switch.i171 = icmp ult i32 %.pre196, -2
  br i1 %switch.i171, label %do.end52, label %for.end.if.end53_crit_edge

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end52:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end53:                                         ; preds = %for.end.if.end53_crit_edge, %if.then40.if.end53_crit_edge, %entry.if.end53_crit_edge
  %trca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 9
  %23 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trca, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %26 = and i32 %25, -65281
  %27 = or i32 %26, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trca, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !76
  %call70 = tail call i64 @ktime_get() #6
  %add.i173 = add i64 %call70, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 483) #6
  %30 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trca, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !74
  %33 = lshr i32 %32, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %and93191 = and i32 %33, 255
  %34 = add nsw i32 %and93191, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %34)
  %switch.i175192 = icmp ult i32 %34, -2
  br i1 %switch.i175192, label %if.end53.land.lhs.true99_crit_edge, label %if.end53.if.end130_crit_edge

if.end53.if.end130_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.end53.land.lhs.true99_crit_edge:               ; preds = %if.end53
  br label %land.lhs.true99

land.lhs.true99:                                  ; preds = %if.then113.land.lhs.true99_crit_edge, %if.end53.land.lhs.true99_crit_edge
  %call100 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call100, i64 %add.i173)
  %cmp3.i178 = icmp sgt i64 %call100, %add.i173
  br i1 %cmp3.i178, label %for.end117, label %if.then113

if.then113:                                       ; preds = %land.lhs.true99
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %35 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trca, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !74
  %38 = lshr i32 %37, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %and93 = and i32 %38, 255
  %39 = add nsw i32 %and93, -3
  %switch.i175 = icmp ult i32 %39, -2
  br i1 %switch.i175, label %if.then113.land.lhs.true99_crit_edge, label %if.then113.if.end130_crit_edge

if.then113.if.end130_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.then113.land.lhs.true99_crit_edge:             ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true99

for.end117:                                       ; preds = %land.lhs.true99
  %40 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trca, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !74
  %43 = lshr i32 %42, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %.pre198 = and i32 %43, 255
  %.pre199 = add nsw i32 %.pre198, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %.pre199)
  %switch.i182 = icmp ult i32 %.pre199, -2
  br i1 %switch.i182, label %do.end128, label %for.end117.if.end130_crit_edge

for.end117.if.end130_crit_edge:                   ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

do.end128:                                        ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #8
  %dev129 = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %44 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev129, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end130:                                        ; preds = %for.end117.if.end130_crit_edge, %if.then113.if.end130_crit_edge, %if.end53.if.end130_crit_edge
  %trch_state = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 2
  %46 = ptrtoint ptr %trch_state to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %trch_state, align 2
  %evch_state = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 3
  %47 = ptrtoint ptr %evch_state to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %evch_state, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %evca, align 4
  %add.ptr135 = getelementptr i8, ptr %49, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 55443456) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %do.end128, %do.end52
  %retval.0 = phi i32 [ -110, %do.end52 ], [ -110, %do.end128 ], [ 0, %if.end130 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidma_ll_start(ptr noundef %lldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %tre_write_offset = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 21
  %0 = ptrtoint ptr %tre_write_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tre_write_offset, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %trca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 9
  %3 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trca, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hidma_ll_isenabled(ptr nocapture noundef %lldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %trca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 9
  %0 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trca, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !74
  %3 = lshr i32 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %conv = trunc i32 %3 to i8
  %trch_state = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 2
  %4 = ptrtoint ptr %trch_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %trch_state, align 2
  %evca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 10
  %5 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %evca, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !74
  %8 = lshr i32 %7, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %conv10 = trunc i32 %8 to i8
  %evch_state = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 3
  %9 = ptrtoint ptr %evch_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %evch_state, align 1
  %10 = ptrtoint ptr %trch_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %trch_state, align 2
  %conv12 = zext i8 %11 to i32
  %12 = add nsw i32 %conv12, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %12)
  %switch.i = icmp ult i32 %12, -2
  br i1 %switch.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv15 = and i32 %8, 255
  %13 = add nsw i32 %conv15, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %13)
  %switch.i25 = icmp ult i32 %13, -2
  br i1 %switch.i25, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidma_ll_queue_request(ptr noundef %lldev, i32 noundef %tre_ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %trepool = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 7
  %0 = ptrtoint ptr %trepool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trepool, align 4
  %arrayidx = getelementptr %struct.hidma_tre, ptr %1, i32 %tre_ch
  %lock = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tre_write_offset = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 21
  %2 = ptrtoint ptr %tre_write_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tre_write_offset, align 4
  %div28 = lshr i32 %3, 5
  %tre_index = getelementptr %struct.hidma_tre, ptr %1, i32 %tre_ch, i32 10
  %4 = ptrtoint ptr %tre_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div28, ptr %tre_index, align 4
  %pending_tre_list = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 11
  %5 = ptrtoint ptr %pending_tre_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pending_tre_list, align 4
  %arrayidx6 = getelementptr ptr, ptr %6, i32 %div28
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %arrayidx6, align 4
  %tre_ring = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 13
  %8 = ptrtoint ptr %tre_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tre_ring, align 4
  %10 = load i32, ptr %tre_write_offset, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %10
  %tre_local = getelementptr %struct.hidma_tre, ptr %1, i32 %tre_ch, i32 9
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %tre_local, i32 32)
  %err_code = getelementptr %struct.hidma_tre, ptr %1, i32 %tre_ch, i32 13
  %12 = ptrtoint ptr %err_code to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %err_code, align 1
  %err_info = getelementptr %struct.hidma_tre, ptr %1, i32 %tre_ch, i32 12
  %13 = ptrtoint ptr %err_info to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %err_info, align 4
  %queued = getelementptr %struct.hidma_tre, ptr %1, i32 %tre_ch, i32 1
  %14 = ptrtoint ptr %queued to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %queued, align 4
  %pending_tre_count = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_tre_count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %pending_tre_count, i32 1, i32 3, i32 1) #6
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_tre_count, ptr %pending_tre_count, i32 1, ptr elementtype(i32) %pending_tre_count) #6, !srcloc !90
  %16 = ptrtoint ptr %tre_write_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tre_write_offset, align 4
  %add = add i32 %17, 32
  %tre_ring_size = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 15
  %18 = ptrtoint ptr %tre_ring_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tre_ring_size, align 4
  %rem = urem i32 %add, %19
  store i32 %rem, ptr %tre_write_offset, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidma_ll_disable(ptr nocapture noundef %lldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %trca.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 9
  %0 = ptrtoint ptr %trca.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trca.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !74
  %3 = lshr i32 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %conv.i = trunc i32 %3 to i8
  %trch_state.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 2
  %4 = ptrtoint ptr %trch_state.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %trch_state.i, align 2
  %evca.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 10
  %5 = ptrtoint ptr %evca.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %evca.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !74
  %8 = lshr i32 %7, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %conv10.i = trunc i32 %8 to i8
  %evch_state.i = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 3
  %9 = ptrtoint ptr %evch_state.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10.i, ptr %evch_state.i, align 1
  %10 = ptrtoint ptr %trch_state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %trch_state.i, align 2
  %conv12.i = zext i8 %11 to i32
  %12 = add nsw i32 %conv12.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %12)
  %switch.i.i = icmp ult i32 %12, -2
  br i1 %switch.i.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %conv15.i = and i32 %8, 255
  %13 = add nsw i32 %conv15.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %13)
  %switch.i25.i = icmp ult i32 %13, -2
  br i1 %switch.i25.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %trca.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trca.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %17 = and i32 %16, -65281
  %18 = or i32 %17, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %trca.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trca.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !76
  %call5 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call5, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 571) #6
  %21 = ptrtoint ptr %trca.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trca.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !74
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %25 = and i32 %24, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %25)
  %cmp26170 = icmp eq i32 %25, 768
  br i1 %cmp26170, label %if.end.for.end_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %if.then42.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call29 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call29, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call29, %add.i
  br i1 %cmp3.i, label %if.then32, label %if.then42

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %trca.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trca.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !74
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %for.end

if.then42:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %30 = ptrtoint ptr %trca.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trca.i, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !74
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %34 = and i32 %33, 65280
  %cmp26 = icmp eq i32 %34, 768
  br i1 %cmp26, label %if.then42.for.end_crit_edge, label %if.then42.land.lhs.true_crit_edge

if.then42.land.lhs.true_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then42.for.end_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.then42.for.end_crit_edge, %if.then32, %if.end.for.end_crit_edge
  %val.0 = phi i32 [ %29, %if.then32 ], [ %24, %if.end.for.end_crit_edge ], [ %33, %if.then42.for.end_crit_edge ]
  %35 = and i32 %val.0, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %35)
  %cmp48 = icmp eq i32 %35, 768
  br i1 %cmp48, label %if.end51, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %for.end
  %36 = ptrtoint ptr %evca.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %evca.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %39 = and i32 %38, -65281
  %40 = or i32 %39, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %evca.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %evca.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #6, !srcloc !76
  %call68 = tail call i64 @ktime_get() #6
  %add.i161 = add i64 %call68, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 586) #6
  %43 = ptrtoint ptr %evca.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %evca.i, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !74
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %47 = and i32 %46, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %47)
  %cmp92171 = icmp eq i32 %47, 768
  br i1 %cmp92171, label %if.end51.for.end114_crit_edge, label %if.end51.land.lhs.true96_crit_edge

if.end51.land.lhs.true96_crit_edge:               ; preds = %if.end51
  br label %land.lhs.true96

if.end51.for.end114_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end114

land.lhs.true96:                                  ; preds = %if.then110.land.lhs.true96_crit_edge, %if.end51.land.lhs.true96_crit_edge
  %call97 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call97, i64 %add.i161)
  %cmp3.i163 = icmp sgt i64 %call97, %add.i161
  br i1 %cmp3.i163, label %if.then100, label %if.then110

if.then100:                                       ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %evca.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %evca.i, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !74
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  br label %for.end114

if.then110:                                       ; preds = %land.lhs.true96
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %52 = ptrtoint ptr %evca.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %evca.i, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !74
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %56 = and i32 %55, 65280
  %cmp92 = icmp eq i32 %56, 768
  br i1 %cmp92, label %if.then110.for.end114_crit_edge, label %if.then110.land.lhs.true96_crit_edge

if.then110.land.lhs.true96_crit_edge:             ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true96

if.then110.for.end114_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end114

for.end114:                                       ; preds = %if.then110.for.end114_crit_edge, %if.then100, %if.end51.for.end114_crit_edge
  %val.1 = phi i32 [ %51, %if.then100 ], [ %46, %if.end51.for.end114_crit_edge ], [ %55, %if.then110.for.end114_crit_edge ]
  %57 = and i32 %val.1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %57)
  %cmp118 = icmp eq i32 %57, 768
  br i1 %cmp118, label %if.end122, label %for.end114.cleanup_crit_edge

for.end114.cleanup_crit_edge:                     ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end122:                                        ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %trch_state.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 3, ptr %trch_state.i, align 2
  %59 = ptrtoint ptr %evch_state.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 3, ptr %evch_state.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %evca.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %evca.i, align 4
  %add.ptr127 = getelementptr i8, ptr %61, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 0) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %for.end114.cleanup_crit_edge, %for.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end122 ], [ -110, %for.end.cleanup_crit_edge ], [ -110, %for.end114.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidma_ll_set_transfer_params(ptr nocapture noundef readonly %lldev, i32 noundef %tre_ch, i32 noundef %src, i32 noundef %dest, i32 noundef %len, i32 noundef %flags, i32 noundef %txntype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_tres = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 5
  %0 = ptrtoint ptr %nr_tres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_tres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %tre_ch)
  %cmp.not = icmp ugt i32 %1, %tre_ch
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %tre_ch) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %trepool = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 7
  %4 = ptrtoint ptr %trepool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trepool, align 4
  %arrayidx = getelementptr %struct.hidma_tre, ptr %5, i32 %tre_ch
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.not = icmp eq i32 %7, 1
  br i1 %cmp1.not, label %if.end7, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev6 = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.16, i32 noundef %tre_ch) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tre_local8 = getelementptr %struct.hidma_tre, ptr %5, i32 %tre_ch, i32 9
  %10 = ptrtoint ptr %tre_local8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tre_local8, align 4
  %and = and i32 %11, -256
  %or = or i32 %and, %txntype
  store i32 %or, ptr %tre_local8, align 4
  %arrayidx12 = getelementptr i32, ptr %tre_local8, i32 1
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr i32, ptr %tre_local8, i32 2
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %src, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr i32, ptr %tre_local8, i32 3
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr i32, ptr %tre_local8, i32 4
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dest, ptr %arrayidx18, align 4
  %arrayidx21 = getelementptr i32, ptr %tre_local8, i32 5
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx21, align 4
  %int_flags = getelementptr %struct.hidma_tre, ptr %5, i32 %tre_ch, i32 11
  %17 = ptrtoint ptr %int_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %flags, ptr %int_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end5, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidma_ll_setup(ptr noundef %lldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_tres1 = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 5
  %0 = ptrtoint ptr %nr_tres1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_tres1, align 4
  %pending_tre_count = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_tre_count, i32 noundef 4) #6
  %2 = ptrtoint ptr %pending_tre_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %pending_tre_count, align 4
  %tre_processed_off = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 16
  %3 = ptrtoint ptr %tre_processed_off to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tre_processed_off, align 4
  %evre_processed_off = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 20
  %4 = ptrtoint ptr %evre_processed_off to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %evre_processed_off, align 4
  %tre_write_offset = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 21
  %5 = ptrtoint ptr %tre_write_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tre_write_offset, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %evca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 10
  %6 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %evca, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !76
  %8 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %evca, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 256
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %evca, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #6, !srcloc !76
  %call10 = tail call fastcc i32 @hidma_ll_reset(ptr noundef %lldev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %evca, align 4
  %add.ptr14 = getelementptr i8, ptr %14, i32 256
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %evca, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %15) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %evca, align 4
  %add.ptr27 = getelementptr i8, ptr %19, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #6, !srcloc !76
  %tre_dma = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 14
  %20 = ptrtoint ptr %tre_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tre_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %trca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 9
  %23 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trca, align 4
  %add.ptr32 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %22) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trca, align 4
  %add.ptr39 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %tre_ring_size = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 15
  %27 = ptrtoint ptr %tre_ring_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tre_ring_size, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trca, align 4
  %add.ptr44 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %29) #6, !srcloc !76
  %evre_dma = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 18
  %32 = ptrtoint ptr %evre_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %evre_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %evca, align 4
  %add.ptr52 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %34) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %evca, align 4
  %add.ptr60 = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %mul = shl i32 %1, 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %40 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %evca, align 4
  %add.ptr65 = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %39) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %evca, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %evca, align 4
  %add.ptr6.i = getelementptr i8, ptr %45, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #6, !srcloc !76
  %46 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %evca, align 4
  %add.ptr8.i = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %49 = and i32 %48, -251658241
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  %51 = ptrtoint ptr %lldev to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lldev, align 4, !range !115
  %53 = xor i8 %52, 1
  %54 = zext i8 %53 to i32
  %spec.select.i = or i32 %50, %54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %55 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %56 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %evca, align 4
  %add.ptr16.i = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %55) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %evca, align 4
  %add.ptr21.i = getelementptr i8, ptr %59, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 55443456) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %evca, align 4
  %add.ptr26.i = getelementptr i8, ptr %61, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 55443456) #6, !srcloc !76
  %call67 = tail call i32 @hidma_ll_enable(ptr noundef %lldev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %entry.cleanup_crit_edge ], [ %call67, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidma_ll_reset(ptr nocapture noundef %lldev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %trca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 9
  %0 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trca, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %3 = and i32 %2, -65281
  %4 = or i32 %3, 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trca, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !76
  %call4 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call4, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 328) #6
  %7 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trca, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !74
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %11 = and i32 %10, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp23162 = icmp eq i32 %11, 0
  br i1 %cmp23162, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %if.then39.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call26 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call26, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call26, %add.i
  br i1 %cmp3.i, label %if.then29, label %if.then39

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trca, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !74
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  br label %for.end

if.then39:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %16 = ptrtoint ptr %trca to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trca, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !74
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %20 = and i32 %19, 65280
  %cmp23 = icmp eq i32 %20, 0
  br i1 %cmp23, label %if.then39.for.end_crit_edge, label %if.then39.land.lhs.true_crit_edge

if.then39.land.lhs.true_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then39.for.end_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.then39.for.end_crit_edge, %if.then29, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %15, %if.then29 ], [ %10, %entry.for.end_crit_edge ], [ %19, %if.then39.for.end_crit_edge ]
  %21 = and i32 %val.0, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp45 = icmp eq i32 %21, 0
  br i1 %cmp45, label %if.end51, label %do.end50

do.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end51:                                         ; preds = %for.end
  %evca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 10
  %24 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %evca, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %27 = and i32 %26, -65281
  %28 = or i32 %27, 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %evca, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !76
  %call68 = tail call i64 @ktime_get() #6
  %add.i154 = add i64 %call68, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 345) #6
  %31 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %evca, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !74
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %35 = and i32 %34, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp92163 = icmp eq i32 %35, 0
  br i1 %cmp92163, label %if.end51.for.end114_crit_edge, label %if.end51.land.lhs.true96_crit_edge

if.end51.land.lhs.true96_crit_edge:               ; preds = %if.end51
  br label %land.lhs.true96

if.end51.for.end114_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end114

land.lhs.true96:                                  ; preds = %if.then110.land.lhs.true96_crit_edge, %if.end51.land.lhs.true96_crit_edge
  %call97 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call97, i64 %add.i154)
  %cmp3.i156 = icmp sgt i64 %call97, %add.i154
  br i1 %cmp3.i156, label %if.then100, label %if.then110

if.then100:                                       ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %evca, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !74
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  br label %for.end114

if.then110:                                       ; preds = %land.lhs.true96
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %40 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %evca, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !74
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %44 = and i32 %43, 65280
  %cmp92 = icmp eq i32 %44, 0
  br i1 %cmp92, label %if.then110.for.end114_crit_edge, label %if.then110.land.lhs.true96_crit_edge

if.then110.land.lhs.true96_crit_edge:             ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true96

if.then110.for.end114_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end114

for.end114:                                       ; preds = %if.then110.for.end114_crit_edge, %if.then100, %if.end51.for.end114_crit_edge
  %val.1 = phi i32 [ %39, %if.then100 ], [ %34, %if.end51.for.end114_crit_edge ], [ %43, %if.then110.for.end114_crit_edge ]
  %45 = and i32 %val.1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp118 = icmp eq i32 %45, 0
  br i1 %cmp118, label %if.end122, label %for.end114.cleanup_crit_edge

for.end114.cleanup_crit_edge:                     ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end122:                                        ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #8
  %trch_state = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 2
  %46 = ptrtoint ptr %trch_state to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %trch_state, align 2
  %evch_state = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 3
  %47 = ptrtoint ptr %evch_state to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %evch_state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %for.end114.cleanup_crit_edge, %do.end50
  %retval.0 = phi i32 [ -110, %do.end50 ], [ 0, %if.end122 ], [ -110, %for.end114.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidma_ll_setup_irq(ptr nocapture noundef %lldev, i1 noundef zeroext %msi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %msi to i8
  %0 = ptrtoint ptr %lldev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %lldev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %evca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 10
  %1 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %evca, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %evca, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #6, !srcloc !76
  %5 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %evca, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %8 = and i32 %7, -251658241
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %lldev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lldev, align 4, !range !115
  %12 = xor i8 %11, 1
  %13 = zext i8 %12 to i32
  %spec.select = or i32 %9, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %15 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %evca, align 4
  %add.ptr16 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %14) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %evca, align 4
  %add.ptr21 = getelementptr i8, ptr %18, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 55443456) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %evca, align 4
  %add.ptr26 = getelementptr i8, ptr %20, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 55443456) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hidma_ll_init(ptr noundef %dev, i32 noundef %nr_tres, ptr noundef %trca, ptr noundef %evca, i8 noundef zeroext %chidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %trca, null
  %tobool1.not = icmp eq ptr %evca, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %dev, null
  %or.cond150 = or i1 %tobool3.not, %or.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nr_tres)
  %cmp = icmp ult i32 %nr_tres, 4
  %or.cond152 = or i1 %cmp, %or.cond150
  br i1 %or.cond152, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %add = add i32 %nr_tres, 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 160, i32 noundef 3520) #6
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %evca11 = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 10
  %0 = ptrtoint ptr %evca11 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %evca, ptr %evca11, align 4
  %trca12 = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %trca12 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %trca, ptr %trca12, align 4
  %dev13 = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev13, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 80) #6
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !127

devm_kcalloc.exit.thread:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %trepool160 = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %trepool160 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %trepool160, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end10
  %6 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef %6, i32 noundef 3520) #6
  %trepool = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %trepool to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %trepool, align 4
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %devm_kcalloc.exit156

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kcalloc.exit156:                             ; preds = %devm_kcalloc.exit
  %8 = shl nuw nsw i32 %add, 2
  %call5.i.i153 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef %8, i32 noundef 3520) #6
  %pending_tre_list = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 11
  %9 = ptrtoint ptr %pending_tre_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i153, ptr %pending_tre_list, align 4
  %tobool22.not = icmp eq ptr %call5.i.i153, null
  br i1 %tobool22.not, label %devm_kcalloc.exit156.cleanup_crit_edge, label %if.end24

devm_kcalloc.exit156.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit156
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %devm_kcalloc.exit156
  %mul = mul nuw nsw i32 %add, 33
  %tre_dma = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 14
  %call.i157 = tail call ptr @dmam_alloc_attrs(ptr noundef nonnull %dev, i32 noundef %mul, ptr noundef %tre_dma, i32 noundef 3264, i32 noundef 0) #6
  %tre_ring = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %tre_ring to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i157, ptr %tre_ring, align 4
  %tobool27.not = icmp eq ptr %call.i157, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %mul30 = shl nuw nsw i32 %add, 5
  %tre_ring_size = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 15
  %11 = ptrtoint ptr %tre_ring_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul30, ptr %tre_ring_size, align 4
  %nr_tres31 = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %nr_tres31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %nr_tres31, align 4
  %13 = ptrtoint ptr %tre_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tre_dma, align 4
  %and = and i32 %14, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp33 = icmp eq i32 %and, 0
  br i1 %cmp33, label %if.end29.if.end43_crit_edge, label %if.then34

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %conv37 = sub nuw nsw i32 32, %and
  %add40 = add i32 %conv37, %14
  %15 = ptrtoint ptr %tre_dma to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add40, ptr %tre_dma, align 4
  %add.ptr = getelementptr i8, ptr %call.i157, i32 %conv37
  %16 = ptrtoint ptr %tre_ring to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %tre_ring, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then34, %if.end29.if.end43_crit_edge
  %mul44 = mul nuw nsw i32 %add, 17
  %evre_dma = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 18
  %call.i158 = tail call ptr @dmam_alloc_attrs(ptr noundef nonnull %dev, i32 noundef %mul44, ptr noundef %evre_dma, i32 noundef 3264, i32 noundef 0) #6
  %evre_ring = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 17
  %17 = ptrtoint ptr %evre_ring to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i158, ptr %evre_ring, align 4
  %tobool47.not = icmp eq ptr %call.i158, null
  br i1 %tobool47.not, label %if.end43.cleanup_crit_edge, label %if.end49

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %mul50 = shl nuw nsw i32 %add, 4
  %evre_ring_size = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %evre_ring_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul50, ptr %evre_ring_size, align 4
  %19 = ptrtoint ptr %evre_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %evre_dma, align 4
  %and52 = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %if.end49.if.end68_crit_edge, label %if.then55

if.end49.if.end68_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %conv61 = sub nuw nsw i32 16, %and52
  %add64 = add i32 %conv61, %20
  %21 = ptrtoint ptr %evre_dma to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add64, ptr %evre_dma, align 4
  %add.ptr67 = getelementptr i8, ptr %call.i158, i32 %conv61
  %22 = ptrtoint ptr %evre_ring to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr67, ptr %evre_ring, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then55, %if.end49.if.end68_crit_edge
  %23 = ptrtoint ptr %nr_tres31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %nr_tres31, align 4
  %chidx70 = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %chidx70 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %chidx, ptr %chidx70, align 4
  %handoff_fifo = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 23
  %call72 = tail call i32 @__kfifo_alloc(ptr noundef %handoff_fifo, i32 noundef %8, i32 noundef 4, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool74.not = icmp eq i32 %call72, 0
  br i1 %tobool74.not, label %if.end76, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end76:                                         ; preds = %if.end68
  %call77 = tail call i32 @hidma_ll_setup(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.body, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @hidma_ll_init.__key, i16 noundef signext 3) #6
  %task = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 22
  tail call void @tasklet_setup(ptr noundef %task, ptr noundef nonnull @hidma_ll_tre_complete) #6
  %initialized = getelementptr inbounds %struct.hidma_lldev, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %initialized, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %evca11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %evca11, align 4
  %add.ptr86 = getelementptr i8, ptr %27, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 55443456) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end76.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %devm_kcalloc.exit156.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %do.body ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ null, %devm_kcalloc.exit.cleanup_crit_edge ], [ null, %devm_kcalloc.exit156.cleanup_crit_edge ], [ null, %if.end24.cleanup_crit_edge ], [ null, %if.end43.cleanup_crit_edge ], [ null, %if.end68.cleanup_crit_edge ], [ null, %if.end76.cleanup_crit_edge ], [ null, %devm_kcalloc.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidma_ll_tre_complete(ptr noundef %t) #0 align 64 {
entry:
  %tre = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tre) #6
  %0 = ptrtoint ptr %tre to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tre, align 4, !annotation !129
  %handoff_fifo = getelementptr i8, ptr %t, i32 24
  %call5 = call i32 @__kfifo_out(ptr noundef %handoff_fifo, ptr noundef nonnull %tre, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not6 = icmp eq i32 %call5, 0
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = ptrtoint ptr %tre to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tre, align 4
  %callback = getelementptr inbounds %struct.hidma_tre, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %callback, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.hidma_tre, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void %4(ptr noundef %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %call = call i32 @__kfifo_out(ptr noundef %handoff_fifo, ptr noundef nonnull %tre, i32 noundef 1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tre) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidma_ll_uninit(ptr noundef %lldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %lldev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %initialized = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 1
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %initialized, align 1
  %nr_tres = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 5
  %3 = ptrtoint ptr %nr_tres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_tres, align 4
  %mul = mul i32 %4, 80
  %task = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 22
  tail call void @tasklet_kill(ptr noundef %task) #6
  %trepool = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 7
  %5 = ptrtoint ptr %trepool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trepool, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 %mul)
  store ptr null, ptr %trepool, align 4
  %pending_tre_count = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_tre_count, i32 noundef 4) #6
  %8 = ptrtoint ptr %pending_tre_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %pending_tre_count, align 4
  %tre_write_offset = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 21
  %9 = ptrtoint ptr %tre_write_offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tre_write_offset, align 4
  %call = tail call fastcc i32 @hidma_ll_reset(ptr noundef nonnull %lldev)
  %evca = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 10
  %10 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %evca, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 256
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %evca, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %evca to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %evca, align 4
  %add.ptr14 = getelementptr i8, ptr %16, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidma_ll_status(ptr noundef %lldev, i32 noundef %tre_ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %trepool = getelementptr inbounds %struct.hidma_lldev, ptr %lldev, i32 0, i32 7
  %0 = ptrtoint ptr %trepool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trepool, align 4
  %err_code5 = getelementptr %struct.hidma_tre, ptr %1, i32 %tre_ch, i32 13
  %2 = ptrtoint ptr %err_code5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %err_code5, align 1
  %conv6 = zext i8 %3 to i32
  %and = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and8 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %. = select i1 %tobool9.not, i32 1, i32 3
  %ret.0 = select i1 %tobool.not, i32 %., i32 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 121, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hidma_ll_free._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hidma_ll_free._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 127, i32 3}
!10 = !{ptr @hidma_ll_free._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @hidma_ll_free._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 472, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hidma_ll_enable._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @hidma_ll_enable._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 485, i32 3}
!19 = !{ptr @hidma_ll_enable._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @hidma_ll_enable._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 606, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hidma_ll_set_transfer_params._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @hidma_ll_set_transfer_params._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 613, i32 3}
!28 = !{ptr @hidma_ll_set_transfer_params._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @hidma_ll_set_transfer_params._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @hidma_ll_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 794, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 201, i32 3}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hidma_post_completed._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @hidma_post_completed._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 212, i32 3}
!41 = !{ptr @hidma_post_completed._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @hidma_post_completed._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 391, i32 3}
!45 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hidma_ll_int_handler_internal._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @hidma_ll_int_handler_internal._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 249, i32 3}
!50 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hidma_handle_tre_completion._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hidma_handle_tre_completion._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/qcom/hidma_ll.c", i32 330, i32 3}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hidma_ll_reset._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @hidma_ll_reset._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148540161}
!68 = !{i64 1026761, i64 1026786, i64 1026808, i64 1026824, i64 1026836, i64 1026856, i64 1026880, i64 1026896, i64 1026908}
!69 = !{i64 2148540349}
!70 = !{i64 2148629194}
!71 = !{i64 2148543927, i64 2148543959, i64 2148543988, i64 2148544022, i64 2148544053, i64 2148544076}
!72 = !{i64 2148629423}
!73 = !{i64 2154353415}
!74 = !{i64 6288964}
!75 = !{i64 2154373228}
!76 = !{i64 6288546}
!77 = !{i64 2154393278}
!78 = !{i64 2154394516}
!79 = !{i64 2154357580}
!80 = !{i64 2154375800}
!81 = !{i64 2154376696}
!82 = !{i64 2154380467}
!83 = !{i64 2154380961}
!84 = !{i64 2154383159}
!85 = !{i64 2154384055}
!86 = !{i64 2154387826}
!87 = !{i64 2154388320}
!88 = !{i64 2154391211}
!89 = !{i64 2154392541}
!90 = !{i64 2148540742, i64 2148540768, i64 2148540797, i64 2148540831, i64 2148540862, i64 2148540885}
!91 = !{i64 2154396119}
!92 = !{i64 2154397015}
!93 = !{i64 2154400774}
!94 = !{i64 2154401268}
!95 = !{i64 2154401772}
!96 = !{i64 2154402668}
!97 = !{i64 2154406427}
!98 = !{i64 2154406921}
!99 = !{i64 2154407145}
!100 = !{i64 2154411840}
!101 = !{i64 2154412511}
!102 = !{i64 2154412733}
!103 = !{i64 2154413410}
!104 = !{i64 2154413632}
!105 = !{i64 2154414029}
!106 = !{i64 2154414480}
!107 = !{i64 2154415020}
!108 = !{i64 2154415520}
!109 = !{i64 2154416028}
!110 = !{i64 2154416568}
!111 = !{i64 2154417063}
!112 = !{i64 2154417487}
!113 = !{i64 2154417878}
!114 = !{i64 2154418549}
!115 = !{i8 0, i8 2}
!116 = !{i64 2154418771}
!117 = !{i64 2154420114}
!118 = !{i64 2154422000}
!119 = !{i64 2154358287}
!120 = !{i64 2154359183}
!121 = !{i64 2154362938}
!122 = !{i64 2154363432}
!123 = !{i64 2154365603}
!124 = !{i64 2154366499}
!125 = !{i64 2154370254}
!126 = !{i64 2154370748}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 2154426418}
!129 = !{!"auto-init"}
!130 = !{i64 2154427653}
!131 = !{i64 2154427875}
!132 = !{i64 2154428272}
