; ModuleID = '/llk/IR_all_yes/drivers/misc/lkdtm/heap.c_pt.bc'
source_filename = "../drivers/misc/lkdtm/heap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@lkdtm_VMALLOC_LINEAR_OVERFLOW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016lkdtm: Attempting vmalloc linear overflow ...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lkdtm_VMALLOC_LINEAR_OVERFLOW\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/misc/lkdtm/heap.c\00", [38 x i8] zeroinitializer }, align 32
@lkdtm_VMALLOC_LINEAR_OVERFLOW._entry_ptr = internal global ptr @lkdtm_VMALLOC_LINEAR_OVERFLOW._entry, section ".printk_index", align 4
@__offset = internal global i32 1, align 4
@lkdtm_SLAB_LINEAR_OVERFLOW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016lkdtm: Attempting slab linear overflow ...\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lkdtm_SLAB_LINEAR_OVERFLOW\00", [37 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_LINEAR_OVERFLOW._entry_ptr = internal global ptr @lkdtm_SLAB_LINEAR_OVERFLOW._entry, section ".printk_index", align 4
@lkdtm_WRITE_AFTER_FREE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016lkdtm: Allocated memory %p-%p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lkdtm_WRITE_AFTER_FREE\00", [41 x i8] zeroinitializer }, align 32
@lkdtm_WRITE_AFTER_FREE._entry_ptr = internal global ptr @lkdtm_WRITE_AFTER_FREE._entry, section ".printk_index", align 4
@lkdtm_WRITE_AFTER_FREE._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016lkdtm: Attempting bad write to freed memory at %p\0A\00", [43 x i8] zeroinitializer }, align 32
@lkdtm_WRITE_AFTER_FREE._entry_ptr.9 = internal global ptr @lkdtm_WRITE_AFTER_FREE._entry.7, section ".printk_index", align 4
@lkdtm_WRITE_AFTER_FREE._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016lkdtm: Hmm, didn't get the same memory range.\0A\00", [47 x i8] zeroinitializer }, align 32
@lkdtm_WRITE_AFTER_FREE._entry_ptr.12 = internal global ptr @lkdtm_WRITE_AFTER_FREE._entry.10, section ".printk_index", align 4
@lkdtm_READ_AFTER_FREE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016lkdtm: Unable to allocate base memory.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lkdtm_READ_AFTER_FREE\00", [42 x i8] zeroinitializer }, align 32
@lkdtm_READ_AFTER_FREE._entry_ptr = internal global ptr @lkdtm_READ_AFTER_FREE._entry, section ".printk_index", align 4
@lkdtm_READ_AFTER_FREE._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016lkdtm: Unable to allocate val memory.\0A\00", [55 x i8] zeroinitializer }, align 32
@lkdtm_READ_AFTER_FREE._entry_ptr.17 = internal global ptr @lkdtm_READ_AFTER_FREE._entry.15, section ".printk_index", align 4
@lkdtm_READ_AFTER_FREE._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016lkdtm: Value in memory before free: %x\0A\00", [54 x i8] zeroinitializer }, align 32
@lkdtm_READ_AFTER_FREE._entry_ptr.20 = internal global ptr @lkdtm_READ_AFTER_FREE._entry.18, section ".printk_index", align 4
@lkdtm_READ_AFTER_FREE._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016lkdtm: Attempting bad read from freed memory\0A\00", [48 x i8] zeroinitializer }, align 32
@lkdtm_READ_AFTER_FREE._entry_ptr.23 = internal global ptr @lkdtm_READ_AFTER_FREE._entry.21, section ".printk_index", align 4
@lkdtm_READ_AFTER_FREE._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016lkdtm: Memory correctly poisoned (%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@lkdtm_READ_AFTER_FREE._entry_ptr.26 = internal global ptr @lkdtm_READ_AFTER_FREE._entry.24, section ".printk_index", align 4
@lkdtm_READ_AFTER_FREE._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013lkdtm: FAIL: Memory was not poisoned!\0A\00", [55 x i8] zeroinitializer }, align 32
@lkdtm_READ_AFTER_FREE._entry_ptr.29 = internal global ptr @lkdtm_READ_AFTER_FREE._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_on_free\00", [19 x i8] zeroinitializer }, align 32
@lkdtm_READ_AFTER_FREE._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.14, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"\014lkdtm: This is probably expected, since this %s was built with CONFIG_INIT_ON_FREE_DEFAULT_ON=y but booted with 'init_on_free=N'\0A\00", [60 x i8] zeroinitializer }, align 32
@lkdtm_READ_AFTER_FREE._entry_ptr.33 = internal global ptr @lkdtm_READ_AFTER_FREE._entry.31, section ".printk_index", align 4
@lkdtm_kernel_info = external dso_local local_unnamed_addr global ptr, align 4
@lkdtm_READ_AFTER_FREE._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.14, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\013lkdtm: Unexpected! This %s was built with CONFIG_INIT_ON_FREE_DEFAULT_ON=y and booted with 'init_on_free=Y'\0A\00", [49 x i8] zeroinitializer }, align 32
@lkdtm_READ_AFTER_FREE._entry_ptr.36 = internal global ptr @lkdtm_READ_AFTER_FREE._entry.34, section ".printk_index", align 4
@lkdtm_READ_AFTER_FREE._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.14, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"\013lkdtm: Unexpected! This %s was built with CONFIG_INIT_ON_FREE_DEFAULT_ON=y (and booted without 'init_on_free' specified)\0A\00", [36 x i8] zeroinitializer }, align 32
@lkdtm_READ_AFTER_FREE._entry_ptr.39 = internal global ptr @lkdtm_READ_AFTER_FREE._entry.37, section ".printk_index", align 4
@lkdtm_WRITE_BUDDY_AFTER_FREE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lkdtm: Unable to allocate free page\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lkdtm_WRITE_BUDDY_AFTER_FREE\00", [35 x i8] zeroinitializer }, align 32
@lkdtm_WRITE_BUDDY_AFTER_FREE._entry_ptr = internal global ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry, section ".printk_index", align 4
@lkdtm_WRITE_BUDDY_AFTER_FREE._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016lkdtm: Writing to the buddy page before free\0A\00", [48 x i8] zeroinitializer }, align 32
@lkdtm_WRITE_BUDDY_AFTER_FREE._entry_ptr.44 = internal global ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry.42, section ".printk_index", align 4
@lkdtm_WRITE_BUDDY_AFTER_FREE._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016lkdtm: Attempting bad write to the buddy page after free\0A\00", [36 x i8] zeroinitializer }, align 32
@lkdtm_WRITE_BUDDY_AFTER_FREE._entry_ptr.47 = internal global ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry.45, section ".printk_index", align 4
@lkdtm_READ_BUDDY_AFTER_FREE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.48, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lkdtm_READ_BUDDY_AFTER_FREE\00", [36 x i8] zeroinitializer }, align 32
@lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr = internal global ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry, section ".printk_index", align 4
@lkdtm_READ_BUDDY_AFTER_FREE._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.48, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.50 = internal global ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.49, section ".printk_index", align 4
@lkdtm_READ_BUDDY_AFTER_FREE._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.48, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.52 = internal global ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.51, section ".printk_index", align 4
@lkdtm_READ_BUDDY_AFTER_FREE._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016lkdtm: Attempting to read from freed memory\0A\00", [49 x i8] zeroinitializer }, align 32
@lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.55 = internal global ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.53, section ".printk_index", align 4
@lkdtm_READ_BUDDY_AFTER_FREE._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.48, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.57 = internal global ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.56, section ".printk_index", align 4
@lkdtm_READ_BUDDY_AFTER_FREE._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013lkdtm: FAIL: Buddy page was not poisoned!\0A\00", [51 x i8] zeroinitializer }, align 32
@lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.60 = internal global ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.58, section ".printk_index", align 4
@lkdtm_READ_BUDDY_AFTER_FREE._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.48, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.62 = internal global ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.61, section ".printk_index", align 4
@lkdtm_READ_BUDDY_AFTER_FREE._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.48, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.64 = internal global ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.63, section ".printk_index", align 4
@lkdtm_READ_BUDDY_AFTER_FREE._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.48, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.66 = internal global ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.65, section ".printk_index", align 4
@lkdtm_SLAB_INIT_ON_ALLOC._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016lkdtm: Unable to allocate 512 bytes the first time.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lkdtm_SLAB_INIT_ON_ALLOC\00", [39 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr = internal global ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry, section ".printk_index", align 4
@lkdtm_SLAB_INIT_ON_ALLOC._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016lkdtm: Unable to allocate 512 bytes the second time.\0A\00", [40 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.71 = internal global ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.69, section ".printk_index", align 4
@lkdtm_SLAB_INIT_ON_ALLOC._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014lkdtm: Reallocation missed clobbered memory.\0A\00", [48 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.74 = internal global ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.72, section ".printk_index", align 4
@lkdtm_SLAB_INIT_ON_ALLOC._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016lkdtm: Memory appears initialized (%x, no earlier values)\0A\00", [35 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.77 = internal global ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.75, section ".printk_index", align 4
@lkdtm_SLAB_INIT_ON_ALLOC._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.68, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013lkdtm: FAIL: Slab was not initialized\0A\00", [55 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.80 = internal global ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_on_alloc\00", [18 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_INIT_ON_ALLOC._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.68, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\014lkdtm: This is probably expected, since this %s was built with CONFIG_INIT_ON_ALLOC_DEFAULT_ON=y but booted with 'init_on_alloc=N'\0A\00", [58 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.84 = internal global ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.82, section ".printk_index", align 4
@lkdtm_SLAB_INIT_ON_ALLOC._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.68, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"\013lkdtm: Unexpected! This %s was built with CONFIG_INIT_ON_ALLOC_DEFAULT_ON=y and booted with 'init_on_alloc=Y'\0A\00", [47 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.87 = internal global ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.85, section ".printk_index", align 4
@lkdtm_SLAB_INIT_ON_ALLOC._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.68, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"\013lkdtm: Unexpected! This %s was built with CONFIG_INIT_ON_ALLOC_DEFAULT_ON=y (and booted without 'init_on_alloc' specified)\0A\00", [34 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.90 = internal global ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.88, section ".printk_index", align 4
@lkdtm_BUDDY_INIT_ON_ALLOC._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016lkdtm: Unable to allocate first free page\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lkdtm_BUDDY_INIT_ON_ALLOC\00", [38 x i8] zeroinitializer }, align 32
@lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr = internal global ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry, section ".printk_index", align 4
@lkdtm_BUDDY_INIT_ON_ALLOC._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016lkdtm: Unable to allocate second free page\0A\00", [50 x i8] zeroinitializer }, align 32
@lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.95 = internal global ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.93, section ".printk_index", align 4
@lkdtm_BUDDY_INIT_ON_ALLOC._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.92, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.97 = internal global ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.96, section ".printk_index", align 4
@lkdtm_BUDDY_INIT_ON_ALLOC._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.92, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.99 = internal global ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.98, section ".printk_index", align 4
@lkdtm_BUDDY_INIT_ON_ALLOC._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.92, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.101 = internal global ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.100, section ".printk_index", align 4
@lkdtm_BUDDY_INIT_ON_ALLOC._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.92, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.103 = internal global ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.102, section ".printk_index", align 4
@lkdtm_BUDDY_INIT_ON_ALLOC._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.92, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.105 = internal global ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.104, section ".printk_index", align 4
@lkdtm_BUDDY_INIT_ON_ALLOC._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.92, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.107 = internal global ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.106, section ".printk_index", align 4
@double_free_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lkdtm_SLAB_FREE_DOUBLE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016lkdtm: Unable to allocate double_free_cache memory.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lkdtm_SLAB_FREE_DOUBLE\00", [41 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_FREE_DOUBLE._entry_ptr = internal global ptr @lkdtm_SLAB_FREE_DOUBLE._entry, section ".printk_index", align 4
@lkdtm_SLAB_FREE_DOUBLE._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016lkdtm: Attempting double slab free ...\0A\00", [54 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_FREE_DOUBLE._entry_ptr.112 = internal global ptr @lkdtm_SLAB_FREE_DOUBLE._entry.110, section ".printk_index", align 4
@a_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lkdtm_SLAB_FREE_CROSS._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016lkdtm: Unable to allocate a_cache memory.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lkdtm_SLAB_FREE_CROSS\00", [42 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_FREE_CROSS._entry_ptr = internal global ptr @lkdtm_SLAB_FREE_CROSS._entry, section ".printk_index", align 4
@lkdtm_SLAB_FREE_CROSS._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016lkdtm: Attempting cross-cache slab free ...\0A\00", [49 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_FREE_CROSS._entry_ptr.117 = internal global ptr @lkdtm_SLAB_FREE_CROSS._entry.115, section ".printk_index", align 4
@b_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lkdtm_SLAB_FREE_PAGE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016lkdtm: Attempting non-Slab slab free ...\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lkdtm_SLAB_FREE_PAGE\00", [43 x i8] zeroinitializer }, align 32
@lkdtm_SLAB_FREE_PAGE._entry_ptr = internal global ptr @lkdtm_SLAB_FREE_PAGE._entry, section ".printk_index", align 4
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lkdtm-heap-double_free\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lkdtm-heap-a\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lkdtm-heap-b\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 33, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 52, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 71, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 72, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 80, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 97, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 103, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 110, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 114, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 118, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 120, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 121, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 131, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 135, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 139, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 154, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 160, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 169, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 171, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 175, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 177, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 178, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 191, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 200, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 204, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 208, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 210, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 211, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 223, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 232, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 237, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 241, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 243, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 244, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [18 x i8] c"double_free_cache\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 11, i32 27 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 255, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 261, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [8 x i8] c"a_cache\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 12, i32 27 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 272, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 278, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [8 x i8] c"b_cache\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 13, i32 27 }
@___asan_gen_.411 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 286, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 304, i32 40 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 306, i32 30 }
@___asan_gen_.426 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.427 = private constant [29 x i8] c"../drivers/misc/lkdtm/heap.c\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 307, i32 30 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.100, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.102, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.104, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.106, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.93, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.96, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.98, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.101, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.103, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.105, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.107, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.95, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.97, ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.99, ptr @lkdtm_READ_AFTER_FREE._entry, ptr @lkdtm_READ_AFTER_FREE._entry.15, ptr @lkdtm_READ_AFTER_FREE._entry.18, ptr @lkdtm_READ_AFTER_FREE._entry.21, ptr @lkdtm_READ_AFTER_FREE._entry.24, ptr @lkdtm_READ_AFTER_FREE._entry.27, ptr @lkdtm_READ_AFTER_FREE._entry.31, ptr @lkdtm_READ_AFTER_FREE._entry.34, ptr @lkdtm_READ_AFTER_FREE._entry.37, ptr @lkdtm_READ_AFTER_FREE._entry_ptr, ptr @lkdtm_READ_AFTER_FREE._entry_ptr.17, ptr @lkdtm_READ_AFTER_FREE._entry_ptr.20, ptr @lkdtm_READ_AFTER_FREE._entry_ptr.23, ptr @lkdtm_READ_AFTER_FREE._entry_ptr.26, ptr @lkdtm_READ_AFTER_FREE._entry_ptr.29, ptr @lkdtm_READ_AFTER_FREE._entry_ptr.33, ptr @lkdtm_READ_AFTER_FREE._entry_ptr.36, ptr @lkdtm_READ_AFTER_FREE._entry_ptr.39, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.49, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.51, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.53, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.56, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.58, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.61, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.63, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.65, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.50, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.52, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.55, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.57, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.60, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.62, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.64, ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.66, ptr @lkdtm_SLAB_FREE_CROSS._entry, ptr @lkdtm_SLAB_FREE_CROSS._entry.115, ptr @lkdtm_SLAB_FREE_CROSS._entry_ptr, ptr @lkdtm_SLAB_FREE_CROSS._entry_ptr.117, ptr @lkdtm_SLAB_FREE_DOUBLE._entry, ptr @lkdtm_SLAB_FREE_DOUBLE._entry.110, ptr @lkdtm_SLAB_FREE_DOUBLE._entry_ptr, ptr @lkdtm_SLAB_FREE_DOUBLE._entry_ptr.112, ptr @lkdtm_SLAB_FREE_PAGE._entry, ptr @lkdtm_SLAB_FREE_PAGE._entry_ptr, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.69, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.72, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.75, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.78, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.82, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.85, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.88, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.71, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.74, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.77, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.80, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.84, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.87, ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.90, ptr @lkdtm_SLAB_LINEAR_OVERFLOW._entry, ptr @lkdtm_SLAB_LINEAR_OVERFLOW._entry_ptr, ptr @lkdtm_VMALLOC_LINEAR_OVERFLOW._entry, ptr @lkdtm_VMALLOC_LINEAR_OVERFLOW._entry_ptr, ptr @lkdtm_WRITE_AFTER_FREE._entry, ptr @lkdtm_WRITE_AFTER_FREE._entry.10, ptr @lkdtm_WRITE_AFTER_FREE._entry.7, ptr @lkdtm_WRITE_AFTER_FREE._entry_ptr, ptr @lkdtm_WRITE_AFTER_FREE._entry_ptr.12, ptr @lkdtm_WRITE_AFTER_FREE._entry_ptr.9, ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry, ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry.42, ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry.45, ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry_ptr, ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry_ptr.44, ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry_ptr.47, ptr @lkdtm_heap_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.54, ptr @.str.59, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @double_free_cache, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @a_cache, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @b_cache, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_VMALLOC_LINEAR_OVERFLOW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_LINEAR_OVERFLOW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_WRITE_AFTER_FREE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_WRITE_AFTER_FREE._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_WRITE_AFTER_FREE._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_AFTER_FREE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_AFTER_FREE._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_AFTER_FREE._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_AFTER_FREE._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_AFTER_FREE._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_AFTER_FREE._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_AFTER_FREE._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_AFTER_FREE._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_AFTER_FREE._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @double_free_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_FREE_DOUBLE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_FREE_DOUBLE._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_FREE_CROSS._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_FREE_CROSS._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_SLAB_FREE_PAGE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_VMALLOC_LINEAR_OVERFLOW() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vzalloc(i32 noundef 4096) #11
  %call1 = tail call noalias ptr @vzalloc(i32 noundef 4096) #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %0 = load volatile i32, ptr @__offset, align 4
  %add = add i32 %0, 4096
  %1 = call ptr @memset(ptr %call, i32 170, i32 %add)
  tail call void @vfree(ptr noundef %call1) #8
  tail call void @vfree(ptr noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_SLAB_LINEAR_OVERFLOW() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1020) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  %arrayidx = getelementptr i32, ptr %call7.i, i32 256
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 305419896, ptr %arrayidx, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_WRITE_AFTER_FREE() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %arrayidx = getelementptr i32, ptr %call7.i, i32 256
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %call7.i, ptr noundef %arrayidx) #12
  %arrayidx7 = getelementptr i32, ptr %call7.i, i32 128
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %arrayidx7) #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  %1 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 180150000, ptr %arrayidx7, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #13
  tail call void @kfree(ptr noundef %call7.i32) #8
  %cmp.not = icmp eq ptr %call7.i32, %call7.i
  br i1 %cmp.not, label %do.end.cleanup_crit_edge, label %do.end14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_READ_AFTER_FREE() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 1024) #13
  %tobool3.not = icmp eq ptr %call7.i69, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %2 = ptrtoint ptr %call7.i69 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 305419896, ptr %call7.i69, align 8
  %arrayidx = getelementptr i32, ptr %call7.i, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 305419896, ptr %arrayidx, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 305419896) #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %5)
  %cmp.not = icmp eq i32 %5, 305419896
  br i1 %cmp.not, label %do.end31, label %do.end26

