
interface blockedUser {
    id: number;
    name: string;
}

class BlackListManager {
    private list: blockedUser[] = [];
    
    getList() {
        return this.list;
    }
    
    isBlackListed(userId: number) {
        return this.list.find((data) => data.id === userId) !== null;
    }
    
    blackList(userName: string, userId: number): void {
        if (this.isBlackListed(userId)) return;
        this.list.push({id: userId, name: userName});
    }
}

export const blackListManager = new BlackListManager();