do.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %5) #12
  br label %if.end51

do.end31:                                         ; preds = %if.end10
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #12
  %call34 = tail call i32 @lkdtm_check_bool_cmdline(ptr noundef nonnull @.str.30) #8
  %6 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call34, label %do.end48 [
    i32 0, label %do.end37
    i32 1, label %do.end43
  ]

do.end37:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %7 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %7) #12
  br label %if.end51

do.end43:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %8 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %8) #12
  br label %if.end51

do.end48:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %9 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %9) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %do.end43, %do.end37, %do.end26
  tail call void @kfree(ptr noundef nonnull %call7.i69) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lkdtm_check_bool_cmdline(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_WRITE_BUDDY_AFTER_FREE() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  br label %cleanup

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #12
  %0 = inttoptr i32 %call to ptr
  %1 = call ptr @memset(ptr %0, i32 3, i32 4096)
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #8
  tail call void @schedule() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  %2 = call ptr @memset(ptr %0, i32 120, i32 4096)
  %call12 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  tail call void @free_pages(i32 noundef %call12, i32 noundef 0) #8
  tail call void @schedule() #8
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_READ_BUDDY_AFTER_FREE() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #13
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %1 = inttoptr i32 %call to ptr
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 305419896, ptr %call7.i, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 305419896, ptr %1, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 305419896) #12
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %do.end31, label %do.end26

do.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %5) #12
  br label %if.end51

do.end31:                                         ; preds = %if.end10
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  %call34 = tail call i32 @lkdtm_check_bool_cmdline(ptr noundef nonnull @.str.30) #8
  %8 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %call34, label %do.end48 [
    i32 0, label %do.end37
    i32 1, label %do.end43
  ]

do.end37:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %9 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %9) #12
  br label %if.end51

do.end43:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %10 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %10) #12
  br label %if.end51

do.end48:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %11 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %11) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %do.end43, %do.end37, %do.end26
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_SLAB_INIT_ON_ALLOC() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 512) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %call7.i, i32 171, i32 512)
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i57 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 512) #13
  %tobool3.not = icmp eq ptr %call7.i57, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call7.i57, %call7.i
  br i1 %cmp.not, label %if.end10.if.end17_crit_edge, label %do.end14

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end10.if.end17_crit_edge
  %call18 = tail call ptr @memchr(ptr noundef nonnull %call7.i57, i32 noundef 171, i32 noundef 512) #14
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %do.end23, label %do.end28

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call7.i57 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call7.i57, align 8
  %conv = zext i8 %4 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %conv) #12
  br label %if.end48

do.end28:                                         ; preds = %if.end17
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #12
  %call31 = tail call i32 @lkdtm_check_bool_cmdline(ptr noundef nonnull @.str.81) #8
  %5 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call31, label %do.end45 [
    i32 0, label %do.end34
    i32 1, label %do.end40
  ]

do.end34:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %6 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %6) #12
  br label %if.end48

do.end40:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %7 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %7) #12
  br label %if.end48

do.end45:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %8 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %8) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %do.end40, %do.end34, %do.end23
  tail call void @kfree(ptr noundef nonnull %call7.i57) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end7, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_BUDDY_INIT_ON_ALLOC() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %0 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %0, i32 171, i32 4096)
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #8
  %call2 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %2 = inttoptr i32 %call2 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %2, %0
  br i1 %cmp.not, label %if.end10.if.end17_crit_edge, label %do.end14

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end10.if.end17_crit_edge
  %call18 = tail call ptr @memchr(ptr noundef nonnull %2, i32 noundef 171, i32 noundef 4096) #14
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %do.end23, label %do.end28

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv = zext i8 %4 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %conv) #12
  br label %if.end48

do.end28:                                         ; preds = %if.end17
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #12
  %call31 = tail call i32 @lkdtm_check_bool_cmdline(ptr noundef nonnull @.str.81) #8
  %5 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %call31, label %do.end45 [
    i32 0, label %do.end34
    i32 1, label %do.end40
  ]

do.end34:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %6 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %6) #12
  br label %if.end48

do.end40:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %7 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %7) #12
  br label %if.end48

do.end45:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %8 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %8) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %do.end40, %do.end34, %do.end23
  tail call void @free_pages(i32 noundef %call2, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_SLAB_FREE_DOUBLE() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @double_free_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 305419896, ptr %call, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #12
  %2 = load ptr, ptr @double_free_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef nonnull %call) #8
  %3 = load ptr, ptr @double_free_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_SLAB_FREE_CROSS() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @a_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 305419897, ptr %call, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #12
  %2 = load ptr, ptr @b_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_SLAB_FREE_PAGE() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #12
  %0 = inttoptr i32 %call to ptr
  tail call void @kmem_cache_free(ptr noundef null, ptr noundef %0) #8
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_heap_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.120, i32 noundef 64, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @ctor_double_free) #8
  store ptr %call, ptr @double_free_cache, align 4
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.121, i32 noundef 64, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @ctor_a) #8
  store ptr %call1, ptr @a_cache, align 4
  %call2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.122, i32 noundef 64, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @ctor_b) #8
  store ptr %call2, ptr @b_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ctor_double_free(ptr nocapture noundef %region) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ctor_a(ptr nocapture noundef %region) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ctor_b(ptr nocapture noundef %region) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_heap_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @double_free_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  %1 = load ptr, ptr @a_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #8
  %2 = load ptr, ptr @b_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !185, !187, !189, !191, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/lkdtm/heap.c", i32 33, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lkdtm_VMALLOC_LINEAR_OVERFLOW._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lkdtm_VMALLOC_LINEAR_OVERFLOW._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/misc/lkdtm/heap.c", i32 52, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @lkdtm_SLAB_LINEAR_OVERFLOW._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @lkdtm_SLAB_LINEAR_OVERFLOW._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/misc/lkdtm/heap.c", i32 71, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @lkdtm_WRITE_AFTER_FREE._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @lkdtm_WRITE_AFTER_FREE._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/lkdtm/heap.c", i32 72, i32 2}
!18 = !{ptr @lkdtm_WRITE_AFTER_FREE._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @lkdtm_WRITE_AFTER_FREE._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/lkdtm/heap.c", i32 80, i32 3}
!22 = !{ptr @lkdtm_WRITE_AFTER_FREE._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @lkdtm_WRITE_AFTER_FREE._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/lkdtm/heap.c", i32 97, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lkdtm_READ_AFTER_FREE._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @lkdtm_READ_AFTER_FREE._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/misc/lkdtm/heap.c", i32 103, i32 3}
!31 = !{ptr @lkdtm_READ_AFTER_FREE._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @lkdtm_READ_AFTER_FREE._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/lkdtm/heap.c", i32 110, i32 2}
!35 = !{ptr @lkdtm_READ_AFTER_FREE._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @lkdtm_READ_AFTER_FREE._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/lkdtm/heap.c", i32 114, i32 2}
!39 = !{ptr @lkdtm_READ_AFTER_FREE._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @lkdtm_READ_AFTER_FREE._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/lkdtm/heap.c", i32 118, i32 3}
!43 = !{ptr @lkdtm_READ_AFTER_FREE._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @lkdtm_READ_AFTER_FREE._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/lkdtm/heap.c", i32 120, i32 3}
!47 = !{ptr @lkdtm_READ_AFTER_FREE._entry.27, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @lkdtm_READ_AFTER_FREE._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/lkdtm/heap.c", i32 121, i32 3}
!51 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lkdtm_READ_AFTER_FREE._entry.31, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @lkdtm_READ_AFTER_FREE._entry_ptr.33, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @lkdtm_READ_AFTER_FREE._entry.34, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @lkdtm_READ_AFTER_FREE._entry_ptr.36, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.38, !50, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lkdtm_READ_AFTER_FREE._entry.37, !50, !"_entry", i1 false, i1 false}
!59 = !{ptr @lkdtm_READ_AFTER_FREE._entry_ptr.39, !50, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/misc/lkdtm/heap.c", i32 131, i32 3}
!62 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/lkdtm/heap.c", i32 135, i32 2}
!67 = !{ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry.42, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry_ptr.44, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.46, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/lkdtm/heap.c", i32 139, i32 2}
!71 = !{ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry.45, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @lkdtm_WRITE_BUDDY_AFTER_FREE._entry_ptr.47, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.48, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/misc/lkdtm/heap.c", i32 154, i32 3}
!75 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.49, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/misc/lkdtm/heap.c", i32 160, i32 3}
!79 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.50, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.51, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/misc/lkdtm/heap.c", i32 169, i32 2}
!82 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.52, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.54, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/misc/lkdtm/heap.c", i32 171, i32 2}
!85 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.53, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.55, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.56, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/misc/lkdtm/heap.c", i32 175, i32 3}
!89 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.57, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.59, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/misc/lkdtm/heap.c", i32 177, i32 3}
!92 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.58, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.60, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.61, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/misc/lkdtm/heap.c", i32 178, i32 3}
!96 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.62, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.63, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.64, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry.65, !95, !"_entry", i1 false, i1 false}
!100 = !{ptr @lkdtm_READ_BUDDY_AFTER_FREE._entry_ptr.66, !95, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.67, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/misc/lkdtm/heap.c", i32 191, i32 3}
!103 = !{ptr @.str.68, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.70, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/misc/lkdtm/heap.c", i32 200, i32 3}
!108 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.69, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.71, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.73, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/misc/lkdtm/heap.c", i32 204, i32 3}
!112 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.72, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.74, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.76, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/misc/lkdtm/heap.c", i32 208, i32 3}
!116 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.75, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.77, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.79, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/misc/lkdtm/heap.c", i32 210, i32 3}
!120 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.78, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.80, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.81, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/misc/lkdtm/heap.c", i32 211, i32 3}
!124 = !{ptr @.str.83, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.82, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.84, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.86, !123, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.85, !123, !"_entry", i1 false, i1 false}
!129 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.87, !123, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.89, !123, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry.88, !123, !"_entry", i1 false, i1 false}
!132 = !{ptr @lkdtm_SLAB_INIT_ON_ALLOC._entry_ptr.90, !123, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.91, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/misc/lkdtm/heap.c", i32 223, i32 3}
!135 = !{ptr @.str.92, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.94, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/misc/lkdtm/heap.c", i32 232, i32 3}
!140 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.93, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.95, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.96, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/misc/lkdtm/heap.c", i32 237, i32 3}
!144 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.97, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.98, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/misc/lkdtm/heap.c", i32 241, i32 3}
!147 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.99, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.100, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/misc/lkdtm/heap.c", i32 243, i32 3}
!150 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.101, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.102, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/misc/lkdtm/heap.c", i32 244, i32 3}
!153 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.103, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.104, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.105, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry.106, !152, !"_entry", i1 false, i1 false}
!157 = !{ptr @lkdtm_BUDDY_INIT_ON_ALLOC._entry_ptr.107, !152, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.108, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/misc/lkdtm/heap.c", i32 255, i32 3}
!160 = !{ptr @.str.109, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @lkdtm_SLAB_FREE_DOUBLE._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @lkdtm_SLAB_FREE_DOUBLE._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.111, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/misc/lkdtm/heap.c", i32 261, i32 2}
!165 = !{ptr @lkdtm_SLAB_FREE_DOUBLE._entry.110, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @lkdtm_SLAB_FREE_DOUBLE._entry_ptr.112, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.113, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/misc/lkdtm/heap.c", i32 272, i32 3}
!169 = !{ptr @.str.114, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @lkdtm_SLAB_FREE_CROSS._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @lkdtm_SLAB_FREE_CROSS._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.116, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/misc/lkdtm/heap.c", i32 278, i32 2}
!174 = !{ptr @lkdtm_SLAB_FREE_CROSS._entry.115, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @lkdtm_SLAB_FREE_CROSS._entry_ptr.117, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.118, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/misc/lkdtm/heap.c", i32 286, i32 2}
!178 = !{ptr @.str.119, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @lkdtm_SLAB_FREE_PAGE._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @lkdtm_SLAB_FREE_PAGE._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.120, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/misc/lkdtm/heap.c", i32 304, i32 40}
!183 = !{ptr @.str.121, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/misc/lkdtm/heap.c", i32 306, i32 30}
!185 = !{ptr @.str.122, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/misc/lkdtm/heap.c", i32 307, i32 30}
!187 = !{ptr @double_free_cache, !188, !"double_free_cache", i1 false, i1 false}
!188 = !{!"../drivers/misc/lkdtm/heap.c", i32 11, i32 27}
!189 = !{ptr @a_cache, !190, !"a_cache", i1 false, i1 false}
!190 = !{!"../drivers/misc/lkdtm/heap.c", i32 12, i32 27}
!191 = !{ptr @b_cache, !192, !"b_cache", i1 false, i1 false}
!192 = !{!"../drivers/misc/lkdtm/heap.c", i32 13, i32 27}
!193 = !{ptr @__offset, !194, !"__offset", i1 false, i1 false}
!194 = !{!"../drivers/misc/lkdtm/heap.c", i32 20, i32 21}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
